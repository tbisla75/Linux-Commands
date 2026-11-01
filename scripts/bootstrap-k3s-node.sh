#!/usr/bin/env bash
# K3s bootstrap guide with explicit --apply opt-in; use only after network/DNS/HA design approval.
set -Eeuo pipefail
ROLE=""; VERSION=""; API=""; TOKEN_FILE=""; MODE="dry-run"; CLUSTER_INIT=false; TLS_SAN=""
usage(){ cat <<'HELP'
Usage:
  sudo bash bootstrap-k3s-node.sh --role server --version vX.Y.Z+k3s1 --cluster-init --tls-san API_VIP --apply
  sudo bash bootstrap-k3s-node.sh --role server --version vX.Y.Z+k3s1 --server https://API_VIP:6443 --token-file /root/k3s-token --tls-san API_VIP --apply
  sudo bash bootstrap-k3s-node.sh --role agent  --version vX.Y.Z+k3s1 --server https://API_VIP:6443 --token-file /root/k3s-token --apply

Default --dry-run; requires exact pinned K3s release and approved token file for join.
NOT for OpenShift RHCOS control planes. Review version, CNI, SELinux/firewall and port conflicts.
HELP
}
while (($#));do
 case "$1" in
  --role) ROLE="${2:?}";shift 2;;
  --version) VERSION="${2:?}";shift 2;;
  --server) API="${2:?}";shift 2;;
  --token-file) TOKEN_FILE="${2:?}";shift 2;;
  --tls-san) TLS_SAN="${2:?}";shift 2;;
  --cluster-init) CLUSTER_INIT=true;shift;;
  --apply) MODE=apply;shift;;
  --dry-run) MODE=dry-run;shift;;
  -h|--help) usage;exit 0;;
  *) echo "Unknown arg $1" >&2;exit 2;;
 esac
done
[[ "$ROLE" == server || "$ROLE" == agent ]] || { usage;exit 2; }
[[ "$VERSION" =~ ^v[0-9]+\.[0-9]+\.[0-9]+\+k3s[0-9]+$ ]] || { echo 'Pin released version vX.Y.Z+k3sN' >&2;exit 2; }
if $CLUSTER_INIT && { [[ "$ROLE" != server ]] || [[ -n "$API" ]]; }; then echo 'cluster-init only for first independent server' >&2;exit 2;fi
if ! $CLUSTER_INIT; then [[ "$API" == https://*:6443 && -n "$TOKEN_FILE" ]] || { echo 'Join requires --server https://VIP:6443 and --token-file' >&2;exit 2; };fi
echo "role=$ROLE version=$VERSION mode=$MODE cluster_init=$CLUSTER_INIT server=$API"
if [[ "$MODE" != apply ]];then echo 'DRY RUN: no commands executed';exit 0;fi
[[ $(id -u) -eq 0 ]] || { echo 'Run as root' >&2;exit 1; }
[[ ! -e /etc/rancher/k3s/config.yaml && ! -e /var/lib/rancher/k3s/server/db ]] || { echo 'Existing K3s config/state detected; refusing to overwrite' >&2;exit 1; }
if [[ -n "$TOKEN_FILE" ]];then
 [[ -f "$TOKEN_FILE" ]] || { echo 'Missing token file' >&2;exit 1; }
 chmod 0600 "$TOKEN_FILE"
fi
command -v curl >/dev/null || { echo 'curl required' >&2;exit 1; }
mkdir -p -m 700 /etc/rancher/k3s
if [[ "$ROLE" == server ]];then
 if $CLUSTER_INIT;then
  [[ -n "$TLS_SAN" ]] || { echo 'Initial HA server requires API VIP TLS SAN' >&2;exit 1; }
  cat >/etc/rancher/k3s/config.yaml <<EOF
cluster-init: true
tls-san:
  - "$TLS_SAN"
write-kubeconfig-mode: "0600"
EOF
 else
  cat >/etc/rancher/k3s/config.yaml <<EOF
server: "$API"
token-file: "$TOKEN_FILE"
tls-san:
  - "${TLS_SAN:-REPLACE_WITH_API_VIP}"
write-kubeconfig-mode: "0600"
EOF
 fi
else
 cat >/etc/rancher/k3s/config.yaml <<EOF
server: "$API"
token-file: "$TOKEN_FILE"
EOF
fi
echo 'CHANGE: install script will execute vendor binary fetched over HTTPS from get.k3s.io.'
# Review installer provenance, pinned version and compatibility in change plan.
curl -sfL https://get.k3s.io -o /root/k3s-install-reviewed.sh
chmod 0700 /root/k3s-install-reviewed.sh
INSTALL_K3S_VERSION="$VERSION" INSTALL_K3S_EXEC="$ROLE" sh /root/k3s-install-reviewed.sh
systemctl status "k3s$( [[ "$ROLE" == agent ]] && printf -- '-agent' )" --no-pager
echo 'NEXT: validate cluster API/etcd quorum and worker Ready; install GitOps, backups, policy, observability and customer ingress.'
echo 'Do not store server token, kubeconfig or cluster topology in public GitHub.'
