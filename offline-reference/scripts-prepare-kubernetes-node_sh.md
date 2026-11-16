# Offline command / configuration reference: `scripts/prepare-kubernetes-node.sh`

Generated from repository source by `tools/build_offline_reference.py`. **50 items**. This copy works offline. No commands were executed.

⚠️ **Version-aware reference, not a substitute for vendor docs.** Every individual command is preserved with purpose, flags, placeholders, expected output and risk. Ambiguous flags are marked as command-specific. Always verify flags against your installed CLI.

**Original file:** [`scripts/prepare-kubernetes-node.sh`](../scripts/prepare-kubernetes-node.sh)

### 1. `--role) ROLE="${2:?missing role}"; shift 2 ;;`

**Source line:** 18  |  **Tool/purpose:** --role) operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

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

### 2. `--k8s-minor) MINOR="${2:?missing minor}"; shift 2 ;;`

**Source line:** 19  |  **Tool/purpose:** --k8s-minor) operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

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

### 3. `--apply) MODE="apply"; shift ;;`

**Source line:** 20  |  **Tool/purpose:** --apply) operation  |  **Impact:** **CHANGE / POSSIBLY MUTATING**

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

### 4. `--dry-run) MODE="dry-run"; shift ;;`

**Source line:** 21  |  **Tool/purpose:** --dry-run) operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

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

### 5. `--disable-swap) SWAP_MODE="disable"; shift ;;`

**Source line:** 22  |  **Tool/purpose:** --disable-swap) operation  |  **Impact:** **CHANGE / POSSIBLY MUTATING**

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

### 6. `-h\|--help) usage; exit 0 ;;`

**Source line:** 23  |  **Tool/purpose:** -h|--help) operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

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

### 7. `*) echo "Unknown argument: $1" >&2; usage; exit 2 ;;`

**Source line:** 24  |  **Tool/purpose:** *) operation  |  **Impact:** **LOCAL FILE WRITE / POSSIBLY MUTATING**

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

### 8. `source /etc/os-release`

**Source line:** 31  |  **Tool/purpose:** source operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
source /etc/os-release
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** source /etc/os-release. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `source operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 9. `FAMILY=""`

**Source line:** 32  |  **Tool/purpose:** FAMILY= operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
FAMILY=""
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** FAMILY=. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `FAMILY= operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 10. `ubuntu\|debian) FAMILY="deb" ;;`

**Source line:** 34  |  **Tool/purpose:** ubuntu|debian) operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

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

### 11. `rhel\|rocky\|almalinux\|centos) FAMILY="rpm" ;;`

**Source line:** 35  |  **Tool/purpose:** rhel|rocky|almalinux|centos) operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

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

### 12. `echo "Detected: $PRETTY_NAME / family=$FAMILY / role=$ROLE / Kubernetes=$MINOR / mode=$MODE"`

**Source line:** 44  |  **Tool/purpose:** echo operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

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

### 13. `echo "WARNING: prerequisites only. Check approved CNI/CSI, cloud CCM, HA LBs, IP ranges, OS support and change appr…`

**Source line:** 45  |  **Tool/purpose:** echo operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
echo "WARNING: prerequisites only. Check approved CNI/CSI, cloud CCM, HA LBs, IP ranges, OS support and change approval."
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** echo WARNING: prerequisites only. Check approved CNI/CSI, cloud CCM, HA LBs, IP ranges, OS support and change approval.. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `echo operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 14. `echo "Existing kubeadm credentials detected. Refusing to modify a configured node." >&2; exit 1`

**Source line:** 47  |  **Tool/purpose:** echo operation  |  **Impact:** **LOCAL FILE WRITE / POSSIBLY MUTATING**

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

### 15. `exit 0`

**Source line:** 56  |  **Tool/purpose:** exit operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
exit 0
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** exit 0. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `exit operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 16. `export DEBIAN_FRONTEND=noninteractive`

**Source line:** 59  |  **Tool/purpose:** export operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
export DEBIAN_FRONTEND=noninteractive
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** export DEBIAN_FRONTEND=noninteractive. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `export operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 17. `apt-get update`

**Source line:** 60  |  **Tool/purpose:** Debian/Ubuntu package manager  |  **Impact:** **CHANGE / POSSIBLY MUTATING**

**Exact command:**

```bash
apt-get update
```

**What it does:** Update package indexes or install/upgrade/remove packages depending on subcommand.

**Syntax:** apt-get update. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Check subcommand and flags; requires change review and appropriate access.
**Expected result:** Update package indexes or install/upgrade/remove packages depending on subcommand. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `Debian/Ubuntu package manager` vendor manual or installed `--help`; [online vendor reference](https://manpages.debian.org/).

### 18. `apt-get install -y ca-certificates curl gpg apt-transport-https conntrack socat iproute2`

**Source line:** 61  |  **Tool/purpose:** Debian/Ubuntu package manager  |  **Impact:** **CHANGE / POSSIBLY MUTATING**

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

### 19. `apt-get install -y containerd`

**Source line:** 62  |  **Tool/purpose:** Debian/Ubuntu package manager  |  **Impact:** **CHANGE / POSSIBLY MUTATING**

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

### 20. `command -v dnf >/dev/null \|\| { echo 'RHEL family requires dnf and working repositories' >&2; exit 1; }`

**Source line:** 64  |  **Tool/purpose:** command operation  |  **Impact:** **LOCAL FILE WRITE / POSSIBLY MUTATING**

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

### 21. `dnf install -y ca-certificates curl conntrack-tools socat iproute`

**Source line:** 65  |  **Tool/purpose:** RHEL-family package manager  |  **Impact:** **CHANGE / POSSIBLY MUTATING**

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

### 22. `dnf install -y containerd \|\| { echo 'containerd package unavailable: configure an approved vendor repository and re…`

**Source line:** 66  |  **Tool/purpose:** RHEL-family package manager  |  **Impact:** **CHANGE / POSSIBLY MUTATING**

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

### 23. `modprobe overlay`

**Source line:** 72  |  **Tool/purpose:** modprobe operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
modprobe overlay
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** modprobe overlay. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `modprobe operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 24. `modprobe br_netfilter`

**Source line:** 73  |  **Tool/purpose:** modprobe operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
modprobe br_netfilter
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** modprobe br_netfilter. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `modprobe operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 25. `sysctl --system`

**Source line:** 79  |  **Tool/purpose:** sysctl operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

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

### 26. `mkdir -p /etc/containerd`

**Source line:** 80  |  **Tool/purpose:** mkdir operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

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

### 27. `cp -a /etc/containerd/config.toml "/etc/containerd/config.toml.pre-k8s.$(date +%Y%m%d%H%M%S)"`

**Source line:** 82  |  **Tool/purpose:** cp operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

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

### 28. `containerd config default > /etc/containerd/config.toml`

**Source line:** 85  |  **Tool/purpose:** containerd operation  |  **Impact:** **LOCAL FILE WRITE / POSSIBLY MUTATING**

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

### 29. `sed -i 's/SystemdCgroup = false/SystemdCgroup = true/g' /etc/containerd/config.toml`

**Source line:** 87  |  **Tool/purpose:** sed operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

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

### 30. `grep -q 'SystemdCgroup = true' /etc/containerd/config.toml \|\| { echo 'Failed to enable systemd cgroups' >&2; exit 1…`

**Source line:** 88  |  **Tool/purpose:** grep operation  |  **Impact:** **CHANGE / POSSIBLY MUTATING**

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

### 31. `systemctl enable --now containerd`

**Source line:** 89  |  **Tool/purpose:** systemd unit manager  |  **Impact:** **CHANGE / POSSIBLY MUTATING**

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

### 32. `systemctl restart containerd`

**Source line:** 90  |  **Tool/purpose:** systemd unit manager  |  **Impact:** **CHANGE / POSSIBLY MUTATING**

**Exact command:**

```bash
systemctl restart containerd
```

**What it does:** Restart a unit, potentially interrupting production traffic.

**Syntax:** systemctl restart containerd. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Check subcommand and flags; requires change review and appropriate access.
**Expected result:** Restart a unit, potentially interrupting production traffic. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `systemd unit manager` vendor manual or installed `--help`; [online vendor reference](https://www.freedesktop.org/software/systemd/man/latest/systemctl.html).

### 33. `swapoff -a`

**Source line:** 92  |  **Tool/purpose:** swapoff operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

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

### 34. `cp -a /etc/fstab "/etc/fstab.pre-k8s.$(date +%Y%m%d%H%M%S)"`

**Source line:** 93  |  **Tool/purpose:** cp operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

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

### 35. `sed -i -E '/^[[:space:]]*[^#].*[[:space:]]swap[[:space:]]/ s/^/# disabled-for-kubeadm /' /etc/fstab`

**Source line:** 94  |  **Tool/purpose:** sed operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

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

### 36. `mkdir -p -m 0755 /etc/apt/keyrings`

**Source line:** 97  |  **Tool/purpose:** mkdir operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

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

### 37. `curl -fsSL "https://pkgs.k8s.io/core:/stable:/$MINOR/deb/Release.key" \| gpg --dearmor --yes -o /etc/apt/keyrings/ku…`

**Source line:** 98  |  **Tool/purpose:** HTTP request/diagnostic  |  **Impact:** **DIAGNOSTIC / REVIEW**

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

### 38. `chmod 0644 /etc/apt/keyrings/kubernetes-apt-keyring.gpg`

**Source line:** 99  |  **Tool/purpose:** chmod operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
chmod 0644 /etc/apt/keyrings/kubernetes-apt-keyring.gpg
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** chmod 0644 /etc/apt/keyrings/kubernetes-apt-keyring.gpg. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information. **Credential caution:** command may reference credentials or identity; do not upload raw outputs.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `chmod operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 39. `printf 'deb [signed-by=/etc/apt/keyrings/kubernetes-apt-keyring.gpg] https://pkgs.k8s.io/core:/stable:/%s/deb/ /\n'…`

**Source line:** 100  |  **Tool/purpose:** printf operation  |  **Impact:** **LOCAL FILE WRITE / POSSIBLY MUTATING**

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

### 40. `apt-get update`

**Source line:** 101  |  **Tool/purpose:** Debian/Ubuntu package manager  |  **Impact:** **CHANGE / POSSIBLY MUTATING**

**Exact command:**

```bash
apt-get update
```

**What it does:** Update package indexes or install/upgrade/remove packages depending on subcommand.

**Syntax:** apt-get update. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Check subcommand and flags; requires change review and appropriate access.
**Expected result:** Update package indexes or install/upgrade/remove packages depending on subcommand. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `Debian/Ubuntu package manager` vendor manual or installed `--help`; [online vendor reference](https://manpages.debian.org/).

### 41. `apt-get install -y kubelet kubeadm kubectl`

**Source line:** 102  |  **Tool/purpose:** Debian/Ubuntu package manager  |  **Impact:** **CHANGE / POSSIBLY MUTATING**

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

### 42. `apt-mark hold kubelet kubeadm kubectl`

**Source line:** 103  |  **Tool/purpose:** apt-mark operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
apt-mark hold kubelet kubeadm kubectl
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** apt-mark hold kubelet kubeadm kubectl. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `apt-mark operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 43. `dnf install -y kubelet kubeadm kubectl --disableexcludes=kubernetes \|\| dnf install -y kubelet kubeadm kubectl --set…`

**Source line:** 114  |  **Tool/purpose:** RHEL-family package manager  |  **Impact:** **CHANGE / POSSIBLY MUTATING**

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

### 44. `systemctl enable kubelet`

**Source line:** 116  |  **Tool/purpose:** systemd unit manager  |  **Impact:** **CHANGE / POSSIBLY MUTATING**

**Exact command:**

```bash
systemctl enable kubelet
```

**What it does:** Inspect or modify systemd-managed services and units.

**Syntax:** systemctl enable kubelet. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Check subcommand and flags; requires change review and appropriate access.
**Expected result:** Inspect or modify systemd-managed services and units. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `systemd unit manager` vendor manual or installed `--help`; [online vendor reference](https://www.freedesktop.org/software/systemd/man/latest/systemctl.html).

### 45. `echo "Prepared $ROLE node, no cluster bootstrap/join performed."`

**Source line:** 117  |  **Tool/purpose:** echo operation  |  **Impact:** **CHANGE / POSSIBLY MUTATING**

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

### 46. `kubeadm version -o short`

**Source line:** 118  |  **Tool/purpose:** kubeadm cluster lifecycle  |  **Impact:** **DIAGNOSTIC / REVIEW**

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

### 47. `containerd --version`

**Source line:** 119  |  **Tool/purpose:** containerd operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

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

### 48. `echo "NEXT: configure OS firewall/SELinux per approved CNI, network routes, cloud provider integration and approved…`

**Source line:** 120  |  **Tool/purpose:** echo operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
echo "NEXT: configure OS firewall/SELinux per approved CNI, network routes, cloud provider integration and approved HA API endpoint."
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** echo NEXT: configure OS firewall/SELinux per approved CNI, network routes, cloud provider integration and approved HA API endpoint.. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `echo operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 49. `echo "CONTROL PLANE: run kubeadm init with reviewed HA config on FIRST control-plane node; configure CNI; join rema…`

**Source line:** 121  |  **Tool/purpose:** echo operation  |  **Impact:** **CHANGE / POSSIBLY MUTATING**

**Exact command:**

```bash
echo "CONTROL PLANE: run kubeadm init with reviewed HA config on FIRST control-plane node; configure CNI; join remaining CPs using approved certificate-key/token."
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** echo CONTROL PLANE: run kubeadm init with reviewed HA config on FIRST control-plane node; configure CNI; join remaining CPs using approved certificate-key/token.. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Check subcommand and flags; requires change review and appropriate access. **Credential caution:** command may reference credentials or identity; do not upload raw outputs.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `echo operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 50. `echo "WORKER: run kubeadm join command obtained securely from cluster owner. NEVER commit join tokens to GitHub."`

**Source line:** 122  |  **Tool/purpose:** echo operation  |  **Impact:** **CHANGE / POSSIBLY MUTATING**

**Exact command:**

```bash
echo "WORKER: run kubeadm join command obtained securely from cluster owner. NEVER commit join tokens to GitHub."
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** echo WORKER: run kubeadm join command obtained securely from cluster owner. NEVER commit join tokens to GitHub.. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Check subcommand and flags; requires change review and appropriate access. **Credential caution:** command may reference credentials or identity; do not upload raw outputs.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `echo operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

