# Offline command / configuration reference: `offline-simple/02-SECURITY-HARDENING_md.md`

Generated from repository source by `tools/build_offline_reference.py`. **24 items**. This copy works offline. No commands were executed.

⚠️ **Version-aware reference, not a substitute for vendor docs.** Every individual command is preserved with purpose, flags, placeholders, expected output and risk. Ambiguous flags are marked as command-specific. Always verify flags against your installed CLI.

**Original file:** [`offline-simple/02-SECURITY-HARDENING_md.md`](../offline-simple/02-SECURITY-HARDENING_md.md)

### 1. `sudo ss -tulpen`

**Source line:** 8  |  **Tool/purpose:** Socket inspection  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
sudo ss -tulpen
```

**What it does:** Show listening and active network sockets, protocols and owning processes when permitted.

**Syntax:** sudo ss -tulpen. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-tulpen` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Show listening and active network sockets, protocols and owning processes when permitted. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `Socket inspection` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/man8/ss.8.html).

### 2. `sudo systemctl --type=service --state=running`

**Source line:** 24  |  **Tool/purpose:** systemd unit manager  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
sudo systemctl --type=service --state=running
```

**What it does:** Inspect or modify systemd-managed services and units.

**Syntax:** sudo systemctl --type=service --state=running. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `--type=service` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Option:** `--state=running` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Inspect or modify systemd-managed services and units. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `systemd unit manager` vendor manual or installed `--help`; [online vendor reference](https://www.freedesktop.org/software/systemd/man/latest/systemctl.html).

### 3. `sudo find /etc/ssh -maxdepth 2 -type f -ls`

**Source line:** 40  |  **Tool/purpose:** find operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
sudo find /etc/ssh -maxdepth 2 -type f -ls
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** sudo find /etc/ssh -maxdepth 2. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-maxdepth` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Option:** `-type` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Option:** `-ls` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `find operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 4. `sudo sshd -T \| grep -E '^(permitrootlogin\|passwordauthentication\|pubkeyauthentication)'`

**Source line:** 56  |  **Tool/purpose:** sshd operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
sudo sshd -T | grep -E '^(permitrootlogin|passwordauthentication|pubkeyauthentication)'
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** sudo sshd -T | grep. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-T` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Option:** `-E` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Shell syntax:** `|` pipes stdout into the next process; check pipeline exit codes (pipefail where appropriate).
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information. **Credential caution:** command may reference credentials or identity; do not upload raw outputs.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `sshd operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 5. `sudo auditctl -s`

**Source line:** 72  |  **Tool/purpose:** auditctl operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
sudo auditctl -s
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** sudo auditctl -s. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-s` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `auditctl operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 6. `getenforce`

**Source line:** 88  |  **Tool/purpose:** getenforce operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
getenforce
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** getenforce. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `getenforce operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 7. `sudo aa-status`

**Source line:** 104  |  **Tool/purpose:** aa-status operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
sudo aa-status
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** sudo aa-status. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `aa-status operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 8. `sudo nft list ruleset`

**Source line:** 120  |  **Tool/purpose:** nft operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
sudo nft list ruleset
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** sudo nft list ruleset. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `nft operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 9. `sudo firewall-cmd --state`

**Source line:** 136  |  **Tool/purpose:** firewall-cmd operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
sudo firewall-cmd --state
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** sudo firewall-cmd --state. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `--state` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `firewall-cmd operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 10. `sudo firewall-cmd --list-all`

**Source line:** 152  |  **Tool/purpose:** firewall-cmd operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
sudo firewall-cmd --list-all
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** sudo firewall-cmd --list-all. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `--list-all` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `firewall-cmd operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 11. `sudo ufw status verbose`

**Source line:** 168  |  **Tool/purpose:** ufw operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
sudo ufw status verbose
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** sudo ufw status verbose. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `ufw operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 12. `getent group sudo`

**Source line:** 184  |  **Tool/purpose:** NSS lookup  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
getent group sudo
```

**What it does:** Resolve users, groups and hosts through the operating system's NSS configuration.

**Syntax:** getent group sudo. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Resolve users, groups and hosts through the operating system's NSS configuration. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `NSS lookup` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/man1/getent.1.html).

### 13. `getent group wheel`

**Source line:** 200  |  **Tool/purpose:** NSS lookup  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
getent group wheel
```

**What it does:** Resolve users, groups and hosts through the operating system's NSS configuration.

**Syntax:** getent group wheel. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Resolve users, groups and hosts through the operating system's NSS configuration. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `NSS lookup` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/man1/getent.1.html).

### 14. `sudo last -n 20`

**Source line:** 216  |  **Tool/purpose:** last operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
sudo last -n 20
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** sudo last -n 20. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-n` — Namespace for kubectl/oc, number of lines for journalctl/tail, or another command-specific argument.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `last operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 15. `sudo journalctl -u sshd --since yesterday`

**Source line:** 232  |  **Tool/purpose:** systemd journal inspection  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
sudo journalctl -u sshd --since yesterday
```

**What it does:** Filter systemd logs for the specified unit.

**Syntax:** sudo journalctl -u sshd --since. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-u` — Filter journal by systemd unit; in other tools may mean user.
**Option:** `--since` — Select entries newer than a given time or duration.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Filter systemd logs for the specified unit. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `systemd journal inspection` vendor manual or installed `--help`; [online vendor reference](https://www.freedesktop.org/software/systemd/man/latest/journalctl.html).

### 16. `sudo apt list --upgradable`

**Source line:** 248  |  **Tool/purpose:** apt operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
sudo apt list --upgradable
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** sudo apt list --upgradable. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `--upgradable` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `apt operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 17. `sudo dnf updateinfo list security`

**Source line:** 264  |  **Tool/purpose:** RHEL-family package manager  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
sudo dnf updateinfo list security
```

**What it does:** Install/update/query packages using configured RPM repositories.

**Syntax:** sudo dnf updateinfo list security. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Install/update/query packages using configured RPM repositories. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `RHEL-family package manager` vendor manual or installed `--help`; [online vendor reference](https://dnf.readthedocs.io/).

### 18. `sudo openssl version -a`

**Source line:** 280  |  **Tool/purpose:** OpenSSL TLS diagnostics  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
sudo openssl version -a
```

**What it does:** Inspect TLS handshakes/certificates; network requests reveal target connections.

**Syntax:** sudo openssl version -a. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-a` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Inspect TLS handshakes/certificates; network requests reveal target connections. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `OpenSSL TLS diagnostics` vendor manual or installed `--help`; [online vendor reference](https://docs.openssl.org/).

### 19. `sudo find / -xdev -perm -4000 -type f 2>/dev/null`

**Source line:** 296  |  **Tool/purpose:** find operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
sudo find / -xdev -perm -4000 -type f 2>/dev/null
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** sudo find / -xdev -perm. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-xdev` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Option:** `-perm` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Option:** `-4000` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Option:** `-type` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Shell syntax:** `>` redirects/truncates output; confirm destination and permissions.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `find operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 20. `sudo find /etc -xdev -type f -perm /022 -ls 2>/dev/null`

**Source line:** 312  |  **Tool/purpose:** find operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
sudo find /etc -xdev -type f -perm /022 -ls 2>/dev/null
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** sudo find /etc -xdev -type. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-xdev` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Option:** `-type` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Option:** `-perm` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Option:** `-ls` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Shell syntax:** `>` redirects/truncates output; confirm destination and permissions.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `find operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 21. `timedatectl status`

**Source line:** 328  |  **Tool/purpose:** timedatectl operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
timedatectl status
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** timedatectl status. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `timedatectl operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 22. `openssl s_client -connect YOUR_HOST:443 -servername YOUR_HOST </dev/null`

**Source line:** 344  |  **Tool/purpose:** OpenSSL TLS diagnostics  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
openssl s_client -connect YOUR_HOST:443 -servername YOUR_HOST </dev/null
```

**What it does:** Inspect TLS handshakes/certificates; network requests reveal target connections.

**Syntax:** openssl s_client -connect YOUR_HOST:443 -servername. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-connect` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Option:** `-servername` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Substitute before running:** `YOUR_HOST`. Never assume an example target is the current cluster.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Inspect TLS handshakes/certificates; network requests reveal target connections. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `OpenSSL TLS diagnostics` vendor manual or installed `--help`; [online vendor reference](https://docs.openssl.org/).

### 23. `sudo journalctl -u chronyd -n 50 --no-pager`

**Source line:** 360  |  **Tool/purpose:** systemd journal inspection  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
sudo journalctl -u chronyd -n 50 --no-pager
```

**What it does:** Filter systemd logs for the specified unit.

**Syntax:** sudo journalctl -u chronyd -n. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-u` — Filter journal by systemd unit; in other tools may mean user.
**Option:** `-n` — Namespace for kubectl/oc, number of lines for journalctl/tail, or another command-specific argument.
**Option:** `--no-pager` — Print output directly rather than opening an interactive pager.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Filter systemd logs for the specified unit. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `systemd journal inspection` vendor manual or installed `--help`; [online vendor reference](https://www.freedesktop.org/software/systemd/man/latest/journalctl.html).

### 24. `sudo journalctl -u systemd-timesyncd -n 50 --no-pager`

**Source line:** 376  |  **Tool/purpose:** systemd journal inspection  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
sudo journalctl -u systemd-timesyncd -n 50 --no-pager
```

**What it does:** Filter systemd logs for the specified unit.

**Syntax:** sudo journalctl -u systemd-timesyncd -n. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-u` — Filter journal by systemd unit; in other tools may mean user.
**Option:** `-n` — Namespace for kubectl/oc, number of lines for journalctl/tail, or another command-specific argument.
**Option:** `--no-pager` — Print output directly rather than opening an interactive pager.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Filter systemd logs for the specified unit. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `systemd journal inspection` vendor manual or installed `--help`; [online vendor reference](https://www.freedesktop.org/software/systemd/man/latest/journalctl.html).

