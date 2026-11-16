# Offline command / configuration reference: `03-ADVANCED-TROUBLESHOOTING.md`

Generated from repository source by `tools/build_offline_reference.py`. **32 items**. This copy works offline. No commands were executed.

⚠️ **Version-aware reference, not a substitute for vendor docs.** Every individual command is preserved with purpose, flags, placeholders, expected output and risk. Ambiguous flags are marked as command-specific. Always verify flags against your installed CLI.

**Original file:** [`03-ADVANCED-TROUBLESHOOTING.md`](../03-ADVANCED-TROUBLESHOOTING.md)

### 1. `uptime`

**Source line:** 10  |  **Tool/purpose:** uptime operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
uptime
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** uptime. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `uptime operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 2. `top -b -n1 \| head -60`

**Source line:** 11  |  **Tool/purpose:** top operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
top -b -n1 | head -60
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** top -b -n1 | head. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-b` — Filter journal to specified boot; otherwise command-specific.
**Option:** `-n1` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Option:** `-60` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Shell syntax:** `|` pipes stdout into the next process; check pipeline exit codes (pipefail where appropriate).
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `top operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 3. `vmstat 1 5`

**Source line:** 12  |  **Tool/purpose:** vmstat operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
vmstat 1 5
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** vmstat 1 5. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `vmstat operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 4. `pidstat -dur 1 5`

**Source line:** 13  |  **Tool/purpose:** pidstat operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
pidstat -dur 1 5
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** pidstat -dur 1 5. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-dur` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `pidstat operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 5. `free -h`

**Source line:** 14  |  **Tool/purpose:** free operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

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

### 6. `dmesg -T \| tail -100`

**Source line:** 15  |  **Tool/purpose:** dmesg operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
dmesg -T | tail -100
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** dmesg -T | tail -100. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-T` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Option:** `-100` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Shell syntax:** `|` pipes stdout into the next process; check pipeline exit codes (pipefail where appropriate).
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `dmesg operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 7. `journalctl -k -b -p warning --no-pager`

**Source line:** 16  |  **Tool/purpose:** systemd journal inspection  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
journalctl -k -b -p warning --no-pager
```

**What it does:** Query system and service journal messages with boot, unit, time and priority filters.

**Syntax:** journalctl -k -b -p warning. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-k` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Option:** `-b` — Filter journal to specified boot; otherwise command-specific.
**Option:** `-p` — Priority filter in journalctl; other meanings in other CLIs.
**Option:** `--no-pager` — Print output directly rather than opening an interactive pager.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Query system and service journal messages with boot, unit, time and priority filters. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `systemd journal inspection` vendor manual or installed `--help`; [online vendor reference](https://www.freedesktop.org/software/systemd/man/latest/journalctl.html).

### 8. `df -hT`

**Source line:** 37  |  **Tool/purpose:** Filesystem capacity  |  **Impact:** **DIAGNOSTIC / REVIEW**

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

### 9. `df -i`

**Source line:** 38  |  **Tool/purpose:** Filesystem capacity  |  **Impact:** **DIAGNOSTIC / REVIEW**

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

### 10. `lsblk -o NAME,SIZE,FSTYPE,MOUNTPOINT,TYPE`

**Source line:** 39  |  **Tool/purpose:** lsblk operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
lsblk -o NAME,SIZE,FSTYPE,MOUNTPOINT,TYPE
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** lsblk -o NAME,SIZE,FSTYPE,MOUNTPOINT,TYPE. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-o` — Output format for kubectl/oc, filename for some tools; command-specific.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `lsblk operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 11. `findmnt -R /var`

**Source line:** 40  |  **Tool/purpose:** findmnt operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
findmnt -R /var
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** findmnt -R /var. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-R` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `findmnt operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 12. `iostat -xz 1 5`

**Source line:** 41  |  **Tool/purpose:** iostat operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
iostat -xz 1 5
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** iostat -xz 1 5. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-xz` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `iostat operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 13. `sudo smartctl -a /dev/YOUR_DISK`

**Source line:** 42  |  **Tool/purpose:** smartctl operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
sudo smartctl -a /dev/YOUR_DISK
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** sudo smartctl -a /dev/YOUR_DISK. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-a` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Substitute before running:** `YOUR_DISK`. Never assume an example target is the current cluster.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `smartctl operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 14. `sudo journalctl -k --since '2 hours ago' \| grep -Ei 'error\|reset\|i/o\|nvme\|scsi\|xfs\|ext4'`

**Source line:** 43  |  **Tool/purpose:** systemd journal inspection  |  **Impact:** **CHANGE / POSSIBLY MUTATING**

**Exact command:**

```bash
sudo journalctl -k --since '2 hours ago' | grep -Ei 'error|reset|i/o|nvme|scsi|xfs|ext4'
```

**What it does:** Query system and service journal messages with boot, unit, time and priority filters.

**Syntax:** sudo journalctl -k --since 2 hours ago. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-k` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Option:** `--since` — Select entries newer than a given time or duration.
**Option:** `-Ei` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Shell syntax:** `|` pipes stdout into the next process; check pipeline exit codes (pipefail where appropriate).
**Safety/rollback:** Check subcommand and flags; requires change review and appropriate access.
**Expected result:** Query system and service journal messages with boot, unit, time and priority filters. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `systemd journal inspection` vendor manual or installed `--help`; [online vendor reference](https://www.freedesktop.org/software/systemd/man/latest/journalctl.html).

### 15. `ip -br link`

**Source line:** 64  |  **Tool/purpose:** Linux network configuration  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
ip -br link
```

**What it does:** Read or change Linux addresses, links, routes and neighbor information.

**Syntax:** ip -br link. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-br` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Read or change Linux addresses, links, routes and neighbor information. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `Linux network configuration` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/man8/ip.8.html).

### 16. `ip addr`

**Source line:** 65  |  **Tool/purpose:** Linux network configuration  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
ip addr
```

**What it does:** Read or change Linux addresses, links, routes and neighbor information.

**Syntax:** ip addr. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Read or change Linux addresses, links, routes and neighbor information. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `Linux network configuration` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/man8/ip.8.html).

### 17. `ip route get 1.1.1.1`

**Source line:** 66  |  **Tool/purpose:** Linux network configuration  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
ip route get 1.1.1.1
```

**What it does:** Read or change Linux addresses, links, routes and neighbor information.

**Syntax:** ip route get 1.1.1.1. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Read or change Linux addresses, links, routes and neighbor information. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `Linux network configuration` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/man8/ip.8.html).

### 18. `resolvectl status`

**Source line:** 67  |  **Tool/purpose:** resolvectl operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
resolvectl status
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** resolvectl status. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `resolvectl operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 19. `dig @YOUR_DNS_SERVER YOUR_FQDN A +time=2 +tries=1`

**Source line:** 68  |  **Tool/purpose:** dig operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
dig @YOUR_DNS_SERVER YOUR_FQDN A +time=2 +tries=1
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** dig @YOUR_DNS_SERVER YOUR_FQDN A +time=2. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Substitute before running:** `YOUR_DNS_SERVER`, `YOUR_FQDN`. Never assume an example target is the current cluster.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `dig operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 20. `dig @YOUR_DNS_SERVER YOUR_FQDN A +tcp`

**Source line:** 69  |  **Tool/purpose:** dig operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
dig @YOUR_DNS_SERVER YOUR_FQDN A +tcp
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** dig @YOUR_DNS_SERVER YOUR_FQDN A +tcp. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Substitute before running:** `YOUR_DNS_SERVER`, `YOUR_FQDN`. Never assume an example target is the current cluster.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `dig operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 21. `curl -Iv --connect-timeout 5 https://YOUR_FQDN`

**Source line:** 70  |  **Tool/purpose:** HTTP request/diagnostic  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
curl -Iv --connect-timeout 5 https://YOUR_FQDN
```

**What it does:** Request or transfer network content, with protocol and TLS behavior governed by flags.

**Syntax:** curl -Iv --connect-timeout 5 https://YOUR_FQDN. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-Iv` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Option:** `--connect-timeout` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Substitute before running:** `YOUR_FQDN`. Never assume an example target is the current cluster.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Request or transfer network content, with protocol and TLS behavior governed by flags. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `HTTP request/diagnostic` vendor manual or installed `--help`; [online vendor reference](https://curl.se/docs/manpage.html).

### 22. `sudo tcpdump -ni YOUR_INTERFACE 'port 53' -c 50`

**Source line:** 71  |  **Tool/purpose:** tcpdump operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
sudo tcpdump -ni YOUR_INTERFACE 'port 53' -c 50
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** sudo tcpdump -ni YOUR_INTERFACE port 53. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-ni` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Option:** `-c` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Substitute before running:** `YOUR_INTERFACE`. Never assume an example target is the current cluster.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `tcpdump operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 23. `systemctl status YOUR_SERVICE --no-pager`

**Source line:** 93  |  **Tool/purpose:** systemd unit manager  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
systemctl status YOUR_SERVICE --no-pager
```

**What it does:** Inspect service state, recent logs and metadata.

**Syntax:** systemctl status YOUR_SERVICE --no-pager. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `--no-pager` — Print output directly rather than opening an interactive pager.
**Substitute before running:** `YOUR_SERVICE`. Never assume an example target is the current cluster.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Inspect service state, recent logs and metadata. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `systemd unit manager` vendor manual or installed `--help`; [online vendor reference](https://www.freedesktop.org/software/systemd/man/latest/systemctl.html).

### 24. `journalctl -u YOUR_SERVICE -b --no-pager -n 150`

**Source line:** 94  |  **Tool/purpose:** systemd journal inspection  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
journalctl -u YOUR_SERVICE -b --no-pager -n 150
```

**What it does:** Filter systemd logs for the specified unit.

**Syntax:** journalctl -u YOUR_SERVICE -b --no-pager. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-u` — Filter journal by systemd unit; in other tools may mean user.
**Option:** `-b` — Filter journal to specified boot; otherwise command-specific.
**Option:** `--no-pager` — Print output directly rather than opening an interactive pager.
**Option:** `-n` — Namespace for kubectl/oc, number of lines for journalctl/tail, or another command-specific argument.
**Substitute before running:** `YOUR_SERVICE`. Never assume an example target is the current cluster.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Filter systemd logs for the specified unit. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `systemd journal inspection` vendor manual or installed `--help`; [online vendor reference](https://www.freedesktop.org/software/systemd/man/latest/journalctl.html).

### 25. `sudo coredumpctl list`

**Source line:** 95  |  **Tool/purpose:** coredumpctl operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
sudo coredumpctl list
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** sudo coredumpctl list. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `coredumpctl operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 26. `sudo ausearch -m AVC -ts recent`

**Source line:** 96  |  **Tool/purpose:** ausearch operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
sudo ausearch -m AVC -ts recent
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** sudo ausearch -m AVC -ts. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-m` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Option:** `-ts` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `ausearch operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 27. `sudo semanage fcontext -l \| head -25`

**Source line:** 97  |  **Tool/purpose:** semanage operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
sudo semanage fcontext -l | head -25
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** sudo semanage fcontext -l |. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-l` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Option:** `-25` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Shell syntax:** `|` pipes stdout into the next process; check pipeline exit codes (pipefail where appropriate).
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `semanage operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 28. `sudo sshd -T \| head -30`

**Source line:** 98  |  **Tool/purpose:** sshd operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
sudo sshd -T | head -30
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** sudo sshd -T | head. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-T` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Option:** `-30` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Shell syntax:** `|` pipes stdout into the next process; check pipeline exit codes (pipefail where appropriate).
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `sshd operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 29. `timedatectl status`

**Source line:** 118  |  **Tool/purpose:** timedatectl operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
timedatectl status
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** timedatectl status. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `timedatectl operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 30. `chronyc tracking`

**Source line:** 119  |  **Tool/purpose:** chronyc operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
chronyc tracking
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** chronyc tracking. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `chronyc operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 31. `chronyc sources -v`

**Source line:** 120  |  **Tool/purpose:** chronyc operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
chronyc sources -v
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** chronyc sources -v. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-v` — Verbose output or version depending on command.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `chronyc operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 32. `sudo journalctl -u chronyd -n 70 --no-pager`

**Source line:** 121  |  **Tool/purpose:** systemd journal inspection  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
sudo journalctl -u chronyd -n 70 --no-pager
```

**What it does:** Filter systemd logs for the specified unit.

**Syntax:** sudo journalctl -u chronyd -n. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-u` — Filter journal by systemd unit; in other tools may mean user.
**Option:** `-n` — Namespace for kubectl/oc, number of lines for journalctl/tail, or another command-specific argument.
**Option:** `--no-pager` — Print output directly rather than opening an interactive pager.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Filter systemd logs for the specified unit. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `systemd journal inspection` vendor manual or installed `--help`; [online vendor reference](https://www.freedesktop.org/software/systemd/man/latest/journalctl.html).

