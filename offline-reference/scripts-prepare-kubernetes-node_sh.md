# Offline Bash provisioning script walkthrough: scripts/prepare-kubernetes-node.sh

**Study and review offline.** This script includes shell control flow, file writes, systemd and package manager actions; **default dry-run** protects against accidental execution. Run only on approved hosts after reviewing every statement and vendor/network constraints.

## 1. Line 4: set -Eeuo pipefail

```bash
set -Eeuo pipefail
```

**Purpose:** Shell statement in a guarded bootstrap script; inspect full surrounding conditionals and distro context.

**Syntax:** executable/statement `set` with the shown options and arguments. Shell variables, command substitutions, tests and redirection are evaluated by Bash. Confirm flags via local `set --help` when supported.

**Execution context:** This line is normally guarded by script argument parsing, distro detection and dry-run before apply; **do not copy it independently without those preconditions**.

**Impact:** Condition, diagnostic or internal Bash flow, typically not an independent infrastructure change.

## 2. Line 6: ROLE=""; MINOR="v1.37"; MODE="dry-run"; SWAP_MODE="keep"

```bash
ROLE=""; MINOR="v1.37"; MODE="dry-run"; SWAP_MODE="keep"
```

**Purpose:** Shell statement in a guarded bootstrap script; inspect full surrounding conditionals and distro context.

**Syntax:** executable/statement `ROLE="";` with the shown options and arguments. Shell variables, command substitutions, tests and redirection are evaluated by Bash. Confirm flags via local `ROLE=""; --help` when supported.

**Execution context:** This line is normally guarded by script argument parsing, distro detection and dry-run before apply; **do not copy it independently without those preconditions**.

**Impact:** Condition, diagnostic or internal Bash flow, typically not an independent infrastructure change.

## 3. Line 18: --role) ROLE="${2:?missing role}"; shift 2 ;;

```bash
--role) ROLE="${2:?missing role}"; shift 2 ;;
```

**Purpose:** Shell statement in a guarded bootstrap script; inspect full surrounding conditionals and distro context.

**Syntax:** executable/statement `--role)` with the shown options and arguments. Shell variables, command substitutions, tests and redirection are evaluated by Bash. Confirm flags via local `--role) --help` when supported.

**Execution context:** This line is normally guarded by script argument parsing, distro detection and dry-run before apply; **do not copy it independently without those preconditions**.

**Impact:** Condition, diagnostic or internal Bash flow, typically not an independent infrastructure change.

## 4. Line 19: --k8s-minor) MINOR="${2:?missing minor}"; shift 2 ;;

```bash
--k8s-minor) MINOR="${2:?missing minor}"; shift 2 ;;
```

**Purpose:** Shell statement in a guarded bootstrap script; inspect full surrounding conditionals and distro context.

**Syntax:** executable/statement `--k8s-minor)` with the shown options and arguments. Shell variables, command substitutions, tests and redirection are evaluated by Bash. Confirm flags via local `--k8s-minor) --help` when supported.

**Execution context:** This line is normally guarded by script argument parsing, distro detection and dry-run before apply; **do not copy it independently without those preconditions**.

**Impact:** Condition, diagnostic or internal Bash flow, typically not an independent infrastructure change.

## 5. Line 20: --apply) MODE="apply"; shift ;;

```bash
--apply) MODE="apply"; shift ;;
```

**Purpose:** Shell statement in a guarded bootstrap script; inspect full surrounding conditionals and distro context.

**Syntax:** executable/statement `--apply)` with the shown options and arguments. Shell variables, command substitutions, tests and redirection are evaluated by Bash. Confirm flags via local `--apply) --help` when supported.

**Execution context:** This line is normally guarded by script argument parsing, distro detection and dry-run before apply; **do not copy it independently without those preconditions**.

**Impact:** Condition, diagnostic or internal Bash flow, typically not an independent infrastructure change.

## 6. Line 21: --dry-run) MODE="dry-run"; shift ;;

```bash
--dry-run) MODE="dry-run"; shift ;;
```

**Purpose:** Shell statement in a guarded bootstrap script; inspect full surrounding conditionals and distro context.

**Syntax:** executable/statement `--dry-run)` with the shown options and arguments. Shell variables, command substitutions, tests and redirection are evaluated by Bash. Confirm flags via local `--dry-run) --help` when supported.

**Execution context:** This line is normally guarded by script argument parsing, distro detection and dry-run before apply; **do not copy it independently without those preconditions**.

**Impact:** Condition, diagnostic or internal Bash flow, typically not an independent infrastructure change.

## 7. Line 22: --disable-swap) SWAP_MODE="disable"; shift ;;

```bash
--disable-swap) SWAP_MODE="disable"; shift ;;
```

**Purpose:** Shell statement in a guarded bootstrap script; inspect full surrounding conditionals and distro context.

**Syntax:** executable/statement `--disable-swap)` with the shown options and arguments. Shell variables, command substitutions, tests and redirection are evaluated by Bash. Confirm flags via local `--disable-swap) --help` when supported.

**Execution context:** This line is normally guarded by script argument parsing, distro detection and dry-run before apply; **do not copy it independently without those preconditions**.

**Impact:** Condition, diagnostic or internal Bash flow, typically not an independent infrastructure change.

## 8. Line 23: -h|--help) usage; exit 0 ;;

```bash
-h|--help) usage; exit 0 ;;
```

**Purpose:** Shell statement in a guarded bootstrap script; inspect full surrounding conditionals and distro context.

**Syntax:** executable/statement `-h|--help)` with the shown options and arguments. Shell variables, command substitutions, tests and redirection are evaluated by Bash. Confirm flags via local `-h|--help) --help` when supported.

**Execution context:** This line is normally guarded by script argument parsing, distro detection and dry-run before apply; **do not copy it independently without those preconditions**.

**Impact:** Condition, diagnostic or internal Bash flow, typically not an independent infrastructure change.

## 9. Line 24: *) echo "Unknown argument: $1" >&2; usage; exit 2 ;;

```bash
*) echo "Unknown argument: $1" >&2; usage; exit 2 ;;
```

**Purpose:** Shell statement in a guarded bootstrap script; inspect full surrounding conditionals and distro context.

**Syntax:** executable/statement `*)` with the shown options and arguments. Shell variables, command substitutions, tests and redirection are evaluated by Bash. Confirm flags via local `*) --help` when supported.

**Execution context:** This line is normally guarded by script argument parsing, distro detection and dry-run before apply; **do not copy it independently without those preconditions**.

**Impact:** Condition, diagnostic or internal Bash flow, typically not an independent infrastructure change.

## 10. Line 27: [[ "$ROLE" == "control-plane" || "$ROLE" == "worker" ]] || { usage; exit 2; }

```bash
[[ "$ROLE" == "control-plane" || "$ROLE" == "worker" ]] || { usage; exit 2; }
```

**Purpose:** Shell statement in a guarded bootstrap script; inspect full surrounding conditionals and distro context.

**Syntax:** executable/statement `[[` with the shown options and arguments. Shell variables, command substitutions, tests and redirection are evaluated by Bash. Confirm flags via local `[[ --help` when supported.

**Execution context:** This line is normally guarded by script argument parsing, distro detection and dry-run before apply; **do not copy it independently without those preconditions**.

**Impact:** Condition, diagnostic or internal Bash flow, typically not an independent infrastructure change.

## 11. Line 28: [[ "$MINOR" =~ ^v1\.[0-9]+$ ]] || { echo 'Expected minor like v1.37' >&2; exit 2; }

```bash
[[ "$MINOR" =~ ^v1\.[0-9]+$ ]] || { echo 'Expected minor like v1.37' >&2; exit 2; }
```

**Purpose:** Shell statement in a guarded bootstrap script; inspect full surrounding conditionals and distro context.

**Syntax:** executable/statement `[[` with the shown options and arguments. Shell variables, command substitutions, tests and redirection are evaluated by Bash. Confirm flags via local `[[ --help` when supported.

**Execution context:** This line is normally guarded by script argument parsing, distro detection and dry-run before apply; **do not copy it independently without those preconditions**.

**Impact:** Condition, diagnostic or internal Bash flow, typically not an independent infrastructure change.

## 12. Line 29: [[ -f /etc/os-release ]] || { echo 'Missing /etc/os-release' >&2; exit 1; }

```bash
[[ -f /etc/os-release ]] || { echo 'Missing /etc/os-release' >&2; exit 1; }
```

**Purpose:** Shell statement in a guarded bootstrap script; inspect full surrounding conditionals and distro context.

**Syntax:** executable/statement `[[` with the shown options and arguments. Shell variables, command substitutions, tests and redirection are evaluated by Bash. Confirm flags via local `[[ --help` when supported.

**Execution context:** This line is normally guarded by script argument parsing, distro detection and dry-run before apply; **do not copy it independently without those preconditions**.

**Impact:** Condition, diagnostic or internal Bash flow, typically not an independent infrastructure change.

## 13. Line 31: source /etc/os-release

```bash
source /etc/os-release
```

**Purpose:** Shell statement in a guarded bootstrap script; inspect full surrounding conditionals and distro context.

**Syntax:** executable/statement `source` with the shown options and arguments. Shell variables, command substitutions, tests and redirection are evaluated by Bash. Confirm flags via local `source --help` when supported.

**Execution context:** This line is normally guarded by script argument parsing, distro detection and dry-run before apply; **do not copy it independently without those preconditions**.

**Impact:** 🟠 May change host software, configuration or runtime state; needs approval and backup.

## 14. Line 32: FAMILY=""

```bash
FAMILY=""
```

**Purpose:** Shell statement in a guarded bootstrap script; inspect full surrounding conditionals and distro context.

**Syntax:** executable/statement `FAMILY=""` with the shown options and arguments. Shell variables, command substitutions, tests and redirection are evaluated by Bash. Confirm flags via local `FAMILY="" --help` when supported.

**Execution context:** This line is normally guarded by script argument parsing, distro detection and dry-run before apply; **do not copy it independently without those preconditions**.

**Impact:** Condition, diagnostic or internal Bash flow, typically not an independent infrastructure change.

## 15. Line 34: ubuntu|debian) FAMILY="deb" ;;

```bash
ubuntu|debian) FAMILY="deb" ;;
```

**Purpose:** Shell statement in a guarded bootstrap script; inspect full surrounding conditionals and distro context.

**Syntax:** executable/statement `ubuntu|debian)` with the shown options and arguments. Shell variables, command substitutions, tests and redirection are evaluated by Bash. Confirm flags via local `ubuntu|debian) --help` when supported.

**Execution context:** This line is normally guarded by script argument parsing, distro detection and dry-run before apply; **do not copy it independently without those preconditions**.

**Impact:** Condition, diagnostic or internal Bash flow, typically not an independent infrastructure change.

## 16. Line 35: rhel|rocky|almalinux|centos) FAMILY="rpm" ;;

```bash
rhel|rocky|almalinux|centos) FAMILY="rpm" ;;
```

**Purpose:** Shell statement in a guarded bootstrap script; inspect full surrounding conditionals and distro context.

**Syntax:** executable/statement `rhel|rocky|almalinux|centos)` with the shown options and arguments. Shell variables, command substitutions, tests and redirection are evaluated by Bash. Confirm flags via local `rhel|rocky|almalinux|centos) --help` when supported.

**Execution context:** This line is normally guarded by script argument parsing, distro detection and dry-run before apply; **do not copy it independently without those preconditions**.

**Impact:** Condition, diagnostic or internal Bash flow, typically not an independent infrastructure change.

## 17. Line 39: elif [[ " ${ID_LIKE:-} " == *" rhel "* || " ${ID_LIKE:-} " == *" fedora "* ]]; then FAMILY="rpm"

```bash
elif [[ " ${ID_LIKE:-} " == *" rhel "* || " ${ID_LIKE:-} " == *" fedora "* ]]; then FAMILY="rpm"
```

**Purpose:** Shell statement in a guarded bootstrap script; inspect full surrounding conditionals and distro context.

**Syntax:** executable/statement `elif` with the shown options and arguments. Shell variables, command substitutions, tests and redirection are evaluated by Bash. Confirm flags via local `elif --help` when supported.

**Execution context:** This line is normally guarded by script argument parsing, distro detection and dry-run before apply; **do not copy it independently without those preconditions**.

**Impact:** Condition, diagnostic or internal Bash flow, typically not an independent infrastructure change.

## 18. Line 42: [[ -n "$FAMILY" ]] || { echo "Unsupported distribution $ID" >&2; exit 1; }

```bash
[[ -n "$FAMILY" ]] || { echo "Unsupported distribution $ID" >&2; exit 1; }
```

**Purpose:** Shell statement in a guarded bootstrap script; inspect full surrounding conditionals and distro context.

**Syntax:** executable/statement `[[` with the shown options and arguments. Shell variables, command substitutions, tests and redirection are evaluated by Bash. Confirm flags via local `[[ --help` when supported.

**Execution context:** This line is normally guarded by script argument parsing, distro detection and dry-run before apply; **do not copy it independently without those preconditions**.

**Impact:** Condition, diagnostic or internal Bash flow, typically not an independent infrastructure change.

## 19. Line 44: echo "Detected: $PRETTY_NAME / family=$FAMILY / role=$ROLE / Kubernetes=$MINOR / mode=$MODE"

```bash
echo "Detected: $PRETTY_NAME / family=$FAMILY / role=$ROLE / Kubernetes=$MINOR / mode=$MODE"
```

**Purpose:** Shell statement in a guarded bootstrap script; inspect full surrounding conditionals and distro context.

**Syntax:** executable/statement `echo` with the shown options and arguments. Shell variables, command substitutions, tests and redirection are evaluated by Bash. Confirm flags via local `echo --help` when supported.

**Execution context:** This line is normally guarded by script argument parsing, distro detection and dry-run before apply; **do not copy it independently without those preconditions**.

**Impact:** Condition, diagnostic or internal Bash flow, typically not an independent infrastructure change.

## 20. Line 45: echo "WARNING: prerequisites only. Check approved CNI/CSI, cloud CCM, HA LBs, IP ranges, OS support and change

```bash
echo "WARNING: prerequisites only. Check approved CNI/CSI, cloud CCM, HA LBs, IP ranges, OS support and change approval."
```

**Purpose:** Shell statement in a guarded bootstrap script; inspect full surrounding conditionals and distro context.

**Syntax:** executable/statement `echo` with the shown options and arguments. Shell variables, command substitutions, tests and redirection are evaluated by Bash. Confirm flags via local `echo --help` when supported.

**Execution context:** This line is normally guarded by script argument parsing, distro detection and dry-run before apply; **do not copy it independently without those preconditions**.

**Impact:** Condition, diagnostic or internal Bash flow, typically not an independent infrastructure change.

## 21. Line 47: echo "Existing kubeadm credentials detected. Refusing to modify a configured node." >&2; exit 1

```bash
echo "Existing kubeadm credentials detected. Refusing to modify a configured node." >&2; exit 1
```

**Purpose:** Shell statement in a guarded bootstrap script; inspect full surrounding conditionals and distro context.

**Syntax:** executable/statement `echo` with the shown options and arguments. Shell variables, command substitutions, tests and redirection are evaluated by Bash. Confirm flags via local `echo --help` when supported.

**Execution context:** This line is normally guarded by script argument parsing, distro detection and dry-run before apply; **do not copy it independently without those preconditions**.

**Impact:** Condition, diagnostic or internal Bash flow, typically not an independent infrastructure change.

## 22. Line 56: exit 0

```bash
exit 0
```

**Purpose:** Shell statement in a guarded bootstrap script; inspect full surrounding conditionals and distro context.

**Syntax:** executable/statement `exit` with the shown options and arguments. Shell variables, command substitutions, tests and redirection are evaluated by Bash. Confirm flags via local `exit --help` when supported.

**Execution context:** This line is normally guarded by script argument parsing, distro detection and dry-run before apply; **do not copy it independently without those preconditions**.

**Impact:** Condition, diagnostic or internal Bash flow, typically not an independent infrastructure change.

## 23. Line 59: export DEBIAN_FRONTEND=noninteractive

```bash
export DEBIAN_FRONTEND=noninteractive
```

**Purpose:** Export environment variables

**Syntax:** executable/statement `export` with the shown options and arguments. Shell variables, command substitutions, tests and redirection are evaluated by Bash. Confirm flags via local `export --help` when supported.

**Execution context:** This line is normally guarded by script argument parsing, distro detection and dry-run before apply; **do not copy it independently without those preconditions**.

**Impact:** Condition, diagnostic or internal Bash flow, typically not an independent infrastructure change.

## 24. Line 60: apt-get update

```bash
apt-get update
```

**Purpose:** Manage Debian packages

**Syntax:** executable/statement `apt-get` with the shown options and arguments. Shell variables, command substitutions, tests and redirection are evaluated by Bash. Confirm flags via local `apt-get --help` when supported.

**Execution context:** This line is normally guarded by script argument parsing, distro detection and dry-run before apply; **do not copy it independently without those preconditions**.

**Impact:** Condition, diagnostic or internal Bash flow, typically not an independent infrastructure change.

## 25. Line 61: apt-get install -y ca-certificates curl gpg apt-transport-https conntrack socat iproute2

```bash
apt-get install -y ca-certificates curl gpg apt-transport-https conntrack socat iproute2
```

**Purpose:** Manage Debian packages

**Syntax:** executable/statement `apt-get` with the shown options and arguments. Shell variables, command substitutions, tests and redirection are evaluated by Bash. Confirm flags via local `apt-get --help` when supported.

**Execution context:** This line is normally guarded by script argument parsing, distro detection and dry-run before apply; **do not copy it independently without those preconditions**.

**Impact:** 🟠 May change host software, configuration or runtime state; needs approval and backup.

## 26. Line 62: apt-get install -y containerd

```bash
apt-get install -y containerd
```

**Purpose:** Manage Debian packages

**Syntax:** executable/statement `apt-get` with the shown options and arguments. Shell variables, command substitutions, tests and redirection are evaluated by Bash. Confirm flags via local `apt-get --help` when supported.

**Execution context:** This line is normally guarded by script argument parsing, distro detection and dry-run before apply; **do not copy it independently without those preconditions**.

**Impact:** 🟠 May change host software, configuration or runtime state; needs approval and backup.

## 27. Line 64: command -v dnf >/dev/null || { echo 'RHEL family requires dnf and working repositories' >&2; exit 1; }

```bash
command -v dnf >/dev/null || { echo 'RHEL family requires dnf and working repositories' >&2; exit 1; }
```

**Purpose:** Shell statement in a guarded bootstrap script; inspect full surrounding conditionals and distro context.

**Syntax:** executable/statement `command` with the shown options and arguments. Shell variables, command substitutions, tests and redirection are evaluated by Bash. Confirm flags via local `command --help` when supported.

**Execution context:** This line is normally guarded by script argument parsing, distro detection and dry-run before apply; **do not copy it independently without those preconditions**.

**Impact:** Condition, diagnostic or internal Bash flow, typically not an independent infrastructure change.

## 28. Line 65: dnf install -y ca-certificates curl conntrack-tools socat iproute

```bash
dnf install -y ca-certificates curl conntrack-tools socat iproute
```

**Purpose:** Manage RHEL-family RPM packages

**Syntax:** executable/statement `dnf` with the shown options and arguments. Shell variables, command substitutions, tests and redirection are evaluated by Bash. Confirm flags via local `dnf --help` when supported.

**Execution context:** This line is normally guarded by script argument parsing, distro detection and dry-run before apply; **do not copy it independently without those preconditions**.

**Impact:** 🟠 May change host software, configuration or runtime state; needs approval and backup.

## 29. Line 66: dnf install -y containerd || { echo 'containerd package unavailable: configure an approved vendor repository a

```bash
dnf install -y containerd || { echo 'containerd package unavailable: configure an approved vendor repository and retry' >&2; exit 1; }
```

**Purpose:** Manage RHEL-family RPM packages

**Syntax:** executable/statement `dnf` with the shown options and arguments. Shell variables, command substitutions, tests and redirection are evaluated by Bash. Confirm flags via local `dnf --help` when supported.

**Execution context:** This line is normally guarded by script argument parsing, distro detection and dry-run before apply; **do not copy it independently without those preconditions**.

**Impact:** 🟠 May change host software, configuration or runtime state; needs approval and backup.

## 30. Line 72: modprobe overlay

```bash
modprobe overlay
```

**Purpose:** Load kernel module into running OS

**Syntax:** executable/statement `modprobe` with the shown options and arguments. Shell variables, command substitutions, tests and redirection are evaluated by Bash. Confirm flags via local `modprobe --help` when supported.

**Execution context:** This line is normally guarded by script argument parsing, distro detection and dry-run before apply; **do not copy it independently without those preconditions**.

**Impact:** 🟠 May change host software, configuration or runtime state; needs approval and backup.

## 31. Line 73: modprobe br_netfilter

```bash
modprobe br_netfilter
```

**Purpose:** Load kernel module into running OS

**Syntax:** executable/statement `modprobe` with the shown options and arguments. Shell variables, command substitutions, tests and redirection are evaluated by Bash. Confirm flags via local `modprobe --help` when supported.

**Execution context:** This line is normally guarded by script argument parsing, distro detection and dry-run before apply; **do not copy it independently without those preconditions**.

**Impact:** 🟠 May change host software, configuration or runtime state; needs approval and backup.

## 32. Line 79: sysctl --system

```bash
sysctl --system
```

**Purpose:** Apply kernel sysctl configuration

**Syntax:** executable/statement `sysctl` with the shown options and arguments. Shell variables, command substitutions, tests and redirection are evaluated by Bash. Confirm flags via local `sysctl --help` when supported.

**Execution context:** This line is normally guarded by script argument parsing, distro detection and dry-run before apply; **do not copy it independently without those preconditions**.

**Impact:** 🟠 May change host software, configuration or runtime state; needs approval and backup.

## 33. Line 80: mkdir -p /etc/containerd

```bash
mkdir -p /etc/containerd
```

**Purpose:** Create configuration directory

**Syntax:** executable/statement `mkdir` with the shown options and arguments. Shell variables, command substitutions, tests and redirection are evaluated by Bash. Confirm flags via local `mkdir --help` when supported.

**Execution context:** This line is normally guarded by script argument parsing, distro detection and dry-run before apply; **do not copy it independently without those preconditions**.

**Impact:** 🟠 May change host software, configuration or runtime state; needs approval and backup.

## 34. Line 82: cp -a /etc/containerd/config.toml "/etc/containerd/config.toml.pre-k8s.$(date +%Y%m%d%H%M%S)"

```bash
cp -a /etc/containerd/config.toml "/etc/containerd/config.toml.pre-k8s.$(date +%Y%m%d%H%M%S)"
```

**Purpose:** Backup/copy configuration file

**Syntax:** executable/statement `cp` with the shown options and arguments. Shell variables, command substitutions, tests and redirection are evaluated by Bash. Confirm flags via local `cp --help` when supported.

**Execution context:** This line is normally guarded by script argument parsing, distro detection and dry-run before apply; **do not copy it independently without those preconditions**.

**Impact:** 🟠 May change host software, configuration or runtime state; needs approval and backup.

## 35. Line 85: containerd config default > /etc/containerd/config.toml

```bash
containerd config default > /etc/containerd/config.toml
```

**Purpose:** Generate/check container runtime configuration

**Syntax:** executable/statement `containerd` with the shown options and arguments. Shell variables, command substitutions, tests and redirection are evaluated by Bash. Confirm flags via local `containerd --help` when supported.

**Execution context:** This line is normally guarded by script argument parsing, distro detection and dry-run before apply; **do not copy it independently without those preconditions**.

**Impact:** 🟠 May change host software, configuration or runtime state; needs approval and backup.

## 36. Line 87: sed -i 's/SystemdCgroup = false/SystemdCgroup = true/g' /etc/containerd/config.toml

```bash
sed -i 's/SystemdCgroup = false/SystemdCgroup = true/g' /etc/containerd/config.toml
```

**Purpose:** Edit configuration in-place

**Syntax:** executable/statement `sed` with the shown options and arguments. Shell variables, command substitutions, tests and redirection are evaluated by Bash. Confirm flags via local `sed --help` when supported.

**Execution context:** This line is normally guarded by script argument parsing, distro detection and dry-run before apply; **do not copy it independently without those preconditions**.

**Impact:** 🟠 May change host software, configuration or runtime state; needs approval and backup.

## 37. Line 88: grep -q 'SystemdCgroup = true' /etc/containerd/config.toml || { echo 'Failed to enable systemd cgroups' >&2; e

```bash
grep -q 'SystemdCgroup = true' /etc/containerd/config.toml || { echo 'Failed to enable systemd cgroups' >&2; exit 1; }
```

**Purpose:** Search configuration for expected setting

**Syntax:** executable/statement `grep` with the shown options and arguments. Shell variables, command substitutions, tests and redirection are evaluated by Bash. Confirm flags via local `grep --help` when supported.

**Execution context:** This line is normally guarded by script argument parsing, distro detection and dry-run before apply; **do not copy it independently without those preconditions**.

**Impact:** Condition, diagnostic or internal Bash flow, typically not an independent infrastructure change.

## 38. Line 89: systemctl enable --now containerd

```bash
systemctl enable --now containerd
```

**Purpose:** Configure/start/restart systemd service

**Syntax:** executable/statement `systemctl` with the shown options and arguments. Shell variables, command substitutions, tests and redirection are evaluated by Bash. Confirm flags via local `systemctl --help` when supported.

**Execution context:** This line is normally guarded by script argument parsing, distro detection and dry-run before apply; **do not copy it independently without those preconditions**.

**Impact:** 🟠 May change host software, configuration or runtime state; needs approval and backup.

## 39. Line 90: systemctl restart containerd

```bash
systemctl restart containerd
```

**Purpose:** Configure/start/restart systemd service

**Syntax:** executable/statement `systemctl` with the shown options and arguments. Shell variables, command substitutions, tests and redirection are evaluated by Bash. Confirm flags via local `systemctl --help` when supported.

**Execution context:** This line is normally guarded by script argument parsing, distro detection and dry-run before apply; **do not copy it independently without those preconditions**.

**Impact:** 🟠 May change host software, configuration or runtime state; needs approval and backup.

## 40. Line 92: swapoff -a

```bash
swapoff -a
```

**Purpose:** Disable swap

**Syntax:** executable/statement `swapoff` with the shown options and arguments. Shell variables, command substitutions, tests and redirection are evaluated by Bash. Confirm flags via local `swapoff --help` when supported.

**Execution context:** This line is normally guarded by script argument parsing, distro detection and dry-run before apply; **do not copy it independently without those preconditions**.

**Impact:** 🟠 May change host software, configuration or runtime state; needs approval and backup.

## 41. Line 93: cp -a /etc/fstab "/etc/fstab.pre-k8s.$(date +%Y%m%d%H%M%S)"

```bash
cp -a /etc/fstab "/etc/fstab.pre-k8s.$(date +%Y%m%d%H%M%S)"
```

**Purpose:** Backup/copy configuration file

**Syntax:** executable/statement `cp` with the shown options and arguments. Shell variables, command substitutions, tests and redirection are evaluated by Bash. Confirm flags via local `cp --help` when supported.

**Execution context:** This line is normally guarded by script argument parsing, distro detection and dry-run before apply; **do not copy it independently without those preconditions**.

**Impact:** 🟠 May change host software, configuration or runtime state; needs approval and backup.

## 42. Line 94: sed -i -E '/^[[:space:]]*[^#].*[[:space:]]swap[[:space:]]/ s/^/# disabled-for-kubeadm /' /etc/fstab

```bash
sed -i -E '/^[[:space:]]*[^#].*[[:space:]]swap[[:space:]]/ s/^/# disabled-for-kubeadm /' /etc/fstab
```

**Purpose:** Edit configuration in-place

**Syntax:** executable/statement `sed` with the shown options and arguments. Shell variables, command substitutions, tests and redirection are evaluated by Bash. Confirm flags via local `sed --help` when supported.

**Execution context:** This line is normally guarded by script argument parsing, distro detection and dry-run before apply; **do not copy it independently without those preconditions**.

**Impact:** 🟠 May change host software, configuration or runtime state; needs approval and backup.

## 43. Line 97: mkdir -p -m 0755 /etc/apt/keyrings

```bash
mkdir -p -m 0755 /etc/apt/keyrings
```

**Purpose:** Create configuration directory

**Syntax:** executable/statement `mkdir` with the shown options and arguments. Shell variables, command substitutions, tests and redirection are evaluated by Bash. Confirm flags via local `mkdir --help` when supported.

**Execution context:** This line is normally guarded by script argument parsing, distro detection and dry-run before apply; **do not copy it independently without those preconditions**.

**Impact:** 🟠 May change host software, configuration or runtime state; needs approval and backup.

## 44. Line 98: curl -fsSL "https://pkgs.k8s.io/core:/stable:/$MINOR/deb/Release.key" | gpg --dearmor --yes -o /etc/apt/keyrin

```bash
curl -fsSL "https://pkgs.k8s.io/core:/stable:/$MINOR/deb/Release.key" | gpg --dearmor --yes -o /etc/apt/keyrings/kubernetes-apt-keyring.gpg
```

**Purpose:** Fetch external installer/package metadata

**Syntax:** executable/statement `curl` with the shown options and arguments. Shell variables, command substitutions, tests and redirection are evaluated by Bash. Confirm flags via local `curl --help` when supported.

**Execution context:** This line is normally guarded by script argument parsing, distro detection and dry-run before apply; **do not copy it independently without those preconditions**.

**Impact:** 🟠 May change host software, configuration or runtime state; needs approval and backup.

## 45. Line 99: chmod 0644 /etc/apt/keyrings/kubernetes-apt-keyring.gpg

```bash
chmod 0644 /etc/apt/keyrings/kubernetes-apt-keyring.gpg
```

**Purpose:** Shell statement in a guarded bootstrap script; inspect full surrounding conditionals and distro context.

**Syntax:** executable/statement `chmod` with the shown options and arguments. Shell variables, command substitutions, tests and redirection are evaluated by Bash. Confirm flags via local `chmod --help` when supported.

**Execution context:** This line is normally guarded by script argument parsing, distro detection and dry-run before apply; **do not copy it independently without those preconditions**.

**Impact:** 🟠 May change host software, configuration or runtime state; needs approval and backup.

## 46. Line 100: printf 'deb [signed-by=/etc/apt/keyrings/kubernetes-apt-keyring.gpg] https://pkgs.k8s.io/core:/stable:/%s/deb/

```bash
printf 'deb [signed-by=/etc/apt/keyrings/kubernetes-apt-keyring.gpg] https://pkgs.k8s.io/core:/stable:/%s/deb/ /\n' "$MINOR" >/etc/apt/sources.list.d/kubernetes.list
```

**Purpose:** Shell statement in a guarded bootstrap script; inspect full surrounding conditionals and distro context.

**Syntax:** executable/statement `printf` with the shown options and arguments. Shell variables, command substitutions, tests and redirection are evaluated by Bash. Confirm flags via local `printf --help` when supported.

**Execution context:** This line is normally guarded by script argument parsing, distro detection and dry-run before apply; **do not copy it independently without those preconditions**.

**Impact:** Condition, diagnostic or internal Bash flow, typically not an independent infrastructure change.

## 47. Line 101: apt-get update

```bash
apt-get update
```

**Purpose:** Manage Debian packages

**Syntax:** executable/statement `apt-get` with the shown options and arguments. Shell variables, command substitutions, tests and redirection are evaluated by Bash. Confirm flags via local `apt-get --help` when supported.

**Execution context:** This line is normally guarded by script argument parsing, distro detection and dry-run before apply; **do not copy it independently without those preconditions**.

**Impact:** Condition, diagnostic or internal Bash flow, typically not an independent infrastructure change.

## 48. Line 102: apt-get install -y kubelet kubeadm kubectl

```bash
apt-get install -y kubelet kubeadm kubectl
```

**Purpose:** Manage Debian packages

**Syntax:** executable/statement `apt-get` with the shown options and arguments. Shell variables, command substitutions, tests and redirection are evaluated by Bash. Confirm flags via local `apt-get --help` when supported.

**Execution context:** This line is normally guarded by script argument parsing, distro detection and dry-run before apply; **do not copy it independently without those preconditions**.

**Impact:** 🟠 May change host software, configuration or runtime state; needs approval and backup.

## 49. Line 103: apt-mark hold kubelet kubeadm kubectl

```bash
apt-mark hold kubelet kubeadm kubectl
```

**Purpose:** Manage Debian packages

**Syntax:** executable/statement `apt-mark` with the shown options and arguments. Shell variables, command substitutions, tests and redirection are evaluated by Bash. Confirm flags via local `apt-mark --help` when supported.

**Execution context:** This line is normally guarded by script argument parsing, distro detection and dry-run before apply; **do not copy it independently without those preconditions**.

**Impact:** Condition, diagnostic or internal Bash flow, typically not an independent infrastructure change.

## 50. Line 114: dnf install -y kubelet kubeadm kubectl --disableexcludes=kubernetes || dnf install -y kubelet kubeadm kubectl 

```bash
dnf install -y kubelet kubeadm kubectl --disableexcludes=kubernetes || dnf install -y kubelet kubeadm kubectl --setopt=disable_excludes=kubernetes
```

**Purpose:** Manage RHEL-family RPM packages

**Syntax:** executable/statement `dnf` with the shown options and arguments. Shell variables, command substitutions, tests and redirection are evaluated by Bash. Confirm flags via local `dnf --help` when supported.

**Execution context:** This line is normally guarded by script argument parsing, distro detection and dry-run before apply; **do not copy it independently without those preconditions**.

**Impact:** 🟠 May change host software, configuration or runtime state; needs approval and backup.

## 51. Line 116: systemctl enable kubelet

```bash
systemctl enable kubelet
```

**Purpose:** Configure/start/restart systemd service

**Syntax:** executable/statement `systemctl` with the shown options and arguments. Shell variables, command substitutions, tests and redirection are evaluated by Bash. Confirm flags via local `systemctl --help` when supported.

**Execution context:** This line is normally guarded by script argument parsing, distro detection and dry-run before apply; **do not copy it independently without those preconditions**.

**Impact:** 🟠 May change host software, configuration or runtime state; needs approval and backup.

## 52. Line 117: echo "Prepared $ROLE node, no cluster bootstrap/join performed."

```bash
echo "Prepared $ROLE node, no cluster bootstrap/join performed."
```

**Purpose:** Shell statement in a guarded bootstrap script; inspect full surrounding conditionals and distro context.

**Syntax:** executable/statement `echo` with the shown options and arguments. Shell variables, command substitutions, tests and redirection are evaluated by Bash. Confirm flags via local `echo --help` when supported.

**Execution context:** This line is normally guarded by script argument parsing, distro detection and dry-run before apply; **do not copy it independently without those preconditions**.

**Impact:** Condition, diagnostic or internal Bash flow, typically not an independent infrastructure change.

## 53. Line 118: kubeadm version -o short

```bash
kubeadm version -o short
```

**Purpose:** Inspect Kubernetes bootstrap version

**Syntax:** executable/statement `kubeadm` with the shown options and arguments. Shell variables, command substitutions, tests and redirection are evaluated by Bash. Confirm flags via local `kubeadm --help` when supported.

**Execution context:** This line is normally guarded by script argument parsing, distro detection and dry-run before apply; **do not copy it independently without those preconditions**.

**Impact:** Condition, diagnostic or internal Bash flow, typically not an independent infrastructure change.

## 54. Line 119: containerd --version

```bash
containerd --version
```

**Purpose:** Generate/check container runtime configuration

**Syntax:** executable/statement `containerd` with the shown options and arguments. Shell variables, command substitutions, tests and redirection are evaluated by Bash. Confirm flags via local `containerd --help` when supported.

**Execution context:** This line is normally guarded by script argument parsing, distro detection and dry-run before apply; **do not copy it independently without those preconditions**.

**Impact:** Condition, diagnostic or internal Bash flow, typically not an independent infrastructure change.

## 55. Line 120: echo "NEXT: configure OS firewall/SELinux per approved CNI, network routes, cloud provider integration and app

```bash
echo "NEXT: configure OS firewall/SELinux per approved CNI, network routes, cloud provider integration and approved HA API endpoint."
```

**Purpose:** Shell statement in a guarded bootstrap script; inspect full surrounding conditionals and distro context.

**Syntax:** executable/statement `echo` with the shown options and arguments. Shell variables, command substitutions, tests and redirection are evaluated by Bash. Confirm flags via local `echo --help` when supported.

**Execution context:** This line is normally guarded by script argument parsing, distro detection and dry-run before apply; **do not copy it independently without those preconditions**.

**Impact:** Condition, diagnostic or internal Bash flow, typically not an independent infrastructure change.

## 56. Line 121: echo "CONTROL PLANE: run kubeadm init with reviewed HA config on FIRST control-plane node; configure CNI; join

```bash
echo "CONTROL PLANE: run kubeadm init with reviewed HA config on FIRST control-plane node; configure CNI; join remaining CPs using approved certificate-key/token."
```

**Purpose:** Shell statement in a guarded bootstrap script; inspect full surrounding conditionals and distro context.

**Syntax:** executable/statement `echo` with the shown options and arguments. Shell variables, command substitutions, tests and redirection are evaluated by Bash. Confirm flags via local `echo --help` when supported.

**Execution context:** This line is normally guarded by script argument parsing, distro detection and dry-run before apply; **do not copy it independently without those preconditions**.

**Impact:** Condition, diagnostic or internal Bash flow, typically not an independent infrastructure change.

## 57. Line 122: echo "WORKER: run kubeadm join command obtained securely from cluster owner. NEVER commit join tokens to GitHu

```bash
echo "WORKER: run kubeadm join command obtained securely from cluster owner. NEVER commit join tokens to GitHub."
```

**Purpose:** Shell statement in a guarded bootstrap script; inspect full surrounding conditionals and distro context.

**Syntax:** executable/statement `echo` with the shown options and arguments. Shell variables, command substitutions, tests and redirection are evaluated by Bash. Confirm flags via local `echo --help` when supported.

**Execution context:** This line is normally guarded by script argument parsing, distro detection and dry-run before apply; **do not copy it independently without those preconditions**.

**Impact:** Condition, diagnostic or internal Bash flow, typically not an independent infrastructure change.

