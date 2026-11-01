#!/usr/bin/env bash
# PREPARE NODE (kubeadm only): Ubuntu/Debian/RHEL family.
# Default = plan only; --apply changes host. Does NOT run kubeadm init/join.
set -Eeuo pipefail

ROLE=""; MINOR="v1.37"; MODE="dry-run"; SWAP_MODE="keep"
usage(){ cat <<'USAGE'
Usage: sudo bash prepare-kubernetes-node.sh --role control-plane|worker [--k8s-minor v1.37] [--dry-run|--apply] [--disable-swap]

DRY RUN is default. APPLY installs containerd/kubeadm/kubelet/kubectl and modifies system config.
Designed for fresh dedicated Linux nodes; do not run blindly on an existing cluster.
Does not configure customer DNS, networking, cloud CCM/CSI, HA LB, CNI, firewall or kubeadm init/join.
For OpenShift 4.x control plane use supported RHCOS installer + Ignition instead.
USAGE
}
while (($#)); do
  case "$1" in
    --role) ROLE="${2:?missing role}"; shift 2 ;;
    --k8s-minor) MINOR="${2:?missing minor}"; shift 2 ;;
    --apply) MODE="apply"; shift ;;
    --dry-run) MODE="dry-run"; shift ;;
    --disable-swap) SWAP_MODE="disable"; shift ;;
    -h|--help) usage; exit 0 ;;
    *) echo "Unknown argument: $1" >&2; usage; exit 2 ;;
  esac
done
[[ "$ROLE" == "control-plane" || "$ROLE" == "worker" ]] || { usage; exit 2; }
[[ "$MINOR" =~ ^v1\.[0-9]+$ ]] || { echo 'Expected minor like v1.37' >&2; exit 2; }
[[ -f /etc/os-release ]] || { echo 'Missing /etc/os-release' >&2; exit 1; }
# shellcheck disable=SC1091
source /etc/os-release
FAMILY=""
case "${ID,,}" in
  ubuntu|debian) FAMILY="deb" ;;
  rhel|rocky|almalinux|centos) FAMILY="rpm" ;;
esac
if [[ -z "$FAMILY" ]]; then
  if [[ " ${ID_LIKE:-} " == *" debian "* ]]; then FAMILY="deb"
  elif [[ " ${ID_LIKE:-} " == *" rhel "* || " ${ID_LIKE:-} " == *" fedora "* ]]; then FAMILY="rpm"
  fi
fi
[[ -n "$FAMILY" ]] || { echo "Unsupported distribution $ID" >&2; exit 1; }
if [[ "$MODE" == "apply" && "$(id -u)" -ne 0 ]]; then echo 'Run APPLY as root' >&2; exit 1; fi
echo "Detected: $PRETTY_NAME / family=$FAMILY / role=$ROLE / Kubernetes=$MINOR / mode=$MODE"
echo "WARNING: prerequisites only. Check approved CNI/CSI, cloud CCM, HA LBs, IP ranges, OS support and change approval."
if [[ -e /etc/kubernetes/admin.conf || -e /etc/kubernetes/kubelet.conf ]]; then
  echo "Existing kubeadm credentials detected. Refusing to modify a configured node." >&2; exit 1
fi
if [[ "$MODE" != "apply" ]]; then
  cat <<EOF
DRY RUN: would install prerequisites, containerd and kubeadm/kubelet/kubectl from pkgs.k8s.io $MINOR;
configure kernel modules, bridge/forward sysctls and systemd cgroup driver; hold packages.
Swap: $SWAP_MODE (default: unchanged; --disable-swap opts into disabling).
No commands were executed.
EOF
  exit 0
fi
if [[ "$FAMILY" == "deb" ]]; then
  export DEBIAN_FRONTEND=noninteractive
  apt-get update
  apt-get install -y ca-certificates curl gpg apt-transport-https conntrack socat iproute2
  apt-get install -y containerd
else
  command -v dnf >/dev/null || { echo 'RHEL family requires dnf and working repositories' >&2; exit 1; }
  dnf install -y ca-certificates curl conntrack-tools socat iproute
  dnf install -y containerd || { echo 'containerd package unavailable: configure an approved vendor repository and retry' >&2; exit 1; }
fi
cat >/etc/modules-load.d/k8s.conf <<EOF
overlay
br_netfilter
EOF
modprobe overlay
modprobe br_netfilter
cat >/etc/sysctl.d/99-kubernetes-cri.conf <<EOF
net.bridge.bridge-nf-call-iptables = 1
net.bridge.bridge-nf-call-ip6tables = 1
net.ipv4.ip_forward = 1
EOF
sysctl --system
mkdir -p /etc/containerd
if [[ -s /etc/containerd/config.toml ]]; then
  cp -a /etc/containerd/config.toml "/etc/containerd/config.toml.pre-k8s.$(date +%Y%m%d%H%M%S)"
fi
# Generate installed-version-aware defaults, preserving an existing configuration via backup.
containerd config default > /etc/containerd/config.toml
# Set systemd cgroups for both containerd config layouts; only the applicable layout appears.
sed -i 's/SystemdCgroup = false/SystemdCgroup = true/g' /etc/containerd/config.toml
grep -q 'SystemdCgroup = true' /etc/containerd/config.toml || { echo 'Failed to enable systemd cgroups' >&2; exit 1; }
systemctl enable --now containerd
systemctl restart containerd
if [[ "$SWAP_MODE" == "disable" ]]; then
  swapoff -a
  cp -a /etc/fstab "/etc/fstab.pre-k8s.$(date +%Y%m%d%H%M%S)"
  sed -i -E '/^[[:space:]]*[^#].*[[:space:]]swap[[:space:]]/ s/^/# disabled-for-kubeadm /' /etc/fstab
fi
if [[ "$FAMILY" == "deb" ]]; then
  mkdir -p -m 0755 /etc/apt/keyrings
  curl -fsSL "https://pkgs.k8s.io/core:/stable:/$MINOR/deb/Release.key" | gpg --dearmor --yes -o /etc/apt/keyrings/kubernetes-apt-keyring.gpg
  chmod 0644 /etc/apt/keyrings/kubernetes-apt-keyring.gpg
  printf 'deb [signed-by=/etc/apt/keyrings/kubernetes-apt-keyring.gpg] https://pkgs.k8s.io/core:/stable:/%s/deb/ /\n' "$MINOR" >/etc/apt/sources.list.d/kubernetes.list
  apt-get update
  apt-get install -y kubelet kubeadm kubectl
  apt-mark hold kubelet kubeadm kubectl
else
  cat >/etc/yum.repos.d/kubernetes.repo <<EOF
[kubernetes]
name=Kubernetes
baseurl=https://pkgs.k8s.io/core:/stable:/$MINOR/rpm/
enabled=1
gpgcheck=1
gpgkey=https://pkgs.k8s.io/core:/stable:/$MINOR/rpm/repodata/repomd.xml.key
exclude=kubelet kubeadm kubectl cri-tools kubernetes-cni
EOF
  dnf install -y kubelet kubeadm kubectl --disableexcludes=kubernetes || dnf install -y kubelet kubeadm kubectl --setopt=disable_excludes=kubernetes
fi
systemctl enable kubelet
echo "Prepared $ROLE node, no cluster bootstrap/join performed."
kubeadm version -o short
containerd --version
echo "NEXT: configure OS firewall/SELinux per approved CNI, network routes, cloud provider integration and approved HA API endpoint."
echo "CONTROL PLANE: run kubeadm init with reviewed HA config on FIRST control-plane node; configure CNI; join remaining CPs using approved certificate-key/token."
echo "WORKER: run kubeadm join command obtained securely from cluster owner. NEVER commit join tokens to GitHub."
