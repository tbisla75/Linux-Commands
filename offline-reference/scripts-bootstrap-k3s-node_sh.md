# Offline Bash provisioning script walkthrough: scripts/bootstrap-k3s-node.sh

**Study and review offline.** This script includes shell control flow, file writes, systemd and package manager actions; **default dry-run** protects against accidental execution. Run only on approved hosts after reviewing every statement and vendor/network constraints.

## 1. Line 3: set -Eeuo pipefail

```bash
set -Eeuo pipefail
```

**Purpose:** Shell statement in a guarded bootstrap script; inspect full surrounding conditionals and distro context.

**Syntax:** executable/statement `set` with the shown options and arguments. Shell variables, command substitutions, tests and redirection are evaluated by Bash. Confirm flags via local `set --help` when supported.

**Execution context:** This line is normally guarded by script argument parsing, distro detection and dry-run before apply; **do not copy it independently without those preconditions**.

**Impact:** Condition, diagnostic or internal Bash flow, typically not an independent infrastructure change.

## 2. Line 4: ROLE=""; VERSION=""; API=""; TOKEN_FILE=""; MODE="dry-run"; CLUSTER_INIT=false; TLS_SAN=""

```bash
ROLE=""; VERSION=""; API=""; TOKEN_FILE=""; MODE="dry-run"; CLUSTER_INIT=false; TLS_SAN=""
```

**Purpose:** Shell statement in a guarded bootstrap script; inspect full surrounding conditionals and distro context.

**Syntax:** executable/statement `ROLE="";` with the shown options and arguments. Shell variables, command substitutions, tests and redirection are evaluated by Bash. Confirm flags via local `ROLE=""; --help` when supported.

**Execution context:** This line is normally guarded by script argument parsing, distro detection and dry-run before apply; **do not copy it independently without those preconditions**.

**Impact:** Condition, diagnostic or internal Bash flow, typically not an independent infrastructure change.

## 3. Line 17: --role) ROLE="${2:?}";shift 2;;

```bash
--role) ROLE="${2:?}";shift 2;;
```

**Purpose:** Shell statement in a guarded bootstrap script; inspect full surrounding conditionals and distro context.

**Syntax:** executable/statement `--role)` with the shown options and arguments. Shell variables, command substitutions, tests and redirection are evaluated by Bash. Confirm flags via local `--role) --help` when supported.

**Execution context:** This line is normally guarded by script argument parsing, distro detection and dry-run before apply; **do not copy it independently without those preconditions**.

**Impact:** Condition, diagnostic or internal Bash flow, typically not an independent infrastructure change.

## 4. Line 18: --version) VERSION="${2:?}";shift 2;;

```bash
--version) VERSION="${2:?}";shift 2;;
```

**Purpose:** Shell statement in a guarded bootstrap script; inspect full surrounding conditionals and distro context.

**Syntax:** executable/statement `--version)` with the shown options and arguments. Shell variables, command substitutions, tests and redirection are evaluated by Bash. Confirm flags via local `--version) --help` when supported.

**Execution context:** This line is normally guarded by script argument parsing, distro detection and dry-run before apply; **do not copy it independently without those preconditions**.

**Impact:** Condition, diagnostic or internal Bash flow, typically not an independent infrastructure change.

## 5. Line 19: --server) API="${2:?}";shift 2;;

```bash
--server) API="${2:?}";shift 2;;
```

**Purpose:** Shell statement in a guarded bootstrap script; inspect full surrounding conditionals and distro context.

**Syntax:** executable/statement `--server)` with the shown options and arguments. Shell variables, command substitutions, tests and redirection are evaluated by Bash. Confirm flags via local `--server) --help` when supported.

**Execution context:** This line is normally guarded by script argument parsing, distro detection and dry-run before apply; **do not copy it independently without those preconditions**.

**Impact:** Condition, diagnostic or internal Bash flow, typically not an independent infrastructure change.

## 6. Line 20: --token-file) TOKEN_FILE="${2:?}";shift 2;;

```bash
--token-file) TOKEN_FILE="${2:?}";shift 2;;
```

**Purpose:** Shell statement in a guarded bootstrap script; inspect full surrounding conditionals and distro context.

**Syntax:** executable/statement `--token-file)` with the shown options and arguments. Shell variables, command substitutions, tests and redirection are evaluated by Bash. Confirm flags via local `--token-file) --help` when supported.

**Execution context:** This line is normally guarded by script argument parsing, distro detection and dry-run before apply; **do not copy it independently without those preconditions**.

**Impact:** Condition, diagnostic or internal Bash flow, typically not an independent infrastructure change.

## 7. Line 21: --tls-san) TLS_SAN="${2:?}";shift 2;;

```bash
--tls-san) TLS_SAN="${2:?}";shift 2;;
```

**Purpose:** Shell statement in a guarded bootstrap script; inspect full surrounding conditionals and distro context.

**Syntax:** executable/statement `--tls-san)` with the shown options and arguments. Shell variables, command substitutions, tests and redirection are evaluated by Bash. Confirm flags via local `--tls-san) --help` when supported.

**Execution context:** This line is normally guarded by script argument parsing, distro detection and dry-run before apply; **do not copy it independently without those preconditions**.

**Impact:** Condition, diagnostic or internal Bash flow, typically not an independent infrastructure change.

## 8. Line 22: --cluster-init) CLUSTER_INIT=true;shift;;

```bash
--cluster-init) CLUSTER_INIT=true;shift;;
```

**Purpose:** Shell statement in a guarded bootstrap script; inspect full surrounding conditionals and distro context.

**Syntax:** executable/statement `--cluster-init)` with the shown options and arguments. Shell variables, command substitutions, tests and redirection are evaluated by Bash. Confirm flags via local `--cluster-init) --help` when supported.

**Execution context:** This line is normally guarded by script argument parsing, distro detection and dry-run before apply; **do not copy it independently without those preconditions**.

**Impact:** Condition, diagnostic or internal Bash flow, typically not an independent infrastructure change.

## 9. Line 23: --apply) MODE=apply;shift;;

```bash
--apply) MODE=apply;shift;;
```

**Purpose:** Shell statement in a guarded bootstrap script; inspect full surrounding conditionals and distro context.

**Syntax:** executable/statement `--apply)` with the shown options and arguments. Shell variables, command substitutions, tests and redirection are evaluated by Bash. Confirm flags via local `--apply) --help` when supported.

**Execution context:** This line is normally guarded by script argument parsing, distro detection and dry-run before apply; **do not copy it independently without those preconditions**.

**Impact:** Condition, diagnostic or internal Bash flow, typically not an independent infrastructure change.

## 10. Line 24: --dry-run) MODE=dry-run;shift;;

```bash
--dry-run) MODE=dry-run;shift;;
```

**Purpose:** Shell statement in a guarded bootstrap script; inspect full surrounding conditionals and distro context.

**Syntax:** executable/statement `--dry-run)` with the shown options and arguments. Shell variables, command substitutions, tests and redirection are evaluated by Bash. Confirm flags via local `--dry-run) --help` when supported.

**Execution context:** This line is normally guarded by script argument parsing, distro detection and dry-run before apply; **do not copy it independently without those preconditions**.

**Impact:** Condition, diagnostic or internal Bash flow, typically not an independent infrastructure change.

## 11. Line 25: -h|--help) usage;exit 0;;

```bash
-h|--help) usage;exit 0;;
```

**Purpose:** Shell statement in a guarded bootstrap script; inspect full surrounding conditionals and distro context.

**Syntax:** executable/statement `-h|--help)` with the shown options and arguments. Shell variables, command substitutions, tests and redirection are evaluated by Bash. Confirm flags via local `-h|--help) --help` when supported.

**Execution context:** This line is normally guarded by script argument parsing, distro detection and dry-run before apply; **do not copy it independently without those preconditions**.

**Impact:** Condition, diagnostic or internal Bash flow, typically not an independent infrastructure change.

## 12. Line 26: *) echo "Unknown arg $1" >&2;exit 2;;

```bash
*) echo "Unknown arg $1" >&2;exit 2;;
```

**Purpose:** Shell statement in a guarded bootstrap script; inspect full surrounding conditionals and distro context.

**Syntax:** executable/statement `*)` with the shown options and arguments. Shell variables, command substitutions, tests and redirection are evaluated by Bash. Confirm flags via local `*) --help` when supported.

**Execution context:** This line is normally guarded by script argument parsing, distro detection and dry-run before apply; **do not copy it independently without those preconditions**.

**Impact:** Condition, diagnostic or internal Bash flow, typically not an independent infrastructure change.

## 13. Line 29: [[ "$ROLE" == server || "$ROLE" == agent ]] || { usage;exit 2; }

```bash
[[ "$ROLE" == server || "$ROLE" == agent ]] || { usage;exit 2; }
```

**Purpose:** Shell statement in a guarded bootstrap script; inspect full surrounding conditionals and distro context.

**Syntax:** executable/statement `[[` with the shown options and arguments. Shell variables, command substitutions, tests and redirection are evaluated by Bash. Confirm flags via local `[[ --help` when supported.

**Execution context:** This line is normally guarded by script argument parsing, distro detection and dry-run before apply; **do not copy it independently without those preconditions**.

**Impact:** Condition, diagnostic or internal Bash flow, typically not an independent infrastructure change.

## 14. Line 30: [[ "$VERSION" =~ ^v[0-9]+\.[0-9]+\.[0-9]+\+k3s[0-9]+$ ]] || { echo 'Pin released version vX.Y.Z+k3sN' >&2;exit

```bash
[[ "$VERSION" =~ ^v[0-9]+\.[0-9]+\.[0-9]+\+k3s[0-9]+$ ]] || { echo 'Pin released version vX.Y.Z+k3sN' >&2;exit 2; }
```

**Purpose:** Shell statement in a guarded bootstrap script; inspect full surrounding conditionals and distro context.

**Syntax:** executable/statement `[[` with the shown options and arguments. Shell variables, command substitutions, tests and redirection are evaluated by Bash. Confirm flags via local `[[ --help` when supported.

**Execution context:** This line is normally guarded by script argument parsing, distro detection and dry-run before apply; **do not copy it independently without those preconditions**.

**Impact:** Condition, diagnostic or internal Bash flow, typically not an independent infrastructure change.

## 15. Line 33: echo "role=$ROLE version=$VERSION mode=$MODE cluster_init=$CLUSTER_INIT server=$API"

```bash
echo "role=$ROLE version=$VERSION mode=$MODE cluster_init=$CLUSTER_INIT server=$API"
```

**Purpose:** Shell statement in a guarded bootstrap script; inspect full surrounding conditionals and distro context.

**Syntax:** executable/statement `echo` with the shown options and arguments. Shell variables, command substitutions, tests and redirection are evaluated by Bash. Confirm flags via local `echo --help` when supported.

**Execution context:** This line is normally guarded by script argument parsing, distro detection and dry-run before apply; **do not copy it independently without those preconditions**.

**Impact:** Condition, diagnostic or internal Bash flow, typically not an independent infrastructure change.

## 16. Line 35: [[ $(id -u) -eq 0 ]] || { echo 'Run as root' >&2;exit 1; }

```bash
[[ $(id -u) -eq 0 ]] || { echo 'Run as root' >&2;exit 1; }
```

**Purpose:** Shell statement in a guarded bootstrap script; inspect full surrounding conditionals and distro context.

**Syntax:** executable/statement `[[` with the shown options and arguments. Shell variables, command substitutions, tests and redirection are evaluated by Bash. Confirm flags via local `[[ --help` when supported.

**Execution context:** This line is normally guarded by script argument parsing, distro detection and dry-run before apply; **do not copy it independently without those preconditions**.

**Impact:** Condition, diagnostic or internal Bash flow, typically not an independent infrastructure change.

## 17. Line 36: [[ ! -e /etc/rancher/k3s/config.yaml && ! -e /var/lib/rancher/k3s/server/db ]] || { echo 'Existing K3s config/

```bash
[[ ! -e /etc/rancher/k3s/config.yaml && ! -e /var/lib/rancher/k3s/server/db ]] || { echo 'Existing K3s config/state detected; refusing to overwrite' >&2;exit 1; }
```

**Purpose:** Shell statement in a guarded bootstrap script; inspect full surrounding conditionals and distro context.

**Syntax:** executable/statement `[[` with the shown options and arguments. Shell variables, command substitutions, tests and redirection are evaluated by Bash. Confirm flags via local `[[ --help` when supported.

**Execution context:** This line is normally guarded by script argument parsing, distro detection and dry-run before apply; **do not copy it independently without those preconditions**.

**Impact:** Condition, diagnostic or internal Bash flow, typically not an independent infrastructure change.

## 18. Line 38: [[ -f "$TOKEN_FILE" ]] || { echo 'Missing token file' >&2;exit 1; }

```bash
[[ -f "$TOKEN_FILE" ]] || { echo 'Missing token file' >&2;exit 1; }
```

**Purpose:** Shell statement in a guarded bootstrap script; inspect full surrounding conditionals and distro context.

**Syntax:** executable/statement `[[` with the shown options and arguments. Shell variables, command substitutions, tests and redirection are evaluated by Bash. Confirm flags via local `[[ --help` when supported.

**Execution context:** This line is normally guarded by script argument parsing, distro detection and dry-run before apply; **do not copy it independently without those preconditions**.

**Impact:** Condition, diagnostic or internal Bash flow, typically not an independent infrastructure change.

## 19. Line 39: chmod 0600 "$TOKEN_FILE"

```bash
chmod 0600 "$TOKEN_FILE"
```

**Purpose:** Shell statement in a guarded bootstrap script; inspect full surrounding conditionals and distro context.

**Syntax:** executable/statement `chmod` with the shown options and arguments. Shell variables, command substitutions, tests and redirection are evaluated by Bash. Confirm flags via local `chmod --help` when supported.

**Execution context:** This line is normally guarded by script argument parsing, distro detection and dry-run before apply; **do not copy it independently without those preconditions**.

**Impact:** 🟠 May change host software, configuration or runtime state; needs approval and backup.

## 20. Line 41: command -v curl >/dev/null || { echo 'curl required' >&2;exit 1; }

```bash
command -v curl >/dev/null || { echo 'curl required' >&2;exit 1; }
```

**Purpose:** Shell statement in a guarded bootstrap script; inspect full surrounding conditionals and distro context.

**Syntax:** executable/statement `command` with the shown options and arguments. Shell variables, command substitutions, tests and redirection are evaluated by Bash. Confirm flags via local `command --help` when supported.

**Execution context:** This line is normally guarded by script argument parsing, distro detection and dry-run before apply; **do not copy it independently without those preconditions**.

**Impact:** 🟠 May change host software, configuration or runtime state; needs approval and backup.

## 21. Line 42: mkdir -p -m 700 /etc/rancher/k3s

```bash
mkdir -p -m 700 /etc/rancher/k3s
```

**Purpose:** Create configuration directory

**Syntax:** executable/statement `mkdir` with the shown options and arguments. Shell variables, command substitutions, tests and redirection are evaluated by Bash. Confirm flags via local `mkdir --help` when supported.

**Execution context:** This line is normally guarded by script argument parsing, distro detection and dry-run before apply; **do not copy it independently without those preconditions**.

**Impact:** 🟠 May change host software, configuration or runtime state; needs approval and backup.

## 22. Line 45: [[ -n "$TLS_SAN" ]] || { echo 'Initial HA server requires API VIP TLS SAN' >&2;exit 1; }

```bash
[[ -n "$TLS_SAN" ]] || { echo 'Initial HA server requires API VIP TLS SAN' >&2;exit 1; }
```

**Purpose:** Shell statement in a guarded bootstrap script; inspect full surrounding conditionals and distro context.

**Syntax:** executable/statement `[[` with the shown options and arguments. Shell variables, command substitutions, tests and redirection are evaluated by Bash. Confirm flags via local `[[ --help` when supported.

**Execution context:** This line is normally guarded by script argument parsing, distro detection and dry-run before apply; **do not copy it independently without those preconditions**.

**Impact:** Condition, diagnostic or internal Bash flow, typically not an independent infrastructure change.

## 23. Line 67: echo 'CHANGE: install script will execute vendor binary fetched over HTTPS from get.k3s.io.'

```bash
echo 'CHANGE: install script will execute vendor binary fetched over HTTPS from get.k3s.io.'
```

**Purpose:** Shell statement in a guarded bootstrap script; inspect full surrounding conditionals and distro context.

**Syntax:** executable/statement `echo` with the shown options and arguments. Shell variables, command substitutions, tests and redirection are evaluated by Bash. Confirm flags via local `echo --help` when supported.

**Execution context:** This line is normally guarded by script argument parsing, distro detection and dry-run before apply; **do not copy it independently without those preconditions**.

**Impact:** Condition, diagnostic or internal Bash flow, typically not an independent infrastructure change.

## 24. Line 69: curl -sfL https://get.k3s.io -o /root/k3s-install-reviewed.sh

```bash
curl -sfL https://get.k3s.io -o /root/k3s-install-reviewed.sh
```

**Purpose:** Fetch external installer/package metadata

**Syntax:** executable/statement `curl` with the shown options and arguments. Shell variables, command substitutions, tests and redirection are evaluated by Bash. Confirm flags via local `curl --help` when supported.

**Execution context:** This line is normally guarded by script argument parsing, distro detection and dry-run before apply; **do not copy it independently without those preconditions**.

**Impact:** 🟠 May change host software, configuration or runtime state; needs approval and backup.

## 25. Line 70: chmod 0700 /root/k3s-install-reviewed.sh

```bash
chmod 0700 /root/k3s-install-reviewed.sh
```

**Purpose:** Shell statement in a guarded bootstrap script; inspect full surrounding conditionals and distro context.

**Syntax:** executable/statement `chmod` with the shown options and arguments. Shell variables, command substitutions, tests and redirection are evaluated by Bash. Confirm flags via local `chmod --help` when supported.

**Execution context:** This line is normally guarded by script argument parsing, distro detection and dry-run before apply; **do not copy it independently without those preconditions**.

**Impact:** 🟠 May change host software, configuration or runtime state; needs approval and backup.

## 26. Line 71: INSTALL_K3S_VERSION="$VERSION" INSTALL_K3S_EXEC="$ROLE" sh /root/k3s-install-reviewed.sh

```bash
INSTALL_K3S_VERSION="$VERSION" INSTALL_K3S_EXEC="$ROLE" sh /root/k3s-install-reviewed.sh
```

**Purpose:** Shell statement in a guarded bootstrap script; inspect full surrounding conditionals and distro context.

**Syntax:** executable/statement `INSTALL_K3S_VERSION="$VERSION"` with the shown options and arguments. Shell variables, command substitutions, tests and redirection are evaluated by Bash. Confirm flags via local `INSTALL_K3S_VERSION="$VERSION" --help` when supported.

**Execution context:** This line is normally guarded by script argument parsing, distro detection and dry-run before apply; **do not copy it independently without those preconditions**.

**Impact:** Condition, diagnostic or internal Bash flow, typically not an independent infrastructure change.

## 27. Line 72: systemctl status "k3s$( [[ "$ROLE" == agent ]] && printf -- '-agent' )" --no-pager

```bash
systemctl status "k3s$( [[ "$ROLE" == agent ]] && printf -- '-agent' )" --no-pager
```

**Purpose:** Configure/start/restart systemd service

**Syntax:** executable/statement `systemctl` with the shown options and arguments. Shell variables, command substitutions, tests and redirection are evaluated by Bash. Confirm flags via local `systemctl --help` when supported.

**Execution context:** This line is normally guarded by script argument parsing, distro detection and dry-run before apply; **do not copy it independently without those preconditions**.

**Impact:** Condition, diagnostic or internal Bash flow, typically not an independent infrastructure change.

## 28. Line 73: echo 'NEXT: validate cluster API/etcd quorum and worker Ready; install GitOps, backups, policy, observability 

```bash
echo 'NEXT: validate cluster API/etcd quorum and worker Ready; install GitOps, backups, policy, observability and customer ingress.'
```

**Purpose:** Shell statement in a guarded bootstrap script; inspect full surrounding conditionals and distro context.

**Syntax:** executable/statement `echo` with the shown options and arguments. Shell variables, command substitutions, tests and redirection are evaluated by Bash. Confirm flags via local `echo --help` when supported.

**Execution context:** This line is normally guarded by script argument parsing, distro detection and dry-run before apply; **do not copy it independently without those preconditions**.

**Impact:** Condition, diagnostic or internal Bash flow, typically not an independent infrastructure change.

## 29. Line 74: echo 'Do not store server token, kubeconfig or cluster topology in public GitHub.'

```bash
echo 'Do not store server token, kubeconfig or cluster topology in public GitHub.'
```

**Purpose:** Shell statement in a guarded bootstrap script; inspect full surrounding conditionals and distro context.

**Syntax:** executable/statement `echo` with the shown options and arguments. Shell variables, command substitutions, tests and redirection are evaluated by Bash. Confirm flags via local `echo --help` when supported.

**Execution context:** This line is normally guarded by script argument parsing, distro detection and dry-run before apply; **do not copy it independently without those preconditions**.

**Impact:** Condition, diagnostic or internal Bash flow, typically not an independent infrastructure change.

