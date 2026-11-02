# Offline command / configuration reference: `offline-simple/scripts-prepare-kubernetes-node_sh.md`

Generated from repository source by `tools/build_offline_reference.py`. **55 items**. This copy works offline. No commands were executed.

⚠️ **Version-aware reference, not a substitute for vendor docs.** Every individual command is preserved with purpose, flags, placeholders, expected output and risk. Ambiguous flags are marked as command-specific. Always verify flags against your installed CLI.

**Original file:** [`offline-simple/scripts-prepare-kubernetes-node_sh.md`](../offline-simple/scripts-prepare-kubernetes-node_sh.md)

### 1. `Usage: sudo bash prepare-kubernetes-node.sh --role control-plane\|worker [--k8s-minor v1.37] [--dry-run\|--apply] [--…`

**Source line:** 50  |  **Tool/purpose:** Usage: operation  |  **Impact:** **CHANGE / POSSIBLY MUTATING**

**Exact command:**

```bash
Usage: sudo bash prepare-kubernetes-node.sh --role control-plane|worker [--k8s-minor v1.37] [--dry-run|--apply] [--disable-swap]
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** Usage: sudo bash prepare-kubernetes-node.sh --role. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `--role` — Choose node/server role or target role in script.
**Shell syntax:** `|` pipes stdout into the next process; check pipeline exit codes (pipefail where appropriate).
**Safety/rollback:** Check subcommand and flags; requires change review and appropriate access.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `Usage: operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 2. `DRY RUN is default. APPLY installs containerd/kubeadm/kubelet/kubectl and modifies system config.`

**Source line:** 64  |  **Tool/purpose:** DRY operation  |  **Impact:** **CHANGE / POSSIBLY MUTATING**

**Exact command:**

```bash
DRY RUN is default. APPLY installs containerd/kubeadm/kubelet/kubectl and modifies system config.
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** DRY RUN is default. APPLY. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Check subcommand and flags; requires change review and appropriate access.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `DRY operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 3. `Designed for fresh dedicated Linux nodes; do not run blindly on an existing cluster.`

**Source line:** 78  |  **Tool/purpose:** Designed operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
Designed for fresh dedicated Linux nodes; do not run blindly on an existing cluster.
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** Designed for fresh dedicated Linux. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `Designed operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 4. `Does not configure customer DNS, networking, cloud CCM/CSI, HA LB, CNI, firewall or kubeadm init/join.`

**Source line:** 92  |  **Tool/purpose:** Does operation  |  **Impact:** **CHANGE / POSSIBLY MUTATING**

**Exact command:**

```bash
Does not configure customer DNS, networking, cloud CCM/CSI, HA LB, CNI, firewall or kubeadm init/join.
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** Does not configure customer DNS,. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Check subcommand and flags; requires change review and appropriate access.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `Does operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 5. `For OpenShift 4.x control plane use supported RHCOS installer + Ignition instead.`

**Source line:** 106  |  **Tool/purpose:** For operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
For OpenShift 4.x control plane use supported RHCOS installer + Ignition instead.
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** For OpenShift 4.x control plane. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `For operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 6. `--role) ROLE="${2:?missing role}"; shift 2 ;;`

**Source line:** 134  |  **Tool/purpose:** --role) operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
--role) ROLE="${2:?missing role}"; shift 2 ;;
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** --role) ROLE=${2:?missing role}; shift 2 ;;. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `--role)` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `--role) operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 7. `--k8s-minor) MINOR="${2:?missing minor}"; shift 2 ;;`

**Source line:** 148  |  **Tool/purpose:** --k8s-minor) operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
--k8s-minor) MINOR="${2:?missing minor}"; shift 2 ;;
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** --k8s-minor) MINOR=${2:?missing minor}; shift 2 ;;. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `--k8s-minor)` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `--k8s-minor) operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 8. `--apply) MODE="apply"; shift ;;`

**Source line:** 162  |  **Tool/purpose:** --apply) operation  |  **Impact:** **CHANGE / POSSIBLY MUTATING**

**Exact command:**

```bash
--apply) MODE="apply"; shift ;;
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** --apply) MODE=apply; shift ;;. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `--apply)` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Safety/rollback:** Check subcommand and flags; requires change review and appropriate access.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `--apply) operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 9. `--dry-run) MODE="dry-run"; shift ;;`

**Source line:** 176  |  **Tool/purpose:** --dry-run) operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
--dry-run) MODE="dry-run"; shift ;;
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** --dry-run) MODE=dry-run; shift ;;. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `--dry-run)` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `--dry-run) operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 10. `--disable-swap) SWAP_MODE="disable"; shift ;;`

**Source line:** 190  |  **Tool/purpose:** --disable-swap) operation  |  **Impact:** **CHANGE / POSSIBLY MUTATING**

**Exact command:**

```bash
--disable-swap) SWAP_MODE="disable"; shift ;;
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** --disable-swap) SWAP_MODE=disable; shift ;;. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `--disable-swap)` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Safety/rollback:** Check subcommand and flags; requires change review and appropriate access.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `--disable-swap) operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 11. `-h\|--help) usage; exit 0 ;;`

**Source line:** 204  |  **Tool/purpose:** -h|--help) operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
-h|--help) usage; exit 0 ;;
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** -h|--help) usage; exit 0 ;;. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-h\|--help)` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Shell syntax:** `|` pipes stdout into the next process; check pipeline exit codes (pipefail where appropriate).
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `-h|--help) operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 12. `*) echo "Unknown argument: $1" >&2; usage; exit 2 ;;`

**Source line:** 218  |  **Tool/purpose:** *) operation  |  **Impact:** **LOCAL FILE WRITE / POSSIBLY MUTATING**

**Exact command:**

```bash
*) echo "Unknown argument: $1" >&2; usage; exit 2 ;;
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** *) echo Unknown argument: $1 >&2; usage;. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Shell syntax:** `>` redirects/truncates output; confirm destination and permissions.
**Safety/rollback:** Shell redirection may create/truncate files; verify output destination.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `*) operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 13. `source /etc/os-release`

**Source line:** 274  |  **Tool/purpose:** source operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
source /etc/os-release
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** source /etc/os-release. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `source operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 14. `FAMILY=""`

**Source line:** 288  |  **Tool/purpose:** FAMILY= operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
FAMILY=""
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** FAMILY=. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `FAMILY= operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 15. `ubuntu\|debian) FAMILY="deb" ;;`

**Source line:** 302  |  **Tool/purpose:** ubuntu|debian) operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
ubuntu|debian) FAMILY="deb" ;;
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** ubuntu|debian) FAMILY=deb ;;. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Shell syntax:** `|` pipes stdout into the next process; check pipeline exit codes (pipefail where appropriate).
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `ubuntu|debian) operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 16. `rhel\|rocky\|almalinux\|centos) FAMILY="rpm" ;;`

**Source line:** 316  |  **Tool/purpose:** rhel|rocky|almalinux|centos) operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
rhel|rocky|almalinux|centos) FAMILY="rpm" ;;
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** rhel|rocky|almalinux|centos) FAMILY=rpm ;;. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Shell syntax:** `|` pipes stdout into the next process; check pipeline exit codes (pipefail where appropriate).
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `rhel|rocky|almalinux|centos) operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 17. `echo "Detected: $PRETTY_NAME / family=$FAMILY / role=$ROLE / Kubernetes=$MINOR / mode=$MODE"`

**Source line:** 344  |  **Tool/purpose:** echo operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
echo "Detected: $PRETTY_NAME / family=$FAMILY / role=$ROLE / Kubernetes=$MINOR / mode=$MODE"
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** echo Detected: $PRETTY_NAME / family=$FAMILY / role=$ROLE / Kubernetes=$MINOR / mode=$MODE. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Substitute before running:** `$PRETTY_NAME`, `$FAMILY`, `$ROLE`, `$MINOR`, `$MODE`. Never assume an example target is the current cluster.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `echo operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 18. `echo "WARNING: prerequisites only. Check approved CNI/CSI, cloud CCM, HA LBs, IP ranges, OS support and change appr…`

**Source line:** 358  |  **Tool/purpose:** echo operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
echo "WARNING: prerequisites only. Check approved CNI/CSI, cloud CCM, HA LBs, IP ranges, OS support and change approval."
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** echo WARNING: prerequisites only. Check approved CNI/CSI, cloud CCM, HA LBs, IP ranges, OS support and change approval.. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `echo operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 19. `echo "Existing kubeadm credentials detected. Refusing to modify a configured node." >&2; exit 1`

**Source line:** 372  |  **Tool/purpose:** echo operation  |  **Impact:** **LOCAL FILE WRITE / POSSIBLY MUTATING**

**Exact command:**

```bash
echo "Existing kubeadm credentials detected. Refusing to modify a configured node." >&2; exit 1
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** echo Existing kubeadm credentials detected. Refusing to modify a configured node. >&2; exit 1. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Shell syntax:** `>` redirects/truncates output; confirm destination and permissions.
**Safety/rollback:** Shell redirection may create/truncate files; verify output destination.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `echo operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 20. `exit 0`

**Source line:** 392  |  **Tool/purpose:** exit operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
exit 0
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** exit 0. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `exit operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 21. `export DEBIAN_FRONTEND=noninteractive`

**Source line:** 406  |  **Tool/purpose:** export operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
export DEBIAN_FRONTEND=noninteractive
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** export DEBIAN_FRONTEND=noninteractive. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `export operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 22. `apt-get update`

**Source line:** 420  |  **Tool/purpose:** Debian/Ubuntu package manager  |  **Impact:** **CHANGE / POSSIBLY MUTATING**

**Exact command:**

```bash
apt-get update
```

**What it does:** Update package indexes or install/upgrade/remove packages depending on subcommand.

**Syntax:** apt-get update. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Check subcommand and flags; requires change review and appropriate access.
**Expected result:** Update package indexes or install/upgrade/remove packages depending on subcommand. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `Debian/Ubuntu package manager` vendor manual or installed `--help`; [online vendor reference](https://manpages.debian.org/).

### 23. `apt-get install -y ca-certificates curl gpg apt-transport-https conntrack socat iproute2`

**Source line:** 434  |  **Tool/purpose:** Debian/Ubuntu package manager  |  **Impact:** **CHANGE / POSSIBLY MUTATING**

**Exact command:**

```bash
apt-get install -y ca-certificates curl gpg apt-transport-https conntrack socat iproute2
```

**What it does:** Update package indexes or install/upgrade/remove packages depending on subcommand.

**Syntax:** apt-get install -y ca-certificates curl. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-y` — Automatically accept package manager prompts; risky on production.
**Safety/rollback:** Check subcommand and flags; requires change review and appropriate access.
**Expected result:** Update package indexes or install/upgrade/remove packages depending on subcommand. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `Debian/Ubuntu package manager` vendor manual or installed `--help`; [online vendor reference](https://manpages.debian.org/).

### 24. `apt-get install -y containerd`

**Source line:** 448  |  **Tool/purpose:** Debian/Ubuntu package manager  |  **Impact:** **CHANGE / POSSIBLY MUTATING**

**Exact command:**

```bash
apt-get install -y containerd
```

**What it does:** Update package indexes or install/upgrade/remove packages depending on subcommand.

**Syntax:** apt-get install -y containerd. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-y` — Automatically accept package manager prompts; risky on production.
**Safety/rollback:** Check subcommand and flags; requires change review and appropriate access.
**Expected result:** Update package indexes or install/upgrade/remove packages depending on subcommand. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `Debian/Ubuntu package manager` vendor manual or installed `--help`; [online vendor reference](https://manpages.debian.org/).

### 25. `command -v dnf >/dev/null \|\| { echo 'RHEL family requires dnf and working repositories' >&2; exit 1; }`

**Source line:** 462  |  **Tool/purpose:** command operation  |  **Impact:** **LOCAL FILE WRITE / POSSIBLY MUTATING**

**Exact command:**

```bash
command -v dnf >/dev/null || { echo 'RHEL family requires dnf and working repositories' >&2; exit 1; }
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** command -v dnf >/dev/null ||. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-v` — Verbose output or version depending on command.
**Shell syntax:** `|` pipes stdout into the next process; check pipeline exit codes (pipefail where appropriate). `>` redirects/truncates output; confirm destination and permissions.
**Safety/rollback:** Shell redirection may create/truncate files; verify output destination.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `command operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 26. `dnf install -y ca-certificates curl conntrack-tools socat iproute`

**Source line:** 476  |  **Tool/purpose:** RHEL-family package manager  |  **Impact:** **CHANGE / POSSIBLY MUTATING**

**Exact command:**

```bash
dnf install -y ca-certificates curl conntrack-tools socat iproute
```

**What it does:** Install/update/query packages using configured RPM repositories.

**Syntax:** dnf install -y ca-certificates curl. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-y` — Automatically accept package manager prompts; risky on production.
**Safety/rollback:** Check subcommand and flags; requires change review and appropriate access.
**Expected result:** Install/update/query packages using configured RPM repositories. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `RHEL-family package manager` vendor manual or installed `--help`; [online vendor reference](https://dnf.readthedocs.io/).

### 27. `dnf install -y containerd \|\| { echo 'containerd package unavailable: configure an approved vendor repository and re…`

**Source line:** 490  |  **Tool/purpose:** RHEL-family package manager  |  **Impact:** **CHANGE / POSSIBLY MUTATING**

**Exact command:**

```bash
dnf install -y containerd || { echo 'containerd package unavailable: configure an approved vendor repository and retry' >&2; exit 1; }
```

**What it does:** Install/update/query packages using configured RPM repositories.

**Syntax:** dnf install -y containerd ||. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-y` — Automatically accept package manager prompts; risky on production.
**Shell syntax:** `|` pipes stdout into the next process; check pipeline exit codes (pipefail where appropriate). `>` redirects/truncates output; confirm destination and permissions.
**Safety/rollback:** Check subcommand and flags; requires change review and appropriate access.
**Expected result:** Install/update/query packages using configured RPM repositories. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `RHEL-family package manager` vendor manual or installed `--help`; [online vendor reference](https://dnf.readthedocs.io/).

### 28. `modprobe overlay`

**Source line:** 510  |  **Tool/purpose:** modprobe operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
modprobe overlay
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** modprobe overlay. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `modprobe operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 29. `modprobe br_netfilter`

**Source line:** 524  |  **Tool/purpose:** modprobe operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
modprobe br_netfilter
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** modprobe br_netfilter. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `modprobe operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 30. `sysctl --system`

**Source line:** 544  |  **Tool/purpose:** sysctl operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
sysctl --system
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** sysctl --system. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `--system` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `sysctl operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 31. `mkdir -p /etc/containerd`

**Source line:** 558  |  **Tool/purpose:** mkdir operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
mkdir -p /etc/containerd
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** mkdir -p /etc/containerd. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-p` — Priority filter in journalctl; other meanings in other CLIs.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `mkdir operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 32. `cp -a /etc/containerd/config.toml "/etc/containerd/config.toml.pre-k8s.$(date +%Y%m%d%H%M%S)"`

**Source line:** 572  |  **Tool/purpose:** cp operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
cp -a /etc/containerd/config.toml "/etc/containerd/config.toml.pre-k8s.$(date +%Y%m%d%H%M%S)"
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** cp -a /etc/containerd/config.toml /etc/containerd/config.toml.pre-k8s.$(date +%Y%m%d%H%M%S). The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-a` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Shell syntax:** `$(...)` executes a subshell for value substitution.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `cp operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 33. `containerd config default > /etc/containerd/config.toml`

**Source line:** 586  |  **Tool/purpose:** containerd operation  |  **Impact:** **LOCAL FILE WRITE / POSSIBLY MUTATING**

**Exact command:**

```bash
containerd config default > /etc/containerd/config.toml
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** containerd config default > /etc/containerd/config.toml. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Shell syntax:** `>` redirects/truncates output; confirm destination and permissions.
**Safety/rollback:** Shell redirection may create/truncate files; verify output destination.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `containerd operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 34. `sed -i 's/SystemdCgroup = false/SystemdCgroup = true/g' /etc/containerd/config.toml`

**Source line:** 600  |  **Tool/purpose:** sed operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
sed -i 's/SystemdCgroup = false/SystemdCgroup = true/g' /etc/containerd/config.toml
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** sed -i s/SystemdCgroup = false/SystemdCgroup = true/g /etc/containerd/config.toml. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-i` — Inode usage in df, interactive or interface depending on command.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `sed operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 35. `grep -q 'SystemdCgroup = true' /etc/containerd/config.toml \|\| { echo 'Failed to enable systemd cgroups' >&2; exit 1…`

**Source line:** 614  |  **Tool/purpose:** grep operation  |  **Impact:** **CHANGE / POSSIBLY MUTATING**

**Exact command:**

```bash
grep -q 'SystemdCgroup = true' /etc/containerd/config.toml || { echo 'Failed to enable systemd cgroups' >&2; exit 1; }
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** grep -q SystemdCgroup = true /etc/containerd/config.toml ||. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-q` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Shell syntax:** `|` pipes stdout into the next process; check pipeline exit codes (pipefail where appropriate). `>` redirects/truncates output; confirm destination and permissions.
**Safety/rollback:** Check subcommand and flags; requires change review and appropriate access.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `grep operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 36. `systemctl enable --now containerd`

**Source line:** 628  |  **Tool/purpose:** systemd unit manager  |  **Impact:** **CHANGE / POSSIBLY MUTATING**

**Exact command:**

```bash
systemctl enable --now containerd
```

**What it does:** Inspect or modify systemd-managed services and units.

**Syntax:** systemctl enable --now containerd. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `--now` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Safety/rollback:** Check subcommand and flags; requires change review and appropriate access.
**Expected result:** Inspect or modify systemd-managed services and units. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `systemd unit manager` vendor manual or installed `--help`; [online vendor reference](https://www.freedesktop.org/software/systemd/man/latest/systemctl.html).

### 37. `systemctl restart containerd`

**Source line:** 642  |  **Tool/purpose:** systemd unit manager  |  **Impact:** **CHANGE / POSSIBLY MUTATING**

**Exact command:**

```bash
systemctl restart containerd
```

**What it does:** Restart a unit, potentially interrupting production traffic.

**Syntax:** systemctl restart containerd. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Check subcommand and flags; requires change review and appropriate access.
**Expected result:** Restart a unit, potentially interrupting production traffic. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `systemd unit manager` vendor manual or installed `--help`; [online vendor reference](https://www.freedesktop.org/software/systemd/man/latest/systemctl.html).

### 38. `swapoff -a`

**Source line:** 656  |  **Tool/purpose:** swapoff operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
swapoff -a
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** swapoff -a. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-a` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `swapoff operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 39. `cp -a /etc/fstab "/etc/fstab.pre-k8s.$(date +%Y%m%d%H%M%S)"`

**Source line:** 670  |  **Tool/purpose:** cp operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
cp -a /etc/fstab "/etc/fstab.pre-k8s.$(date +%Y%m%d%H%M%S)"
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** cp -a /etc/fstab /etc/fstab.pre-k8s.$(date +%Y%m%d%H%M%S). The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-a` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Shell syntax:** `$(...)` executes a subshell for value substitution.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `cp operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 40. `sed -i -E '/^[[:space:]]*[^#].*[[:space:]]swap[[:space:]]/ s/^/# disabled-for-kubeadm /' /etc/fstab`

**Source line:** 684  |  **Tool/purpose:** sed operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
sed -i -E '/^[[:space:]]*[^#].*[[:space:]]swap[[:space:]]/ s/^/# disabled-for-kubeadm /' /etc/fstab
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** sed -i -E /^[[:space:]]*[^#].*[[:space:]]swap[[:space:]]/ s/^/# disabled-for-kubeadm / /etc/fstab. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-i` — Inode usage in df, interactive or interface depending on command.
**Option:** `-E` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `sed operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 41. `mkdir -p -m 0755 /etc/apt/keyrings`

**Source line:** 698  |  **Tool/purpose:** mkdir operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
mkdir -p -m 0755 /etc/apt/keyrings
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** mkdir -p -m 0755 /etc/apt/keyrings. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-p` — Priority filter in journalctl; other meanings in other CLIs.
**Option:** `-m` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information. **Credential caution:** command may reference credentials or identity; do not upload raw outputs.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `mkdir operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 42. `curl -fsSL "https://pkgs.k8s.io/core:/stable:/$MINOR/deb/Release.key" \| gpg --dearmor --yes -o /etc/apt/keyrings/ku…`

**Source line:** 712  |  **Tool/purpose:** HTTP request/diagnostic  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
curl -fsSL "https://pkgs.k8s.io/core:/stable:/$MINOR/deb/Release.key" | gpg --dearmor --yes -o /etc/apt/keyrings/kubernetes-apt-keyring.gpg
```

**What it does:** Request or transfer network content, with protocol and TLS behavior governed by flags.

**Syntax:** curl -fsSL https://pkgs.k8s.io/core:/stable:/$MINOR/deb/Release.key | gpg. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-fsSL` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Option:** `--dearmor` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Option:** `--yes` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Option:** `-o` — Output format for kubectl/oc, filename for some tools; command-specific.
**Substitute before running:** `$MINOR`. Never assume an example target is the current cluster.
**Shell syntax:** `|` pipes stdout into the next process; check pipeline exit codes (pipefail where appropriate).
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information. **Credential caution:** command may reference credentials or identity; do not upload raw outputs.
**Expected result:** Request or transfer network content, with protocol and TLS behavior governed by flags. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `HTTP request/diagnostic` vendor manual or installed `--help`; [online vendor reference](https://curl.se/docs/manpage.html).

### 43. `chmod 0644 /etc/apt/keyrings/kubernetes-apt-keyring.gpg`

**Source line:** 726  |  **Tool/purpose:** chmod operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
chmod 0644 /etc/apt/keyrings/kubernetes-apt-keyring.gpg
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** chmod 0644 /etc/apt/keyrings/kubernetes-apt-keyring.gpg. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information. **Credential caution:** command may reference credentials or identity; do not upload raw outputs.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `chmod operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 44. `printf 'deb [signed-by=/etc/apt/keyrings/kubernetes-apt-keyring.gpg] https://pkgs.k8s.io/core:/stable:/%s/deb/ /\n'…`

**Source line:** 740  |  **Tool/purpose:** printf operation  |  **Impact:** **LOCAL FILE WRITE / POSSIBLY MUTATING**

**Exact command:**

```bash
printf 'deb [signed-by=/etc/apt/keyrings/kubernetes-apt-keyring.gpg] https://pkgs.k8s.io/core:/stable:/%s/deb/ /\n' "$MINOR" >/etc/apt/sources.list.d/kubernetes.list
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** printf deb [signed-by=/etc/apt/keyrings/kubernetes-apt-keyring.gpg] https://pkgs.k8s.io/core:/stable:/%s/deb/ /\n $MINOR >/etc/apt/sources.list.d/kubernetes.list. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Substitute before running:** `$MINOR`. Never assume an example target is the current cluster.
**Shell syntax:** `>` redirects/truncates output; confirm destination and permissions.
**Safety/rollback:** Shell redirection may create/truncate files; verify output destination. **Credential caution:** command may reference credentials or identity; do not upload raw outputs.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `printf operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 45. `apt-get update`

**Source line:** 754  |  **Tool/purpose:** Debian/Ubuntu package manager  |  **Impact:** **CHANGE / POSSIBLY MUTATING**

**Exact command:**

```bash
apt-get update
```

**What it does:** Update package indexes or install/upgrade/remove packages depending on subcommand.

**Syntax:** apt-get update. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Check subcommand and flags; requires change review and appropriate access.
**Expected result:** Update package indexes or install/upgrade/remove packages depending on subcommand. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `Debian/Ubuntu package manager` vendor manual or installed `--help`; [online vendor reference](https://manpages.debian.org/).

### 46. `apt-get install -y kubelet kubeadm kubectl`

**Source line:** 768  |  **Tool/purpose:** Debian/Ubuntu package manager  |  **Impact:** **CHANGE / POSSIBLY MUTATING**

**Exact command:**

```bash
apt-get install -y kubelet kubeadm kubectl
```

**What it does:** Update package indexes or install/upgrade/remove packages depending on subcommand.

**Syntax:** apt-get install -y kubelet kubeadm. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-y` — Automatically accept package manager prompts; risky on production.
**Safety/rollback:** Check subcommand and flags; requires change review and appropriate access.
**Expected result:** Update package indexes or install/upgrade/remove packages depending on subcommand. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `Debian/Ubuntu package manager` vendor manual or installed `--help`; [online vendor reference](https://manpages.debian.org/).

### 47. `apt-mark hold kubelet kubeadm kubectl`

**Source line:** 782  |  **Tool/purpose:** apt-mark operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
apt-mark hold kubelet kubeadm kubectl
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** apt-mark hold kubelet kubeadm kubectl. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `apt-mark operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 48. `dnf install -y kubelet kubeadm kubectl --disableexcludes=kubernetes \|\| dnf install -y kubelet kubeadm kubectl --set…`

**Source line:** 802  |  **Tool/purpose:** RHEL-family package manager  |  **Impact:** **CHANGE / POSSIBLY MUTATING**

**Exact command:**

```bash
dnf install -y kubelet kubeadm kubectl --disableexcludes=kubernetes || dnf install -y kubelet kubeadm kubectl --setopt=disable_excludes=kubernetes
```

**What it does:** Install/update/query packages using configured RPM repositories.

**Syntax:** dnf install -y kubelet kubeadm. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-y` — Automatically accept package manager prompts; risky on production.
**Option:** `--disableexcludes=kubernetes` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Option:** `-y` — Automatically accept package manager prompts; risky on production.
**Option:** `--setopt=disable_excludes=kubernetes` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Shell syntax:** `|` pipes stdout into the next process; check pipeline exit codes (pipefail where appropriate).
**Safety/rollback:** Check subcommand and flags; requires change review and appropriate access.
**Expected result:** Install/update/query packages using configured RPM repositories. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `RHEL-family package manager` vendor manual or installed `--help`; [online vendor reference](https://dnf.readthedocs.io/).

### 49. `systemctl enable kubelet`

**Source line:** 816  |  **Tool/purpose:** systemd unit manager  |  **Impact:** **CHANGE / POSSIBLY MUTATING**

**Exact command:**

```bash
systemctl enable kubelet
```

**What it does:** Inspect or modify systemd-managed services and units.

**Syntax:** systemctl enable kubelet. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Check subcommand and flags; requires change review and appropriate access.
**Expected result:** Inspect or modify systemd-managed services and units. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `systemd unit manager` vendor manual or installed `--help`; [online vendor reference](https://www.freedesktop.org/software/systemd/man/latest/systemctl.html).

### 50. `echo "Prepared $ROLE node, no cluster bootstrap/join performed."`

**Source line:** 830  |  **Tool/purpose:** echo operation  |  **Impact:** **CHANGE / POSSIBLY MUTATING**

**Exact command:**

```bash
echo "Prepared $ROLE node, no cluster bootstrap/join performed."
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** echo Prepared $ROLE node, no cluster bootstrap/join performed.. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Substitute before running:** `$ROLE`. Never assume an example target is the current cluster.
**Safety/rollback:** Check subcommand and flags; requires change review and appropriate access.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `echo operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 51. `kubeadm version -o short`

**Source line:** 844  |  **Tool/purpose:** kubeadm cluster lifecycle  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
kubeadm version -o short
```

**What it does:** Initialize, join, inspect or upgrade a self-managed Kubernetes control plane; cluster-wide effects are possible.

**Syntax:** kubeadm version -o short. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-o` — Output format for kubectl/oc, filename for some tools; command-specific.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Initialize, join, inspect or upgrade a self-managed Kubernetes control plane; cluster-wide effects are possible. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `kubeadm cluster lifecycle` vendor manual or installed `--help`; [online vendor reference](https://kubernetes.io/docs/reference/setup-tools/kubeadm/).

### 52. `containerd --version`

**Source line:** 858  |  **Tool/purpose:** containerd operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
containerd --version
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** containerd --version. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `--version` — Display tool version.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `containerd operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 53. `echo "NEXT: configure OS firewall/SELinux per approved CNI, network routes, cloud provider integration and approved…`

**Source line:** 872  |  **Tool/purpose:** echo operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
echo "NEXT: configure OS firewall/SELinux per approved CNI, network routes, cloud provider integration and approved HA API endpoint."
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** echo NEXT: configure OS firewall/SELinux per approved CNI, network routes, cloud provider integration and approved HA API endpoint.. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `echo operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 54. `echo "CONTROL PLANE: run kubeadm init with reviewed HA config on FIRST control-plane node; configure CNI; join rema…`

**Source line:** 886  |  **Tool/purpose:** echo operation  |  **Impact:** **CHANGE / POSSIBLY MUTATING**

**Exact command:**

```bash
echo "CONTROL PLANE: run kubeadm init with reviewed HA config on FIRST control-plane node; configure CNI; join remaining CPs using approved certificate-key/token."
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** echo CONTROL PLANE: run kubeadm init with reviewed HA config on FIRST control-plane node; configure CNI; join remaining CPs using approved certificate-key/token.. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Check subcommand and flags; requires change review and appropriate access. **Credential caution:** command may reference credentials or identity; do not upload raw outputs.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `echo operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 55. `echo "WORKER: run kubeadm join command obtained securely from cluster owner. NEVER commit join tokens to GitHub."`

**Source line:** 900  |  **Tool/purpose:** echo operation  |  **Impact:** **CHANGE / POSSIBLY MUTATING**

**Exact command:**

```bash
echo "WORKER: run kubeadm join command obtained securely from cluster owner. NEVER commit join tokens to GitHub."
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** echo WORKER: run kubeadm join command obtained securely from cluster owner. NEVER commit join tokens to GitHub.. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Check subcommand and flags; requires change review and appropriate access. **Credential caution:** command may reference credentials or identity; do not upload raw outputs.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `echo operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

