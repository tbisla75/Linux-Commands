# Linux node bootstrap script — easy offline walkthrough: scripts/bootstrap-k3s-node.sh

This is an explanation of significant executable statements **inside the script**, not a replacement install command. The script parses and validates arguments and defaults to `--dry-run`; each line can behave differently after `--apply`. Read the entire source before executing it.

## 1. Script line 3

```bash
set -Eeuo pipefail
```

**In simple terms:** This is part of the script's argument checks, variable setup or control flow. The surrounding conditions determine when it runs.

**How the syntax works:** `set` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** Typically checks prerequisites or sets temporary values; read the script's surrounding branch before using.

## 2. Script line 4

```bash
ROLE=""; VERSION=""; API=""; TOKEN_FILE=""; MODE="dry-run"; CLUSTER_INIT=false; TLS_SAN=""
```

**In simple terms:** This is part of the script's argument checks, variable setup or control flow. The surrounding conditions determine when it runs.

**How the syntax works:** `ROLE="";` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** Typically checks prerequisites or sets temporary values; read the script's surrounding branch before using.

## 3. Script line 5

```bash
usage(){ cat <<'HELP'
```

**In simple terms:** This is part of the script's argument checks, variable setup or control flow. The surrounding conditions determine when it runs.

**How the syntax works:** `usage(){` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** Typically checks prerequisites or sets temporary values; read the script's surrounding branch before using.

## 4. Script line 6

```bash
Usage:
```

**In simple terms:** This is part of the script's argument checks, variable setup or control flow. The surrounding conditions determine when it runs.

**How the syntax works:** `Usage:` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** Typically checks prerequisites or sets temporary values; read the script's surrounding branch before using.

## 5. Script line 7

```bash
sudo bash bootstrap-k3s-node.sh --role server --version vX.Y.Z+k3s1 --cluster-init --tls-san API_VIP --apply
```

**In simple terms:** This is part of the script's argument checks, variable setup or control flow. The surrounding conditions determine when it runs.

**How the syntax works:** `bash` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** Typically checks prerequisites or sets temporary values; read the script's surrounding branch before using.

## 6. Script line 8

```bash
sudo bash bootstrap-k3s-node.sh --role server --version vX.Y.Z+k3s1 --server https://API_VIP:6443 --token-file /root/k3s-token --tls-san API_VIP --apply
```

**In simple terms:** This is part of the script's argument checks, variable setup or control flow. The surrounding conditions determine when it runs.

**How the syntax works:** `bash` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** Typically checks prerequisites or sets temporary values; read the script's surrounding branch before using.

## 7. Script line 9

```bash
sudo bash bootstrap-k3s-node.sh --role agent  --version vX.Y.Z+k3s1 --server https://API_VIP:6443 --token-file /root/k3s-token --apply
```

**In simple terms:** This is part of the script's argument checks, variable setup or control flow. The surrounding conditions determine when it runs.

**How the syntax works:** `bash` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** Typically checks prerequisites or sets temporary values; read the script's surrounding branch before using.

## 8. Script line 11

```bash
Default --dry-run; requires exact pinned K3s release and approved token file for join.
```

**In simple terms:** This is part of the script's argument checks, variable setup or control flow. The surrounding conditions determine when it runs.

**How the syntax works:** `Default` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** Typically checks prerequisites or sets temporary values; read the script's surrounding branch before using.

## 9. Script line 12

```bash
NOT for OpenShift RHCOS control planes. Review version, CNI, SELinux/firewall and port conflicts.
```

**In simple terms:** This is part of the script's argument checks, variable setup or control flow. The surrounding conditions determine when it runs.

**How the syntax works:** `NOT` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** Typically checks prerequisites or sets temporary values; read the script's surrounding branch before using.

## 10. Script line 13

```bash
HELP
```

**In simple terms:** This is part of the script's argument checks, variable setup or control flow. The surrounding conditions determine when it runs.

**How the syntax works:** `HELP` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** Typically checks prerequisites or sets temporary values; read the script's surrounding branch before using.

## 11. Script line 17

```bash
--role) ROLE="${2:?}";shift 2;;
```

**In simple terms:** This is part of the script's argument checks, variable setup or control flow. The surrounding conditions determine when it runs.

**How the syntax works:** `--role)` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** Typically checks prerequisites or sets temporary values; read the script's surrounding branch before using.

## 12. Script line 18

```bash
--version) VERSION="${2:?}";shift 2;;
```

**In simple terms:** This is part of the script's argument checks, variable setup or control flow. The surrounding conditions determine when it runs.

**How the syntax works:** `--version)` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** Typically checks prerequisites or sets temporary values; read the script's surrounding branch before using.

## 13. Script line 19

```bash
--server) API="${2:?}";shift 2;;
```

**In simple terms:** This is part of the script's argument checks, variable setup or control flow. The surrounding conditions determine when it runs.

**How the syntax works:** `--server)` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** Typically checks prerequisites or sets temporary values; read the script's surrounding branch before using.

## 14. Script line 20

```bash
--token-file) TOKEN_FILE="${2:?}";shift 2;;
```

**In simple terms:** This is part of the script's argument checks, variable setup or control flow. The surrounding conditions determine when it runs.

**How the syntax works:** `--token-file)` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** Typically checks prerequisites or sets temporary values; read the script's surrounding branch before using.

## 15. Script line 21

```bash
--tls-san) TLS_SAN="${2:?}";shift 2;;
```

**In simple terms:** This is part of the script's argument checks, variable setup or control flow. The surrounding conditions determine when it runs.

**How the syntax works:** `--tls-san)` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** Typically checks prerequisites or sets temporary values; read the script's surrounding branch before using.

## 16. Script line 22

```bash
--cluster-init) CLUSTER_INIT=true;shift;;
```

**In simple terms:** This is part of the script's argument checks, variable setup or control flow. The surrounding conditions determine when it runs.

**How the syntax works:** `--cluster-init)` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** Typically checks prerequisites or sets temporary values; read the script's surrounding branch before using.

## 17. Script line 23

```bash
--apply) MODE=apply;shift;;
```

**In simple terms:** This is part of the script's argument checks, variable setup or control flow. The surrounding conditions determine when it runs.

**How the syntax works:** `--apply)` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** Typically checks prerequisites or sets temporary values; read the script's surrounding branch before using.

## 18. Script line 24

```bash
--dry-run) MODE=dry-run;shift;;
```

**In simple terms:** This is part of the script's argument checks, variable setup or control flow. The surrounding conditions determine when it runs.

**How the syntax works:** `--dry-run)` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** Typically checks prerequisites or sets temporary values; read the script's surrounding branch before using.

## 19. Script line 25

```bash
-h|--help) usage;exit 0;;
```

**In simple terms:** This is part of the script's argument checks, variable setup or control flow. The surrounding conditions determine when it runs.

**How the syntax works:** `-h|--help)` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** Typically checks prerequisites or sets temporary values; read the script's surrounding branch before using.

## 20. Script line 26

```bash
*) echo "Unknown arg $1" >&2;exit 2;;
```

**In simple terms:** This is part of the script's argument checks, variable setup or control flow. The surrounding conditions determine when it runs.

**How the syntax works:** `*)` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** Typically checks prerequisites or sets temporary values; read the script's surrounding branch before using.

## 21. Script line 29

```bash
[[ "$ROLE" == server || "$ROLE" == agent ]] || { usage;exit 2; }
```

**In simple terms:** This is part of the script's argument checks, variable setup or control flow. The surrounding conditions determine when it runs.

**How the syntax works:** `[[` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** Typically checks prerequisites or sets temporary values; read the script's surrounding branch before using.

## 22. Script line 30

```bash
[[ "$VERSION" =~ ^v[0-9]+\.[0-9]+\.[0-9]+\+k3s[0-9]+$ ]] || { echo 'Pin released version vX.Y.Z+k3sN' >&2;exit 2; }
```

**In simple terms:** This is part of the script's argument checks, variable setup or control flow. The surrounding conditions determine when it runs.

**How the syntax works:** `[[` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** Typically checks prerequisites or sets temporary values; read the script's surrounding branch before using.

## 23. Script line 33

```bash
echo "role=$ROLE version=$VERSION mode=$MODE cluster_init=$CLUSTER_INIT server=$API"
```

**In simple terms:** Prints status text for the operator. May include variables (never secrets).

**How the syntax works:** `echo` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** Typically checks prerequisites or sets temporary values; read the script's surrounding branch before using.

## 24. Script line 35

```bash
[[ $(id -u) -eq 0 ]] || { echo 'Run as root' >&2;exit 1; }
```

**In simple terms:** This is part of the script's argument checks, variable setup or control flow. The surrounding conditions determine when it runs.

**How the syntax works:** `[[` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** Typically checks prerequisites or sets temporary values; read the script's surrounding branch before using.

## 25. Script line 36

```bash
[[ ! -e /etc/rancher/k3s/config.yaml && ! -e /var/lib/rancher/k3s/server/db ]] || { echo 'Existing K3s config/state detected; refusing to overwrite' >&2;exit 1; }
```

**In simple terms:** This is part of the script's argument checks, variable setup or control flow. The surrounding conditions determine when it runs.

**How the syntax works:** `[[` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** Typically checks prerequisites or sets temporary values; read the script's surrounding branch before using.

## 26. Script line 38

```bash
[[ -f "$TOKEN_FILE" ]] || { echo 'Missing token file' >&2;exit 1; }
```

**In simple terms:** This is part of the script's argument checks, variable setup or control flow. The surrounding conditions determine when it runs.

**How the syntax works:** `[[` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** Typically checks prerequisites or sets temporary values; read the script's surrounding branch before using.

## 27. Script line 39

```bash
chmod 0600 "$TOKEN_FILE"
```

**In simple terms:** Changes permissions. Token files should only be readable by authorized administrators.

**How the syntax works:** `chmod` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** ⚠️ Can download software, change service/host configuration or replace files; requires approved node and backup.

## 28. Script line 41

```bash
command -v curl >/dev/null || { echo 'curl required' >&2;exit 1; }
```

**In simple terms:** Checks whether a required executable exists.

**How the syntax works:** `command` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** ⚠️ Can download software, change service/host configuration or replace files; requires approved node and backup.

## 29. Script line 42

```bash
mkdir -p -m 700 /etc/rancher/k3s
```

**In simple terms:** Creates configuration directories; watch permissions and destination.

**How the syntax works:** `mkdir` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** Typically checks prerequisites or sets temporary values; read the script's surrounding branch before using.

## 30. Script line 45

```bash
[[ -n "$TLS_SAN" ]] || { echo 'Initial HA server requires API VIP TLS SAN' >&2;exit 1; }
```

**In simple terms:** This is part of the script's argument checks, variable setup or control flow. The surrounding conditions determine when it runs.

**How the syntax works:** `[[` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** Typically checks prerequisites or sets temporary values; read the script's surrounding branch before using.

## 31. Here-document starting on line 46

`cat >/etc/rancher/k3s/config.yaml <<EOF`

**Simply explained:** Opens a multi-line configuration file or help-text block. The `<<EOF` syntax tells the shell to treat following lines as content until matching `EOF`; `>` can replace the destination file. The file may affect node networking, container runtime or K3s server configuration after install.

## 32. Here-document starting on line 53

`cat >/etc/rancher/k3s/config.yaml <<EOF`

**Simply explained:** Opens a multi-line configuration file or help-text block. The `<<EOF` syntax tells the shell to treat following lines as content until matching `EOF`; `>` can replace the destination file. The file may affect node networking, container runtime or K3s server configuration after install.

## 33. Here-document starting on line 62

`cat >/etc/rancher/k3s/config.yaml <<EOF`

**Simply explained:** Opens a multi-line configuration file or help-text block. The `<<EOF` syntax tells the shell to treat following lines as content until matching `EOF`; `>` can replace the destination file. The file may affect node networking, container runtime or K3s server configuration after install.

## 34. Script line 67

```bash
echo 'CHANGE: install script will execute vendor binary fetched over HTTPS from get.k3s.io.'
```

**In simple terms:** Prints status text for the operator. May include variables (never secrets).

**How the syntax works:** `echo` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** ⚠️ Can download software, change service/host configuration or replace files; requires approved node and backup.

## 35. Script line 69

```bash
curl -sfL https://get.k3s.io -o /root/k3s-install-reviewed.sh
```

**In simple terms:** Downloads the vendor install script or Kubernetes repo signing key over HTTPS; verify trusted source.

**How the syntax works:** `curl` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** ⚠️ Can download software, change service/host configuration or replace files; requires approved node and backup.

## 36. Script line 70

```bash
chmod 0700 /root/k3s-install-reviewed.sh
```

**In simple terms:** Changes permissions. Token files should only be readable by authorized administrators.

**How the syntax works:** `chmod` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** ⚠️ Can download software, change service/host configuration or replace files; requires approved node and backup.

## 37. Script line 71

```bash
INSTALL_K3S_VERSION="$VERSION" INSTALL_K3S_EXEC="$ROLE" sh /root/k3s-install-reviewed.sh
```

**In simple terms:** This is part of the script's argument checks, variable setup or control flow. The surrounding conditions determine when it runs.

**How the syntax works:** `INSTALL_K3S_VERSION="$VERSION"` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** ⚠️ Can download software, change service/host configuration or replace files; requires approved node and backup.

## 38. Script line 72

```bash
systemctl status "k3s$( [[ "$ROLE" == agent ]] && printf -- '-agent' )" --no-pager
```

**In simple terms:** Configures, starts or restarts a systemd-managed service.

**How the syntax works:** `systemctl` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** Typically checks prerequisites or sets temporary values; read the script's surrounding branch before using.

## 39. Script line 73

```bash
echo 'NEXT: validate cluster API/etcd quorum and worker Ready; install GitOps, backups, policy, observability and customer ingress.'
```

**In simple terms:** Prints status text for the operator. May include variables (never secrets).

**How the syntax works:** `echo` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** ⚠️ Can download software, change service/host configuration or replace files; requires approved node and backup.

## 40. Script line 74

```bash
echo 'Do not store server token, kubeconfig or cluster topology in public GitHub.'
```

**In simple terms:** Prints status text for the operator. May include variables (never secrets).

**How the syntax works:** `echo` is the executable or expression, followed by parameters. A leading `$` expands a previously set variable. `$(...)` runs a nested command to produce a value, and `>` redirects content to a file (overwriting unless append). Shell `[[]]`, `case`, `if` and `while` enforce the script's safeguards.

**When it runs:** Only after the script's argument validation and its dry-run/apply selection permit it. **Do not paste this line separately on an existing cluster** without the original checks.

**Production impact:** Typically checks prerequisites or sets temporary values; read the script's surrounding branch before using.

