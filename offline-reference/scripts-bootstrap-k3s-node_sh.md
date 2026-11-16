# Offline command / configuration reference: `scripts/bootstrap-k3s-node.sh`

Generated from repository source by `tools/build_offline_reference.py`. **21 items**. This copy works offline. No commands were executed.

⚠️ **Version-aware reference, not a substitute for vendor docs.** Every individual command is preserved with purpose, flags, placeholders, expected output and risk. Ambiguous flags are marked as command-specific. Always verify flags against your installed CLI.

**Original file:** [`scripts/bootstrap-k3s-node.sh`](../scripts/bootstrap-k3s-node.sh)

### 1. `--role) ROLE="${2:?}";shift 2;;`

**Source line:** 17  |  **Tool/purpose:** --role) operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
--role) ROLE="${2:?}";shift 2;;
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** --role) ROLE=${2:?};shift 2;;. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `--role)` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `--role) operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 2. `--version) VERSION="${2:?}";shift 2;;`

**Source line:** 18  |  **Tool/purpose:** --version) operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
--version) VERSION="${2:?}";shift 2;;
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** --version) VERSION=${2:?};shift 2;;. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `--version)` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `--version) operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 3. `--server) API="${2:?}";shift 2;;`

**Source line:** 19  |  **Tool/purpose:** --server) operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
--server) API="${2:?}";shift 2;;
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** --server) API=${2:?};shift 2;;. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `--server)` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `--server) operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 4. `--token-file) TOKEN_FILE="${2:?}";shift 2;;`

**Source line:** 20  |  **Tool/purpose:** --token-file) operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
--token-file) TOKEN_FILE="${2:?}";shift 2;;
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** --token-file) TOKEN_FILE=${2:?};shift 2;;. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `--token-file)` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information. **Credential caution:** command may reference credentials or identity; do not upload raw outputs.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `--token-file) operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 5. `--tls-san) TLS_SAN="${2:?}";shift 2;;`

**Source line:** 21  |  **Tool/purpose:** --tls-san) operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
--tls-san) TLS_SAN="${2:?}";shift 2;;
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** --tls-san) TLS_SAN=${2:?};shift 2;;. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `--tls-san)` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `--tls-san) operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 6. `--cluster-init) CLUSTER_INIT=true;shift;;`

**Source line:** 22  |  **Tool/purpose:** --cluster-init) operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
--cluster-init) CLUSTER_INIT=true;shift;;
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** --cluster-init) CLUSTER_INIT=true;shift;;. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `--cluster-init)` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `--cluster-init) operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 7. `--apply) MODE=apply;shift;;`

**Source line:** 23  |  **Tool/purpose:** --apply) operation  |  **Impact:** **CHANGE / POSSIBLY MUTATING**

**Exact command:**

```bash
--apply) MODE=apply;shift;;
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** --apply) MODE=apply;shift;;. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `--apply)` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Safety/rollback:** Check subcommand and flags; requires change review and appropriate access.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `--apply) operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 8. `--dry-run) MODE=dry-run;shift;;`

**Source line:** 24  |  **Tool/purpose:** --dry-run) operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
--dry-run) MODE=dry-run;shift;;
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** --dry-run) MODE=dry-run;shift;;. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `--dry-run)` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `--dry-run) operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 9. `-h\|--help) usage;exit 0;;`

**Source line:** 25  |  **Tool/purpose:** -h|--help) operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
-h|--help) usage;exit 0;;
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** -h|--help) usage;exit 0;;. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-h\|--help)` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Shell syntax:** `|` pipes stdout into the next process; check pipeline exit codes (pipefail where appropriate).
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `-h|--help) operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 10. `*) echo "Unknown arg $1" >&2;exit 2;;`

**Source line:** 26  |  **Tool/purpose:** *) operation  |  **Impact:** **LOCAL FILE WRITE / POSSIBLY MUTATING**

**Exact command:**

```bash
*) echo "Unknown arg $1" >&2;exit 2;;
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** *) echo Unknown arg $1 >&2;exit 2;;. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Shell syntax:** `>` redirects/truncates output; confirm destination and permissions.
**Safety/rollback:** Shell redirection may create/truncate files; verify output destination.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `*) operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 11. `echo "role=$ROLE version=$VERSION mode=$MODE cluster_init=$CLUSTER_INIT server=$API"`

**Source line:** 33  |  **Tool/purpose:** echo operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
echo "role=$ROLE version=$VERSION mode=$MODE cluster_init=$CLUSTER_INIT server=$API"
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** echo role=$ROLE version=$VERSION mode=$MODE cluster_init=$CLUSTER_INIT server=$API. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Substitute before running:** `$ROLE`, `$VERSION`, `$MODE`, `$CLUSTER_INIT`, `$API`. Never assume an example target is the current cluster.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `echo operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 12. `chmod 0600 "$TOKEN_FILE"`

**Source line:** 39  |  **Tool/purpose:** chmod operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
chmod 0600 "$TOKEN_FILE"
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** chmod 0600 $TOKEN_FILE. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Substitute before running:** `$TOKEN_FILE`. Never assume an example target is the current cluster.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information. **Credential caution:** command may reference credentials or identity; do not upload raw outputs.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `chmod operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 13. `command -v curl >/dev/null \|\| { echo 'curl required' >&2;exit 1; }`

**Source line:** 41  |  **Tool/purpose:** command operation  |  **Impact:** **LOCAL FILE WRITE / POSSIBLY MUTATING**

**Exact command:**

```bash
command -v curl >/dev/null || { echo 'curl required' >&2;exit 1; }
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** command -v curl >/dev/null ||. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-v` — Verbose output or version depending on command.
**Shell syntax:** `|` pipes stdout into the next process; check pipeline exit codes (pipefail where appropriate). `>` redirects/truncates output; confirm destination and permissions.
**Safety/rollback:** Shell redirection may create/truncate files; verify output destination.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `command operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 14. `mkdir -p -m 700 /etc/rancher/k3s`

**Source line:** 42  |  **Tool/purpose:** mkdir operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
mkdir -p -m 700 /etc/rancher/k3s
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** mkdir -p -m 700 /etc/rancher/k3s. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-p` — Priority filter in journalctl; other meanings in other CLIs.
**Option:** `-m` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `mkdir operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 15. `echo 'CHANGE: install script will execute vendor binary fetched over HTTPS from get.k3s.io.'`

**Source line:** 67  |  **Tool/purpose:** echo operation  |  **Impact:** **CHANGE / POSSIBLY MUTATING**

**Exact command:**

```bash
echo 'CHANGE: install script will execute vendor binary fetched over HTTPS from get.k3s.io.'
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** echo CHANGE: install script will execute vendor binary fetched over HTTPS from get.k3s.io.. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Check subcommand and flags; requires change review and appropriate access.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `echo operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 16. `curl -sfL https://get.k3s.io -o /root/k3s-install-reviewed.sh`

**Source line:** 69  |  **Tool/purpose:** HTTP request/diagnostic  |  **Impact:** **CHANGE / POSSIBLY MUTATING**

**Exact command:**

```bash
curl -sfL https://get.k3s.io -o /root/k3s-install-reviewed.sh
```

**What it does:** Request or transfer network content, with protocol and TLS behavior governed by flags.

**Syntax:** curl -sfL https://get.k3s.io -o /root/k3s-install-reviewed.sh. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-sfL` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Option:** `-o` — Output format for kubectl/oc, filename for some tools; command-specific.
**Safety/rollback:** Check subcommand and flags; requires change review and appropriate access.
**Expected result:** Request or transfer network content, with protocol and TLS behavior governed by flags. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `HTTP request/diagnostic` vendor manual or installed `--help`; [online vendor reference](https://curl.se/docs/manpage.html).

### 17. `chmod 0700 /root/k3s-install-reviewed.sh`

**Source line:** 70  |  **Tool/purpose:** chmod operation  |  **Impact:** **CHANGE / POSSIBLY MUTATING**

**Exact command:**

```bash
chmod 0700 /root/k3s-install-reviewed.sh
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** chmod 0700 /root/k3s-install-reviewed.sh. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Check subcommand and flags; requires change review and appropriate access.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `chmod operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 18. `INSTALL_K3S_VERSION="$VERSION" INSTALL_K3S_EXEC="$ROLE" sh /root/k3s-install-reviewed.sh`

**Source line:** 71  |  **Tool/purpose:** INSTALL_K3S_VERSION=$VERSION operation  |  **Impact:** **CHANGE / POSSIBLY MUTATING**

**Exact command:**

```bash
INSTALL_K3S_VERSION="$VERSION" INSTALL_K3S_EXEC="$ROLE" sh /root/k3s-install-reviewed.sh
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** INSTALL_K3S_VERSION=$VERSION INSTALL_K3S_EXEC=$ROLE sh /root/k3s-install-reviewed.sh. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Substitute before running:** `$VERSION`, `$ROLE`. Never assume an example target is the current cluster.
**Safety/rollback:** Check subcommand and flags; requires change review and appropriate access.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `INSTALL_K3S_VERSION=$VERSION operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 19. `systemctl status "k3s$( [[ "$ROLE" == agent ]] && printf -- '-agent' )" --no-pager`

**Source line:** 72  |  **Tool/purpose:** systemd unit manager  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
systemctl status "k3s$( [[ "$ROLE" == agent ]] && printf -- '-agent' )" --no-pager
```

**What it does:** Inspect service state, recent logs and metadata.

**Syntax:** systemctl status k3s$( [[ $ROLE == agent ]] && printf -- '-agent' ) --no-pager. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `--no-pager` — Print output directly rather than opening an interactive pager.
**Substitute before running:** `$ROLE`. Never assume an example target is the current cluster.
**Shell syntax:** `&&` runs next action only if preceding command succeeds. `$(...)` executes a subshell for value substitution.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Inspect service state, recent logs and metadata. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `systemd unit manager` vendor manual or installed `--help`; [online vendor reference](https://www.freedesktop.org/software/systemd/man/latest/systemctl.html).

### 20. `echo 'NEXT: validate cluster API/etcd quorum and worker Ready; install GitOps, backups, policy, observability and c…`

**Source line:** 73  |  **Tool/purpose:** echo operation  |  **Impact:** **CHANGE / POSSIBLY MUTATING**

**Exact command:**

```bash
echo 'NEXT: validate cluster API/etcd quorum and worker Ready; install GitOps, backups, policy, observability and customer ingress.'
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** echo NEXT: validate cluster API/etcd quorum and worker Ready; install GitOps, backups, policy, observability and customer ingress.. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Check subcommand and flags; requires change review and appropriate access.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `echo operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 21. `echo 'Do not store server token, kubeconfig or cluster topology in public GitHub.'`

**Source line:** 74  |  **Tool/purpose:** echo operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
echo 'Do not store server token, kubeconfig or cluster topology in public GitHub.'
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** echo Do not store server token, kubeconfig or cluster topology in public GitHub.. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information. **Credential caution:** command may reference credentials or identity; do not upload raw outputs.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `echo operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

