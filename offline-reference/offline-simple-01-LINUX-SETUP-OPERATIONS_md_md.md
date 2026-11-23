# Offline command / configuration reference: `offline-simple/01-LINUX-SETUP-OPERATIONS_md.md`

Generated from repository source by `tools/build_offline_reference.py`. **34 items**. This copy works offline. No commands were executed.

⚠️ **Version-aware reference, not a substitute for vendor docs.** Every individual command is preserved with purpose, flags, placeholders, expected output and risk. Ambiguous flags are marked as command-specific. Always verify flags against your installed CLI.

**Original file:** [`offline-simple/01-LINUX-SETUP-OPERATIONS_md.md`](../offline-simple/01-LINUX-SETUP-OPERATIONS_md.md)

### 1. `cat /etc/os-release`

**Source line:** 8  |  **Tool/purpose:** cat operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
cat /etc/os-release
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** cat /etc/os-release. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `cat operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 2. `uname -r`

**Source line:** 24  |  **Tool/purpose:** uname operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
uname -r
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** uname -r. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-r` — Reverse order or recursive depending on command.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `uname operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 3. `hostnamectl`

**Source line:** 40  |  **Tool/purpose:** hostnamectl operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
hostnamectl
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** hostnamectl. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `hostnamectl operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 4. `timedatectl status`

**Source line:** 56  |  **Tool/purpose:** timedatectl operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
timedatectl status
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** timedatectl status. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `timedatectl operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 5. `id`

**Source line:** 72  |  **Tool/purpose:** id operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
id
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** id. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `id operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 6. `whoami`

**Source line:** 88  |  **Tool/purpose:** whoami operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
whoami
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** whoami. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `whoami operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 7. `ip -br addr`

**Source line:** 104  |  **Tool/purpose:** Linux network configuration  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
ip -br addr
```

**What it does:** Read or change Linux addresses, links, routes and neighbor information.

**Syntax:** ip -br addr. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-br` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Read or change Linux addresses, links, routes and neighbor information. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `Linux network configuration` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/man8/ip.8.html).

### 8. `ip route`

**Source line:** 120  |  **Tool/purpose:** Linux network configuration  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
ip route
```

**What it does:** Read or change Linux addresses, links, routes and neighbor information.

**Syntax:** ip route. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Read or change Linux addresses, links, routes and neighbor information. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `Linux network configuration` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/man8/ip.8.html).

### 9. `lsblk -f`

**Source line:** 136  |  **Tool/purpose:** lsblk operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
lsblk -f
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** lsblk -f. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-f` — Follow logs/force/filename depending on command.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `lsblk operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 10. `findmnt /`

**Source line:** 152  |  **Tool/purpose:** findmnt operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
findmnt /
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** findmnt /. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `findmnt operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 11. `sudo apt-get update`

**Source line:** 168  |  **Tool/purpose:** Debian/Ubuntu package manager  |  **Impact:** **CHANGE / POSSIBLY MUTATING**

**Exact command:**

```bash
sudo apt-get update
```

**What it does:** Update package indexes or install/upgrade/remove packages depending on subcommand.

**Syntax:** sudo apt-get update. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Check subcommand and flags; requires change review and appropriate access.
**Expected result:** Update package indexes or install/upgrade/remove packages depending on subcommand. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `Debian/Ubuntu package manager` vendor manual or installed `--help`; [online vendor reference](https://manpages.debian.org/).

### 12. `apt list --upgradable`

**Source line:** 184  |  **Tool/purpose:** apt operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
apt list --upgradable
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** apt list --upgradable. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `--upgradable` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `apt operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 13. `sudo dnf check-update`

**Source line:** 200  |  **Tool/purpose:** RHEL-family package manager  |  **Impact:** **CHANGE / POSSIBLY MUTATING**

**Exact command:**

```bash
sudo dnf check-update
```

**What it does:** Install/update/query packages using configured RPM repositories.

**Syntax:** sudo dnf check-update. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Check subcommand and flags; requires change review and appropriate access.
**Expected result:** Install/update/query packages using configured RPM repositories. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `RHEL-family package manager` vendor manual or installed `--help`; [online vendor reference](https://dnf.readthedocs.io/).

### 14. `sudo apt-get install -y curl jq vim`

**Source line:** 216  |  **Tool/purpose:** Debian/Ubuntu package manager  |  **Impact:** **CHANGE / POSSIBLY MUTATING**

**Exact command:**

```bash
sudo apt-get install -y curl jq vim
```

**What it does:** Update package indexes or install/upgrade/remove packages depending on subcommand.

**Syntax:** sudo apt-get install -y curl. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-y` — Automatically accept package manager prompts; risky on production.
**Safety/rollback:** Check subcommand and flags; requires change review and appropriate access.
**Expected result:** Update package indexes or install/upgrade/remove packages depending on subcommand. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `Debian/Ubuntu package manager` vendor manual or installed `--help`; [online vendor reference](https://manpages.debian.org/).

### 15. `sudo dnf install -y curl jq vim`

**Source line:** 232  |  **Tool/purpose:** RHEL-family package manager  |  **Impact:** **CHANGE / POSSIBLY MUTATING**

**Exact command:**

```bash
sudo dnf install -y curl jq vim
```

**What it does:** Install/update/query packages using configured RPM repositories.

**Syntax:** sudo dnf install -y curl. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-y` — Automatically accept package manager prompts; risky on production.
**Safety/rollback:** Check subcommand and flags; requires change review and appropriate access.
**Expected result:** Install/update/query packages using configured RPM repositories. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `RHEL-family package manager` vendor manual or installed `--help`; [online vendor reference](https://dnf.readthedocs.io/).

### 16. `systemctl --failed`

**Source line:** 248  |  **Tool/purpose:** systemd unit manager  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
systemctl --failed
```

**What it does:** Inspect or modify systemd-managed services and units.

**Syntax:** systemctl --failed. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `--failed` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Inspect or modify systemd-managed services and units. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `systemd unit manager` vendor manual or installed `--help`; [online vendor reference](https://www.freedesktop.org/software/systemd/man/latest/systemctl.html).

### 17. `systemctl status ssh --no-pager`

**Source line:** 264  |  **Tool/purpose:** systemd unit manager  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
systemctl status ssh --no-pager
```

**What it does:** Inspect service state, recent logs and metadata.

**Syntax:** systemctl status ssh --no-pager. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `--no-pager` — Print output directly rather than opening an interactive pager.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Inspect service state, recent logs and metadata. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `systemd unit manager` vendor manual or installed `--help`; [online vendor reference](https://www.freedesktop.org/software/systemd/man/latest/systemctl.html).

### 18. `systemctl status sshd --no-pager`

**Source line:** 280  |  **Tool/purpose:** systemd unit manager  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
systemctl status sshd --no-pager
```

**What it does:** Inspect service state, recent logs and metadata.

**Syntax:** systemctl status sshd --no-pager. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `--no-pager` — Print output directly rather than opening an interactive pager.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Inspect service state, recent logs and metadata. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `systemd unit manager` vendor manual or installed `--help`; [online vendor reference](https://www.freedesktop.org/software/systemd/man/latest/systemctl.html).

### 19. `journalctl -p err -b --no-pager`

**Source line:** 296  |  **Tool/purpose:** systemd journal inspection  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
journalctl -p err -b --no-pager
```

**What it does:** Query system and service journal messages with boot, unit, time and priority filters.

**Syntax:** journalctl -p err -b --no-pager. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-p` — Priority filter in journalctl; other meanings in other CLIs.
**Option:** `-b` — Filter journal to specified boot; otherwise command-specific.
**Option:** `--no-pager` — Print output directly rather than opening an interactive pager.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Query system and service journal messages with boot, unit, time and priority filters. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `systemd journal inspection` vendor manual or installed `--help`; [online vendor reference](https://www.freedesktop.org/software/systemd/man/latest/journalctl.html).

### 20. `journalctl -u YOUR_SERVICE --since '1 hour ago' --no-pager`

**Source line:** 312  |  **Tool/purpose:** systemd journal inspection  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
journalctl -u YOUR_SERVICE --since '1 hour ago' --no-pager
```

**What it does:** Filter systemd logs for the specified unit.

**Syntax:** journalctl -u YOUR_SERVICE --since 1 hour ago. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-u` — Filter journal by systemd unit; in other tools may mean user.
**Option:** `--since` — Select entries newer than a given time or duration.
**Option:** `--no-pager` — Print output directly rather than opening an interactive pager.
**Substitute before running:** `YOUR_SERVICE`. Never assume an example target is the current cluster.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Filter systemd logs for the specified unit. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `systemd journal inspection` vendor manual or installed `--help`; [online vendor reference](https://www.freedesktop.org/software/systemd/man/latest/journalctl.html).

### 21. `sudo systemctl restart YOUR_SERVICE`

**Source line:** 328  |  **Tool/purpose:** systemd unit manager  |  **Impact:** **CHANGE / POSSIBLY MUTATING**

**Exact command:**

```bash
sudo systemctl restart YOUR_SERVICE
```

**What it does:** Restart a unit, potentially interrupting production traffic.

**Syntax:** sudo systemctl restart YOUR_SERVICE. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Substitute before running:** `YOUR_SERVICE`. Never assume an example target is the current cluster.
**Safety/rollback:** Check subcommand and flags; requires change review and appropriate access.
**Expected result:** Restart a unit, potentially interrupting production traffic. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `systemd unit manager` vendor manual or installed `--help`; [online vendor reference](https://www.freedesktop.org/software/systemd/man/latest/systemctl.html).

### 22. `df -hT`

**Source line:** 344  |  **Tool/purpose:** Filesystem capacity  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
df -hT
```

**What it does:** Display filesystem usage; bytes with -h or inodes with -i.

**Syntax:** df -hT. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-hT` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Display filesystem usage; bytes with -h or inodes with -i. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `Filesystem capacity` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/man1/df.1.html).

### 23. `df -i`

**Source line:** 360  |  **Tool/purpose:** Filesystem capacity  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
df -i
```

**What it does:** Display filesystem usage; bytes with -h or inodes with -i.

**Syntax:** df -i. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-i` — Inode usage in df, interactive or interface depending on command.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Display filesystem usage; bytes with -h or inodes with -i. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `Filesystem capacity` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/man1/df.1.html).

### 24. `free -h`

**Source line:** 376  |  **Tool/purpose:** free operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
free -h
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** free -h. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-h` — Human-readable units for storage tools; help in other commands.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `free operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 25. `vmstat 1 5`

**Source line:** 392  |  **Tool/purpose:** vmstat operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
vmstat 1 5
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** vmstat 1 5. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `vmstat operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 26. `top -b -n1 \| head -45`

**Source line:** 408  |  **Tool/purpose:** top operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
top -b -n1 | head -45
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** top -b -n1 | head. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-b` — Filter journal to specified boot; otherwise command-specific.
**Option:** `-n1` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Option:** `-45` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Shell syntax:** `|` pipes stdout into the next process; check pipeline exit codes (pipefail where appropriate).
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `top operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 27. `ps aux --sort=-%mem \| head -15`

**Source line:** 424  |  **Tool/purpose:** ps operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
ps aux --sort=-%mem | head -15
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** ps aux --sort=-%mem | head. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `--sort=-%mem` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Option:** `-15` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Shell syntax:** `|` pipes stdout into the next process; check pipeline exit codes (pipefail where appropriate).
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `ps operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 28. `ss -tulpen`

**Source line:** 440  |  **Tool/purpose:** Socket inspection  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
ss -tulpen
```

**What it does:** Show listening and active network sockets, protocols and owning processes when permitted.

**Syntax:** ss -tulpen. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-tulpen` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Show listening and active network sockets, protocols and owning processes when permitted. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `Socket inspection` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/man8/ss.8.html).

### 29. `lsof -iTCP -sTCP:LISTEN`

**Source line:** 456  |  **Tool/purpose:** lsof operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
lsof -iTCP -sTCP:LISTEN
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** lsof -iTCP -sTCP:LISTEN. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-iTCP` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Option:** `-sTCP:LISTEN` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `lsof operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 30. `getent passwd YOUR_USER`

**Source line:** 472  |  **Tool/purpose:** NSS lookup  |  **Impact:** **CHANGE / POSSIBLY MUTATING**

**Exact command:**

```bash
getent passwd YOUR_USER
```

**What it does:** Resolve users, groups and hosts through the operating system's NSS configuration.

**Syntax:** getent passwd YOUR_USER. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Substitute before running:** `YOUR_USER`. Never assume an example target is the current cluster.
**Safety/rollback:** Check subcommand and flags; requires change review and appropriate access. **Credential caution:** command may reference credentials or identity; do not upload raw outputs.
**Expected result:** Resolve users, groups and hosts through the operating system's NSS configuration. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `NSS lookup` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/man1/getent.1.html).

### 31. `sudo visudo -c`

**Source line:** 488  |  **Tool/purpose:** visudo operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
sudo visudo -c
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** sudo visudo -c. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-c` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `visudo operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 32. `sudo sshd -t`

**Source line:** 504  |  **Tool/purpose:** sshd operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
sudo sshd -t
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** sudo sshd -t. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-t` — Type/timeout/terminal mode depending on command.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `sshd operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 33. `sudo getfacl /srv/data`

**Source line:** 520  |  **Tool/purpose:** getfacl operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
sudo getfacl /srv/data
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** sudo getfacl /srv/data. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `getfacl operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 34. `sudo journalctl -u sshd -n 50 --no-pager`

**Source line:** 536  |  **Tool/purpose:** systemd journal inspection  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
sudo journalctl -u sshd -n 50 --no-pager
```

**What it does:** Filter systemd logs for the specified unit.

**Syntax:** sudo journalctl -u sshd -n. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-u` — Filter journal by systemd unit; in other tools may mean user.
**Option:** `-n` — Namespace for kubectl/oc, number of lines for journalctl/tail, or another command-specific argument.
**Option:** `--no-pager` — Print output directly rather than opening an interactive pager.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Filter systemd logs for the specified unit. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `systemd journal inspection` vendor manual or installed `--help`; [online vendor reference](https://www.freedesktop.org/software/systemd/man/latest/journalctl.html).

