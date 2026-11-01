# Linux node bootstrap script — easy offline walkthrough: scripts/prepare-kubernetes-node.sh

This is an explanation of significant executable statements **inside the script**, not a replacement install command. The script parses and validates arguments and defaults to `--dry-run`; each line can behave differently after `--apply`. Read the entire source before executing it.

## 1. Script line 4

```bash
set -Eeuo pipefail
```

**In simple terms:** This is part of the script's argument checks, variable setup or control flow. The surrounding conditions determine when it runs.

**How the syntax works:** `set` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** Typically checks prerequisites or sets temporary values; read the script's surrounding branch before using.

## 2. Script line 6

```bash
ROLE=""; MINOR="v1.37"; MODE="dry-run"; SWAP_MODE="keep"
```

**In simple terms:** This is part of the script's argument checks, variable setup or control flow. The surrounding conditions determine when it runs.

**How the syntax works:** `ROLE="";` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** Typically checks prerequisites or sets temporary values; read the script's surrounding branch before using.

## 3. Script line 7

```bash
usage(){ cat <<'USAGE'
```

**In simple terms:** This is part of the script's argument checks, variable setup or control flow. The surrounding conditions determine when it runs.

**How the syntax works:** `usage(){` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** Typically checks prerequisites or sets temporary values; read the script's surrounding branch before using.

## 4. Script line 8

```bash
Usage: sudo bash prepare-kubernetes-node.sh --role control-plane|worker [--k8s-minor v1.37] [--dry-run|--apply] [--disable-swap]
```

**In simple terms:** This is part of the script's argument checks, variable setup or control flow. The surrounding conditions determine when it runs.

**How the syntax works:** `Usage:` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** Typically checks prerequisites or sets temporary values; read the script's surrounding branch before using.

## 5. Script line 10

```bash
DRY RUN is default. APPLY installs containerd/kubeadm/kubelet/kubectl and modifies system config.
```

**In simple terms:** This is part of the script's argument checks, variable setup or control flow. The surrounding conditions determine when it runs.

**How the syntax works:** `DRY` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** Typically checks prerequisites or sets temporary values; read the script's surrounding branch before using.

## 6. Script line 11

```bash
Designed for fresh dedicated Linux nodes; do not run blindly on an existing cluster.
```

**In simple terms:** This is part of the script's argument checks, variable setup or control flow. The surrounding conditions determine when it runs.

**How the syntax works:** `Designed` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** Typically checks prerequisites or sets temporary values; read the script's surrounding branch before using.

## 7. Script line 12

```bash
Does not configure customer DNS, networking, cloud CCM/CSI, HA LB, CNI, firewall or kubeadm init/join.
```

**In simple terms:** This is part of the script's argument checks, variable setup or control flow. The surrounding conditions determine when it runs.

**How the syntax works:** `Does` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** Typically checks prerequisites or sets temporary values; read the script's surrounding branch before using.

## 8. Script line 13

```bash
For OpenShift 4.x control plane use supported RHCOS installer + Ignition instead.
```

**In simple terms:** This is part of the script's argument checks, variable setup or control flow. The surrounding conditions determine when it runs.

**How the syntax works:** `For` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** Typically checks prerequisites or sets temporary values; read the script's surrounding branch before using.

## 9. Script line 14

```bash
USAGE
```

**In simple terms:** This is part of the script's argument checks, variable setup or control flow. The surrounding conditions determine when it runs.

**How the syntax works:** `USAGE` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** Typically checks prerequisites or sets temporary values; read the script's surrounding branch before using.

## 10. Script line 18

```bash
--role) ROLE="${2:?missing role}"; shift 2 ;;
```

**In simple terms:** This is part of the script's argument checks, variable setup or control flow. The surrounding conditions determine when it runs.

**How the syntax works:** `--role)` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** Typically checks prerequisites or sets temporary values; read the script's surrounding branch before using.

## 11. Script line 19

```bash
--k8s-minor) MINOR="${2:?missing minor}"; shift 2 ;;
```

**In simple terms:** This is part of the script's argument checks, variable setup or control flow. The surrounding conditions determine when it runs.

**How the syntax works:** `--k8s-minor)` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** Typically checks prerequisites or sets temporary values; read the script's surrounding branch before using.

## 12. Script line 20

```bash
--apply) MODE="apply"; shift ;;
```

**In simple terms:** This is part of the script's argument checks, variable setup or control flow. The surrounding conditions determine when it runs.

**How the syntax works:** `--apply)` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** Typically checks prerequisites or sets temporary values; read the script's surrounding branch before using.

## 13. Script line 21

```bash
--dry-run) MODE="dry-run"; shift ;;
```

**In simple terms:** This is part of the script's argument checks, variable setup or control flow. The surrounding conditions determine when it runs.

**How the syntax works:** `--dry-run)` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** Typically checks prerequisites or sets temporary values; read the script's surrounding branch before using.

## 14. Script line 22

```bash
--disable-swap) SWAP_MODE="disable"; shift ;;
```

**In simple terms:** This is part of the script's argument checks, variable setup or control flow. The surrounding conditions determine when it runs.

**How the syntax works:** `--disable-swap)` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** Typically checks prerequisites or sets temporary values; read the script's surrounding branch before using.

## 15. Script line 23

```bash
-h|--help) usage; exit 0 ;;
```

**In simple terms:** This is part of the script's argument checks, variable setup or control flow. The surrounding conditions determine when it runs.

**How the syntax works:** `-h|--help)` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** Typically checks prerequisites or sets temporary values; read the script's surrounding branch before using.

## 16. Script line 24

```bash
*) echo "Unknown argument: $1" >&2; usage; exit 2 ;;
```

**In simple terms:** This is part of the script's argument checks, variable setup or control flow. The surrounding conditions determine when it runs.

**How the syntax works:** `*)` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** Typically checks prerequisites or sets temporary values; read the script's surrounding branch before using.

## 17. Script line 27

```bash
[[ "$ROLE" == "control-plane" || "$ROLE" == "worker" ]] || { usage; exit 2; }
```

**In simple terms:** This is part of the script's argument checks, variable setup or control flow. The surrounding conditions determine when it runs.

**How the syntax works:** `[[` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** Typically checks prerequisites or sets temporary values; read the script's surrounding branch before using.

## 18. Script line 28

```bash
[[ "$MINOR" =~ ^v1\.[0-9]+$ ]] || { echo 'Expected minor like v1.37' >&2; exit 2; }
```

**In simple terms:** This is part of the script's argument checks, variable setup or control flow. The surrounding conditions determine when it runs.

**How the syntax works:** `[[` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** Typically checks prerequisites or sets temporary values; read the script's surrounding branch before using.

## 19. Script line 29

```bash
[[ -f /etc/os-release ]] || { echo 'Missing /etc/os-release' >&2; exit 1; }
```

**In simple terms:** This is part of the script's argument checks, variable setup or control flow. The surrounding conditions determine when it runs.

**How the syntax works:** `[[` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** Typically checks prerequisites or sets temporary values; read the script's surrounding branch before using.

## 20. Script line 31

```bash
source /etc/os-release
```

**In simple terms:** Loads OS version information from `/etc/os-release`.

**How the syntax works:** `source` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** Typically checks prerequisites or sets temporary values; read the script's surrounding branch before using.

## 21. Script line 32

```bash
FAMILY=""
```

**In simple terms:** This is part of the script's argument checks, variable setup or control flow. The surrounding conditions determine when it runs.

**How the syntax works:** `FAMILY=""` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** Typically checks prerequisites or sets temporary values; read the script's surrounding branch before using.

## 22. Script line 34

```bash
ubuntu|debian) FAMILY="deb" ;;
```

**In simple terms:** This is part of the script's argument checks, variable setup or control flow. The surrounding conditions determine when it runs.

**How the syntax works:** `ubuntu|debian)` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** Typically checks prerequisites or sets temporary values; read the script's surrounding branch before using.

## 23. Script line 35

```bash
rhel|rocky|almalinux|centos) FAMILY="rpm" ;;
```

**In simple terms:** This is part of the script's argument checks, variable setup or control flow. The surrounding conditions determine when it runs.

**How the syntax works:** `rhel|rocky|almalinux|centos)` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** Typically checks prerequisites or sets temporary values; read the script's surrounding branch before using.

## 24. Script line 42

```bash
[[ -n "$FAMILY" ]] || { echo "Unsupported distribution $ID" >&2; exit 1; }
```

**In simple terms:** This is part of the script's argument checks, variable setup or control flow. The surrounding conditions determine when it runs.

**How the syntax works:** `[[` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** Typically checks prerequisites or sets temporary values; read the script's surrounding branch before using.

## 25. Script line 44

```bash
echo "Detected: $PRETTY_NAME / family=$FAMILY / role=$ROLE / Kubernetes=$MINOR / mode=$MODE"
```

**In simple terms:** Prints status text for the operator. May include variables (never secrets).

**How the syntax works:** `echo` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** Typically checks prerequisites or sets temporary values; read the script's surrounding branch before using.

## 26. Script line 45

```bash
echo "WARNING: prerequisites only. Check approved CNI/CSI, cloud CCM, HA LBs, IP ranges, OS support and change approval."
```

**In simple terms:** Prints status text for the operator. May include variables (never secrets).

**How the syntax works:** `echo` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** Typically checks prerequisites or sets temporary values; read the script's surrounding branch before using.

## 27. Script line 47

```bash
echo "Existing kubeadm credentials detected. Refusing to modify a configured node." >&2; exit 1
```

**In simple terms:** Prints status text for the operator. May include variables (never secrets).

**How the syntax works:** `echo` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** Typically checks prerequisites or sets temporary values; read the script's surrounding branch before using.

## 28. Here-document starting on line 50

`cat <<EOF`

**Simply explained:** Opens a multi-line configuration file or help-text block. The `<<EOF` syntax tells the shell to treat following lines as content until matching `EOF`; `>` can replace the destination file. The file may affect node networking, container runtime or K3s server configuration after install.

## 29. Script line 56

```bash
exit 0
```

**In simple terms:** This is part of the script's argument checks, variable setup or control flow. The surrounding conditions determine when it runs.

**How the syntax works:** `exit` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** Typically checks prerequisites or sets temporary values; read the script's surrounding branch before using.

## 30. Script line 59

```bash
export DEBIAN_FRONTEND=noninteractive
```

**In simple terms:** This is part of the script's argument checks, variable setup or control flow. The surrounding conditions determine when it runs.

**How the syntax works:** `export` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** Typically checks prerequisites or sets temporary values; read the script's surrounding branch before using.

## 31. Script line 60

```bash
apt-get update
```

**In simple terms:** Uses Debian/Ubuntu package manager to update package metadata or install software.

**How the syntax works:** `apt-get` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** Typically checks prerequisites or sets temporary values; read the script's surrounding branch before using.

## 32. Script line 61

```bash
apt-get install -y ca-certificates curl gpg apt-transport-https conntrack socat iproute2
```

**In simple terms:** Uses Debian/Ubuntu package manager to update package metadata or install software.

**How the syntax works:** `apt-get` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** ⚠️ Can download software, change service/host configuration or replace files; requires approved node and backup.

## 33. Script line 62

```bash
apt-get install -y containerd
```

**In simple terms:** Uses Debian/Ubuntu package manager to update package metadata or install software.

**How the syntax works:** `apt-get` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** ⚠️ Can download software, change service/host configuration or replace files; requires approved node and backup.

## 34. Script line 64

```bash
command -v dnf >/dev/null || { echo 'RHEL family requires dnf and working repositories' >&2; exit 1; }
```

**In simple terms:** Checks whether a required executable exists.

**How the syntax works:** `command` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** Typically checks prerequisites or sets temporary values; read the script's surrounding branch before using.

## 35. Script line 65

```bash
dnf install -y ca-certificates curl conntrack-tools socat iproute
```

**In simple terms:** Uses RHEL-family package manager to install required packages.

**How the syntax works:** `dnf` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** ⚠️ Can download software, change service/host configuration or replace files; requires approved node and backup.

## 36. Script line 66

```bash
dnf install -y containerd || { echo 'containerd package unavailable: configure an approved vendor repository and retry' >&2; exit 1; }
```

**In simple terms:** Uses RHEL-family package manager to install required packages.

**How the syntax works:** `dnf` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** ⚠️ Can download software, change service/host configuration or replace files; requires approved node and backup.

## 37. Here-document starting on line 68

`cat >/etc/modules-load.d/k8s.conf <<EOF`

**Simply explained:** Opens a multi-line configuration file or help-text block. The `<<EOF` syntax tells the shell to treat following lines as content until matching `EOF`; `>` can replace the destination file. The file may affect node networking, container runtime or K3s server configuration after install.

## 38. Script line 72

```bash
modprobe overlay
```

**In simple terms:** Loads Linux kernel modules immediately, e.g. overlay or bridged traffic support.

**How the syntax works:** `modprobe` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** ⚠️ Can download software, change service/host configuration or replace files; requires approved node and backup.

## 39. Script line 73

```bash
modprobe br_netfilter
```

**In simple terms:** Loads Linux kernel modules immediately, e.g. overlay or bridged traffic support.

**How the syntax works:** `modprobe` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** ⚠️ Can download software, change service/host configuration or replace files; requires approved node and backup.

## 40. Here-document starting on line 74

`cat >/etc/sysctl.d/99-kubernetes-cri.conf <<EOF`

**Simply explained:** Opens a multi-line configuration file or help-text block. The `<<EOF` syntax tells the shell to treat following lines as content until matching `EOF`; `>` can replace the destination file. The file may affect node networking, container runtime or K3s server configuration after install.

## 41. Script line 79

```bash
sysctl --system
```

**In simple terms:** Applies configured Linux kernel networking settings, including forwarding and bridge packet processing.

**How the syntax works:** `sysctl` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** ⚠️ Can download software, change service/host configuration or replace files; requires approved node and backup.

## 42. Script line 80

```bash
mkdir -p /etc/containerd
```

**In simple terms:** Creates configuration directories; watch permissions and destination.

**How the syntax works:** `mkdir` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** Typically checks prerequisites or sets temporary values; read the script's surrounding branch before using.

## 43. Script line 82

```bash
cp -a /etc/containerd/config.toml "/etc/containerd/config.toml.pre-k8s.$(date +%Y%m%d%H%M%S)"
```

**In simple terms:** Copies existing configuration as a backup before overwriting.

**How the syntax works:** `cp` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** ⚠️ Can download software, change service/host configuration or replace files; requires approved node and backup.

## 44. Script line 85

```bash
containerd config default > /etc/containerd/config.toml
```

**In simple terms:** Generates or inspects the container runtime configuration. Kubernetes needs compatible cgroups.

**How the syntax works:** `containerd` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** Typically checks prerequisites or sets temporary values; read the script's surrounding branch before using.

## 45. Script line 87

```bash
sed -i 's/SystemdCgroup = false/SystemdCgroup = true/g' /etc/containerd/config.toml
```

**In simple terms:** Edits a configuration file in-place; bad expressions may alter production config.

**How the syntax works:** `sed` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** ⚠️ Can download software, change service/host configuration or replace files; requires approved node and backup.

## 46. Script line 88

```bash
grep -q 'SystemdCgroup = true' /etc/containerd/config.toml || { echo 'Failed to enable systemd cgroups' >&2; exit 1; }
```

**In simple terms:** Checks whether required settings appear in generated config.

**How the syntax works:** `grep` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** Typically checks prerequisites or sets temporary values; read the script's surrounding branch before using.

## 47. Script line 89

```bash
systemctl enable --now containerd
```

**In simple terms:** Configures, starts or restarts a systemd-managed service.

**How the syntax works:** `systemctl` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** Typically checks prerequisites or sets temporary values; read the script's surrounding branch before using.

## 48. Script line 90

```bash
systemctl restart containerd
```

**In simple terms:** Configures, starts or restarts a systemd-managed service.

**How the syntax works:** `systemctl` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** ⚠️ Can download software, change service/host configuration or replace files; requires approved node and backup.

## 49. Script line 92

```bash
swapoff -a
```

**In simple terms:** Disables swap immediately; memory capacity must be sufficient.

**How the syntax works:** `swapoff` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** ⚠️ Can download software, change service/host configuration or replace files; requires approved node and backup.

## 50. Script line 93

```bash
cp -a /etc/fstab "/etc/fstab.pre-k8s.$(date +%Y%m%d%H%M%S)"
```

**In simple terms:** Copies existing configuration as a backup before overwriting.

**How the syntax works:** `cp` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** ⚠️ Can download software, change service/host configuration or replace files; requires approved node and backup.

## 51. Script line 94

```bash
sed -i -E '/^[[:space:]]*[^#].*[[:space:]]swap[[:space:]]/ s/^/# disabled-for-kubeadm /' /etc/fstab
```

**In simple terms:** Edits a configuration file in-place; bad expressions may alter production config.

**How the syntax works:** `sed` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** ⚠️ Can download software, change service/host configuration or replace files; requires approved node and backup.

## 52. Script line 97

```bash
mkdir -p -m 0755 /etc/apt/keyrings
```

**In simple terms:** Creates configuration directories; watch permissions and destination.

**How the syntax works:** `mkdir` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** Typically checks prerequisites or sets temporary values; read the script's surrounding branch before using.

## 53. Script line 98

```bash
curl -fsSL "https://pkgs.k8s.io/core:/stable:/$MINOR/deb/Release.key" | gpg --dearmor --yes -o /etc/apt/keyrings/kubernetes-apt-keyring.gpg
```

**In simple terms:** Downloads the vendor install script or Kubernetes repo signing key over HTTPS; verify trusted source.

**How the syntax works:** `curl` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** ⚠️ Can download software, change service/host configuration or replace files; requires approved node and backup.

## 54. Script line 99

```bash
chmod 0644 /etc/apt/keyrings/kubernetes-apt-keyring.gpg
```

**In simple terms:** Changes permissions. Token files should only be readable by authorized administrators.

**How the syntax works:** `chmod` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** ⚠️ Can download software, change service/host configuration or replace files; requires approved node and backup.

## 55. Script line 100

```bash
printf 'deb [signed-by=/etc/apt/keyrings/kubernetes-apt-keyring.gpg] https://pkgs.k8s.io/core:/stable:/%s/deb/ /\n' "$MINOR" >/etc/apt/sources.list.d/kubernetes.list
```

**In simple terms:** Writes formatted text to output or configuration when redirected.

**How the syntax works:** `printf` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** Typically checks prerequisites or sets temporary values; read the script's surrounding branch before using.

## 56. Script line 101

```bash
apt-get update
```

**In simple terms:** Uses Debian/Ubuntu package manager to update package metadata or install software.

**How the syntax works:** `apt-get` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** Typically checks prerequisites or sets temporary values; read the script's surrounding branch before using.

## 57. Script line 102

```bash
apt-get install -y kubelet kubeadm kubectl
```

**In simple terms:** Uses Debian/Ubuntu package manager to update package metadata or install software.

**How the syntax works:** `apt-get` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** ⚠️ Can download software, change service/host configuration or replace files; requires approved node and backup.

## 58. Script line 103

```bash
apt-mark hold kubelet kubeadm kubectl
```

**In simple terms:** This is part of the script's argument checks, variable setup or control flow. The surrounding conditions determine when it runs.

**How the syntax works:** `apt-mark` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** Typically checks prerequisites or sets temporary values; read the script's surrounding branch before using.

## 59. Here-document starting on line 105

`cat >/etc/yum.repos.d/kubernetes.repo <<EOF`

**Simply explained:** Opens a multi-line configuration file or help-text block. The `<<EOF` syntax tells the shell to treat following lines as content until matching `EOF`; `>` can replace the destination file. The file may affect node networking, container runtime or K3s server configuration after install.

## 60. Script line 114

```bash
dnf install -y kubelet kubeadm kubectl --disableexcludes=kubernetes || dnf install -y kubelet kubeadm kubectl --setopt=disable_excludes=kubernetes
```

**In simple terms:** Uses RHEL-family package manager to install required packages.

**How the syntax works:** `dnf` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** ⚠️ Can download software, change service/host configuration or replace files; requires approved node and backup.

## 61. Script line 116

```bash
systemctl enable kubelet
```

**In simple terms:** Configures, starts or restarts a systemd-managed service.

**How the syntax works:** `systemctl` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** Typically checks prerequisites or sets temporary values; read the script's surrounding branch before using.

## 62. Script line 117

```bash
echo "Prepared $ROLE node, no cluster bootstrap/join performed."
```

**In simple terms:** Prints status text for the operator. May include variables (never secrets).

**How the syntax works:** `echo` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** Typically checks prerequisites or sets temporary values; read the script's surrounding branch before using.

## 63. Script line 118

```bash
kubeadm version -o short
```

**In simple terms:** Queries the installed Kubernetes bootstrap tool version; no control plane is created here.

**How the syntax works:** `kubeadm` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** Typically checks prerequisites or sets temporary values; read the script's surrounding branch before using.

## 64. Script line 119

```bash
containerd --version
```

**In simple terms:** Generates or inspects the container runtime configuration. Kubernetes needs compatible cgroups.

**How the syntax works:** `containerd` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** Typically checks prerequisites or sets temporary values; read the script's surrounding branch before using.

## 65. Script line 120

```bash
echo "NEXT: configure OS firewall/SELinux per approved CNI, network routes, cloud provider integration and approved HA API endpoint."
```

**In simple terms:** Prints status text for the operator. May include variables (never secrets).

**How the syntax works:** `echo` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** Typically checks prerequisites or sets temporary values; read the script's surrounding branch before using.

## 66. Script line 121

```bash
echo "CONTROL PLANE: run kubeadm init with reviewed HA config on FIRST control-plane node; configure CNI; join remaining CPs using approved certificate-key/token."
```

**In simple terms:** Prints status text for the operator. May include variables (never secrets).

**How the syntax works:** `echo` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** Typically checks prerequisites or sets temporary values; read the script's surrounding branch before using.

## 67. Script line 122

```bash
echo "WORKER: run kubeadm join command obtained securely from cluster owner. NEVER commit join tokens to GitHub."
```

**In simple terms:** Prints status text for the operator. May include variables (never secrets).

**How the syntax works:** `echo` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** Typically checks prerequisites or sets temporary values; read the script's surrounding branch before using.

