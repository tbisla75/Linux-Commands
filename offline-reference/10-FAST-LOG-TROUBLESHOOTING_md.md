# Offline command / configuration reference: `10-FAST-LOG-TROUBLESHOOTING.md`

Generated from repository source by `tools/build_offline_reference.py`. **60 items**. This copy works offline. No commands were executed.

⚠️ **Version-aware reference, not a substitute for vendor docs.** Every individual command is preserved with purpose, flags, placeholders, expected output and risk. Ambiguous flags are marked as command-specific. Always verify flags against your installed CLI.

**Original file:** [`10-FAST-LOG-TROUBLESHOOTING.md`](../10-FAST-LOG-TROUBLESHOOTING.md)

### 1. `date -Is`

**Source line:** 14  |  **Tool/purpose:** date operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
date -Is
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** date -Is. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-Is` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `date operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 2. `uptime`

**Source line:** 15  |  **Tool/purpose:** uptime operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
uptime
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** uptime. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `uptime operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 3. `systemctl --failed --no-pager`

**Source line:** 16  |  **Tool/purpose:** systemd unit manager  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
systemctl --failed --no-pager
```

**What it does:** Inspect or modify systemd-managed services and units.

**Syntax:** systemctl --failed --no-pager. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `--failed` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Option:** `--no-pager` — Print output directly rather than opening an interactive pager.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Inspect or modify systemd-managed services and units. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `systemd unit manager` vendor manual or installed `--help`; [online vendor reference](https://www.freedesktop.org/software/systemd/man/latest/systemctl.html).

### 4. `journalctl -b -p err..alert --since '30 min ago' --no-pager -n 80`

**Source line:** 17  |  **Tool/purpose:** systemd journal inspection  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
journalctl -b -p err..alert --since '30 min ago' --no-pager -n 80
```

**What it does:** Query system and service journal messages with boot, unit, time and priority filters.

**Syntax:** journalctl -b -p err..alert --since. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-b` — Filter journal to specified boot; otherwise command-specific.
**Option:** `-p` — Priority filter in journalctl; other meanings in other CLIs.
**Option:** `--since` — Select entries newer than a given time or duration.
**Option:** `--no-pager` — Print output directly rather than opening an interactive pager.
**Option:** `-n` — Namespace for kubectl/oc, number of lines for journalctl/tail, or another command-specific argument.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Query system and service journal messages with boot, unit, time and priority filters. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `systemd journal inspection` vendor manual or installed `--help`; [online vendor reference](https://www.freedesktop.org/software/systemd/man/latest/journalctl.html).

### 5. `journalctl -k -b -p warning..alert --no-pager -n 80`

**Source line:** 18  |  **Tool/purpose:** systemd journal inspection  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
journalctl -k -b -p warning..alert --no-pager -n 80
```

**What it does:** Query system and service journal messages with boot, unit, time and priority filters.

**Syntax:** journalctl -k -b -p warning..alert. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-k` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Option:** `-b` — Filter journal to specified boot; otherwise command-specific.
**Option:** `-p` — Priority filter in journalctl; other meanings in other CLIs.
**Option:** `--no-pager` — Print output directly rather than opening an interactive pager.
**Option:** `-n` — Namespace for kubectl/oc, number of lines for journalctl/tail, or another command-specific argument.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Query system and service journal messages with boot, unit, time and priority filters. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `systemd journal inspection` vendor manual or installed `--help`; [online vendor reference](https://www.freedesktop.org/software/systemd/man/latest/journalctl.html).

### 6. `df -hT`

**Source line:** 19  |  **Tool/purpose:** Filesystem capacity  |  **Impact:** **DIAGNOSTIC / REVIEW**

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

### 7. `df -i`

**Source line:** 20  |  **Tool/purpose:** Filesystem capacity  |  **Impact:** **DIAGNOSTIC / REVIEW**

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

### 8. `free -h`

**Source line:** 21  |  **Tool/purpose:** free operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

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

### 9. `ss -tulpn`

**Source line:** 22  |  **Tool/purpose:** Socket inspection  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
ss -tulpn
```

**What it does:** Show listening and active network sockets, protocols and owning processes when permitted.

**Syntax:** ss -tulpn. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-tulpn` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Show listening and active network sockets, protocols and owning processes when permitted. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `Socket inspection` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/man8/ss.8.html).

### 10. `journalctl --list-boots`

**Source line:** 62  |  **Tool/purpose:** systemd journal inspection  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
journalctl --list-boots
```

**What it does:** Query system and service journal messages with boot, unit, time and priority filters.

**Syntax:** journalctl --list-boots. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `--list-boots` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Query system and service journal messages with boot, unit, time and priority filters. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `systemd journal inspection` vendor manual or installed `--help`; [online vendor reference](https://www.freedesktop.org/software/systemd/man/latest/journalctl.html).

### 11. `journalctl -b --since '15 min ago' -p err..alert --no-pager`

**Source line:** 63  |  **Tool/purpose:** systemd journal inspection  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
journalctl -b --since '15 min ago' -p err..alert --no-pager
```

**What it does:** Query system and service journal messages with boot, unit, time and priority filters.

**Syntax:** journalctl -b --since 15 min ago -p. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-b` — Filter journal to specified boot; otherwise command-specific.
**Option:** `--since` — Select entries newer than a given time or duration.
**Option:** `-p` — Priority filter in journalctl; other meanings in other CLIs.
**Option:** `--no-pager` — Print output directly rather than opening an interactive pager.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Query system and service journal messages with boot, unit, time and priority filters. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `systemd journal inspection` vendor manual or installed `--help`; [online vendor reference](https://www.freedesktop.org/software/systemd/man/latest/journalctl.html).

### 12. `journalctl -b -1 -p err..alert --no-pager -n 100`

**Source line:** 64  |  **Tool/purpose:** systemd journal inspection  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
journalctl -b -1 -p err..alert --no-pager -n 100
```

**What it does:** Query system and service journal messages with boot, unit, time and priority filters.

**Syntax:** journalctl -b -1 -p err..alert. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-b` — Filter journal to specified boot; otherwise command-specific.
**Option:** `-1` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Option:** `-p` — Priority filter in journalctl; other meanings in other CLIs.
**Option:** `--no-pager` — Print output directly rather than opening an interactive pager.
**Option:** `-n` — Namespace for kubectl/oc, number of lines for journalctl/tail, or another command-specific argument.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Query system and service journal messages with boot, unit, time and priority filters. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `systemd journal inspection` vendor manual or installed `--help`; [online vendor reference](https://www.freedesktop.org/software/systemd/man/latest/journalctl.html).

### 13. `journalctl -b -k --since '1 hour ago' --no-pager -n 150`

**Source line:** 65  |  **Tool/purpose:** systemd journal inspection  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
journalctl -b -k --since '1 hour ago' --no-pager -n 150
```

**What it does:** Query system and service journal messages with boot, unit, time and priority filters.

**Syntax:** journalctl -b -k --since 1 hour ago. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-b` — Filter journal to specified boot; otherwise command-specific.
**Option:** `-k` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Option:** `--since` — Select entries newer than a given time or duration.
**Option:** `--no-pager` — Print output directly rather than opening an interactive pager.
**Option:** `-n` — Namespace for kubectl/oc, number of lines for journalctl/tail, or another command-specific argument.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Query system and service journal messages with boot, unit, time and priority filters. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `systemd journal inspection` vendor manual or installed `--help`; [online vendor reference](https://www.freedesktop.org/software/systemd/man/latest/journalctl.html).

### 14. `journalctl -b -r --no-pager -n 100`

**Source line:** 66  |  **Tool/purpose:** systemd journal inspection  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
journalctl -b -r --no-pager -n 100
```

**What it does:** Query system and service journal messages with boot, unit, time and priority filters.

**Syntax:** journalctl -b -r --no-pager -n. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-b` — Filter journal to specified boot; otherwise command-specific.
**Option:** `-r` — Reverse order or recursive depending on command.
**Option:** `--no-pager` — Print output directly rather than opening an interactive pager.
**Option:** `-n` — Namespace for kubectl/oc, number of lines for journalctl/tail, or another command-specific argument.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Query system and service journal messages with boot, unit, time and priority filters. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `systemd journal inspection` vendor manual or installed `--help`; [online vendor reference](https://www.freedesktop.org/software/systemd/man/latest/journalctl.html).

### 15. `journalctl --disk-usage`

**Source line:** 67  |  **Tool/purpose:** systemd journal inspection  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
journalctl --disk-usage
```

**What it does:** Query system and service journal messages with boot, unit, time and priority filters.

**Syntax:** journalctl --disk-usage. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `--disk-usage` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Query system and service journal messages with boot, unit, time and priority filters. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `systemd journal inspection` vendor manual or installed `--help`; [online vendor reference](https://www.freedesktop.org/software/systemd/man/latest/journalctl.html).

### 16. `systemctl status YOUR_SERVICE --no-pager -l`

**Source line:** 89  |  **Tool/purpose:** systemd unit manager  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
systemctl status YOUR_SERVICE --no-pager -l
```

**What it does:** Inspect service state, recent logs and metadata.

**Syntax:** systemctl status YOUR_SERVICE --no-pager -l. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `--no-pager` — Print output directly rather than opening an interactive pager.
**Option:** `-l` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Substitute before running:** `YOUR_SERVICE`. Never assume an example target is the current cluster.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Inspect service state, recent logs and metadata. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `systemd unit manager` vendor manual or installed `--help`; [online vendor reference](https://www.freedesktop.org/software/systemd/man/latest/systemctl.html).

### 17. `journalctl -u YOUR_SERVICE -b --since '30 min ago' --no-pager -n 150`

**Source line:** 90  |  **Tool/purpose:** systemd journal inspection  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
journalctl -u YOUR_SERVICE -b --since '30 min ago' --no-pager -n 150
```

**What it does:** Filter systemd logs for the specified unit.

**Syntax:** journalctl -u YOUR_SERVICE -b --since. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-u` — Filter journal by systemd unit; in other tools may mean user.
**Option:** `-b` — Filter journal to specified boot; otherwise command-specific.
**Option:** `--since` — Select entries newer than a given time or duration.
**Option:** `--no-pager` — Print output directly rather than opening an interactive pager.
**Option:** `-n` — Namespace for kubectl/oc, number of lines for journalctl/tail, or another command-specific argument.
**Substitute before running:** `YOUR_SERVICE`. Never assume an example target is the current cluster.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Filter systemd logs for the specified unit. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `systemd journal inspection` vendor manual or installed `--help`; [online vendor reference](https://www.freedesktop.org/software/systemd/man/latest/journalctl.html).

### 18. `journalctl -u YOUR_SERVICE -b -p warning..alert --no-pager -n 100`

**Source line:** 91  |  **Tool/purpose:** systemd journal inspection  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
journalctl -u YOUR_SERVICE -b -p warning..alert --no-pager -n 100
```

**What it does:** Filter systemd logs for the specified unit.

**Syntax:** journalctl -u YOUR_SERVICE -b -p. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-u` — Filter journal by systemd unit; in other tools may mean user.
**Option:** `-b` — Filter journal to specified boot; otherwise command-specific.
**Option:** `-p` — Priority filter in journalctl; other meanings in other CLIs.
**Option:** `--no-pager` — Print output directly rather than opening an interactive pager.
**Option:** `-n` — Namespace for kubectl/oc, number of lines for journalctl/tail, or another command-specific argument.
**Substitute before running:** `YOUR_SERVICE`. Never assume an example target is the current cluster.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Filter systemd logs for the specified unit. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `systemd journal inspection` vendor manual or installed `--help`; [online vendor reference](https://www.freedesktop.org/software/systemd/man/latest/journalctl.html).

### 19. `systemctl show YOUR_SERVICE -p ExecMainStatus -p ExecMainCode -p NRestarts -p ActiveState`

**Source line:** 92  |  **Tool/purpose:** systemd unit manager  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
systemctl show YOUR_SERVICE -p ExecMainStatus -p ExecMainCode -p NRestarts -p ActiveState
```

**What it does:** Inspect or modify systemd-managed services and units.

**Syntax:** systemctl show YOUR_SERVICE -p ExecMainStatus. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-p` — Priority filter in journalctl; other meanings in other CLIs.
**Option:** `-p` — Priority filter in journalctl; other meanings in other CLIs.
**Option:** `-p` — Priority filter in journalctl; other meanings in other CLIs.
**Option:** `-p` — Priority filter in journalctl; other meanings in other CLIs.
**Substitute before running:** `YOUR_SERVICE`. Never assume an example target is the current cluster.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Inspect or modify systemd-managed services and units. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `systemd unit manager` vendor manual or installed `--help`; [online vendor reference](https://www.freedesktop.org/software/systemd/man/latest/systemctl.html).

### 20. `systemctl cat YOUR_SERVICE`

**Source line:** 93  |  **Tool/purpose:** systemd unit manager  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
systemctl cat YOUR_SERVICE
```

**What it does:** Inspect or modify systemd-managed services and units.

**Syntax:** systemctl cat YOUR_SERVICE. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Substitute before running:** `YOUR_SERVICE`. Never assume an example target is the current cluster.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Inspect or modify systemd-managed services and units. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `systemd unit manager` vendor manual or installed `--help`; [online vendor reference](https://www.freedesktop.org/software/systemd/man/latest/systemctl.html).

### 21. `df -hT`

**Source line:** 114  |  **Tool/purpose:** Filesystem capacity  |  **Impact:** **DIAGNOSTIC / REVIEW**

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

### 22. `df -i`

**Source line:** 115  |  **Tool/purpose:** Filesystem capacity  |  **Impact:** **DIAGNOSTIC / REVIEW**

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

### 23. `findmnt -T /var/log`

**Source line:** 116  |  **Tool/purpose:** findmnt operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
findmnt -T /var/log
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** findmnt -T /var/log. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-T` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `findmnt operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 24. `sudo du -xhd1 /var 2>/dev/null \| sort -h \| tail -20`

**Source line:** 117  |  **Tool/purpose:** du operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
sudo du -xhd1 /var 2>/dev/null | sort -h | tail -20
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** sudo du -xhd1 /var 2>/dev/null. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-xhd1` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Option:** `-h` — Human-readable units for storage tools; help in other commands.
**Option:** `-20` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Shell syntax:** `|` pipes stdout into the next process; check pipeline exit codes (pipefail where appropriate). `>` redirects/truncates output; confirm destination and permissions.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `du operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 25. `sudo journalctl -k -b --since '2 hours ago' \| grep -Ei 'I/O error\|timeout\|reset\|ext4\|xfs\|nvme\|scsi\|blk_update_reque…`

**Source line:** 118  |  **Tool/purpose:** systemd journal inspection  |  **Impact:** **CHANGE / POSSIBLY MUTATING**

**Exact command:**

```bash
sudo journalctl -k -b --since '2 hours ago' | grep -Ei 'I/O error|timeout|reset|ext4|xfs|nvme|scsi|blk_update_request' | tail -80
```

**What it does:** Query system and service journal messages with boot, unit, time and priority filters.

**Syntax:** sudo journalctl -k -b --since. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-k` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Option:** `-b` — Filter journal to specified boot; otherwise command-specific.
**Option:** `--since` — Select entries newer than a given time or duration.
**Option:** `-Ei` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Option:** `-80` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Shell syntax:** `|` pipes stdout into the next process; check pipeline exit codes (pipefail where appropriate).
**Safety/rollback:** Check subcommand and flags; requires change review and appropriate access.
**Expected result:** Query system and service journal messages with boot, unit, time and priority filters. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `systemd journal inspection` vendor manual or installed `--help`; [online vendor reference](https://www.freedesktop.org/software/systemd/man/latest/journalctl.html).

### 26. `iostat -xz 1 5`

**Source line:** 119  |  **Tool/purpose:** iostat operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

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

### 27. `lsblk -o NAME,TYPE,SIZE,FSTYPE,MOUNTPOINTS`

**Source line:** 120  |  **Tool/purpose:** lsblk operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
lsblk -o NAME,TYPE,SIZE,FSTYPE,MOUNTPOINTS
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** lsblk -o NAME,TYPE,SIZE,FSTYPE,MOUNTPOINTS. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-o` — Output format for kubectl/oc, filename for some tools; command-specific.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `lsblk operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 28. `journalctl -u sshd -b --since '1 hour ago' --no-pager -n 120`

**Source line:** 143  |  **Tool/purpose:** systemd journal inspection  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
journalctl -u sshd -b --since '1 hour ago' --no-pager -n 120
```

**What it does:** Filter systemd logs for the specified unit.

**Syntax:** journalctl -u sshd -b --since. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-u` — Filter journal by systemd unit; in other tools may mean user.
**Option:** `-b` — Filter journal to specified boot; otherwise command-specific.
**Option:** `--since` — Select entries newer than a given time or duration.
**Option:** `--no-pager` — Print output directly rather than opening an interactive pager.
**Option:** `-n` — Namespace for kubectl/oc, number of lines for journalctl/tail, or another command-specific argument.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Filter systemd logs for the specified unit. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `systemd journal inspection` vendor manual or installed `--help`; [online vendor reference](https://www.freedesktop.org/software/systemd/man/latest/journalctl.html).

### 29. `journalctl -u ssh -b --since '1 hour ago' --no-pager -n 120`

**Source line:** 144  |  **Tool/purpose:** systemd journal inspection  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
journalctl -u ssh -b --since '1 hour ago' --no-pager -n 120
```

**What it does:** Filter systemd logs for the specified unit.

**Syntax:** journalctl -u ssh -b --since. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-u` — Filter journal by systemd unit; in other tools may mean user.
**Option:** `-b` — Filter journal to specified boot; otherwise command-specific.
**Option:** `--since` — Select entries newer than a given time or duration.
**Option:** `--no-pager` — Print output directly rather than opening an interactive pager.
**Option:** `-n` — Namespace for kubectl/oc, number of lines for journalctl/tail, or another command-specific argument.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Filter systemd logs for the specified unit. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `systemd journal inspection` vendor manual or installed `--help`; [online vendor reference](https://www.freedesktop.org/software/systemd/man/latest/journalctl.html).

### 30. `sudo tail -n 100 /var/log/auth.log`

**Source line:** 145  |  **Tool/purpose:** tail operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
sudo tail -n 100 /var/log/auth.log
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** sudo tail -n 100 /var/log/auth.log. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-n` — Namespace for kubectl/oc, number of lines for journalctl/tail, or another command-specific argument.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information. **Credential caution:** command may reference credentials or identity; do not upload raw outputs.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `tail operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 31. `sudo tail -n 100 /var/log/secure`

**Source line:** 146  |  **Tool/purpose:** tail operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
sudo tail -n 100 /var/log/secure
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** sudo tail -n 100 /var/log/secure. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-n` — Namespace for kubectl/oc, number of lines for journalctl/tail, or another command-specific argument.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `tail operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 32. `sudo sshd -t`

**Source line:** 147  |  **Tool/purpose:** sshd operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

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

### 33. `sudo sshd -T \| grep -Ei 'passwordauthentication\|pubkeyauthentication\|permitrootlogin'`

**Source line:** 148  |  **Tool/purpose:** sshd operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
sudo sshd -T | grep -Ei 'passwordauthentication|pubkeyauthentication|permitrootlogin'
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** sudo sshd -T | grep. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-T` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Option:** `-Ei` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Shell syntax:** `|` pipes stdout into the next process; check pipeline exit codes (pipefail where appropriate).
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information. **Credential caution:** command may reference credentials or identity; do not upload raw outputs.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `sshd operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 34. `resolvectl status`

**Source line:** 170  |  **Tool/purpose:** resolvectl operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
resolvectl status
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** resolvectl status. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `resolvectl operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 35. `getent ahosts YOUR_FQDN`

**Source line:** 171  |  **Tool/purpose:** NSS lookup  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
getent ahosts YOUR_FQDN
```

**What it does:** Resolve users, groups and hosts through the operating system's NSS configuration.

**Syntax:** getent ahosts YOUR_FQDN. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Substitute before running:** `YOUR_FQDN`. Never assume an example target is the current cluster.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Resolve users, groups and hosts through the operating system's NSS configuration. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `NSS lookup` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/man1/getent.1.html).

### 36. `dig @YOUR_DNS_SERVER YOUR_FQDN A +time=2 +tries=1`

**Source line:** 172  |  **Tool/purpose:** dig operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

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

### 37. `ip route get YOUR_DESTINATION_IP`

**Source line:** 173  |  **Tool/purpose:** Linux network configuration  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
ip route get YOUR_DESTINATION_IP
```

**What it does:** Read or change Linux addresses, links, routes and neighbor information.

**Syntax:** ip route get YOUR_DESTINATION_IP. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Substitute before running:** `YOUR_DESTINATION_IP`. Never assume an example target is the current cluster.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Read or change Linux addresses, links, routes and neighbor information. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `Linux network configuration` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/man8/ip.8.html).

### 38. `curl -Iv --connect-timeout 5 https://YOUR_FQDN`

**Source line:** 174  |  **Tool/purpose:** HTTP request/diagnostic  |  **Impact:** **DIAGNOSTIC / REVIEW**

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

### 39. `timedatectl status`

**Source line:** 175  |  **Tool/purpose:** timedatectl operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
timedatectl status
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** timedatectl status. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `timedatectl operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 40. `journalctl -u systemd-resolved -b --no-pager -n 100`

**Source line:** 176  |  **Tool/purpose:** systemd journal inspection  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
journalctl -u systemd-resolved -b --no-pager -n 100
```

**What it does:** Filter systemd logs for the specified unit.

**Syntax:** journalctl -u systemd-resolved -b --no-pager. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-u` — Filter journal by systemd unit; in other tools may mean user.
**Option:** `-b` — Filter journal to specified boot; otherwise command-specific.
**Option:** `--no-pager` — Print output directly rather than opening an interactive pager.
**Option:** `-n` — Namespace for kubectl/oc, number of lines for journalctl/tail, or another command-specific argument.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Filter systemd logs for the specified unit. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `systemd journal inspection` vendor manual or installed `--help`; [online vendor reference](https://www.freedesktop.org/software/systemd/man/latest/journalctl.html).

### 41. `systemctl status containerd --no-pager`

**Source line:** 199  |  **Tool/purpose:** systemd unit manager  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
systemctl status containerd --no-pager
```

**What it does:** Inspect service state, recent logs and metadata.

**Syntax:** systemctl status containerd --no-pager. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `--no-pager` — Print output directly rather than opening an interactive pager.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Inspect service state, recent logs and metadata. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `systemd unit manager` vendor manual or installed `--help`; [online vendor reference](https://www.freedesktop.org/software/systemd/man/latest/systemctl.html).

### 42. `journalctl -u containerd -b --since '30 min ago' --no-pager -n 100`

**Source line:** 200  |  **Tool/purpose:** systemd journal inspection  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
journalctl -u containerd -b --since '30 min ago' --no-pager -n 100
```

**What it does:** Filter systemd logs for the specified unit.

**Syntax:** journalctl -u containerd -b --since. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-u` — Filter journal by systemd unit; in other tools may mean user.
**Option:** `-b` — Filter journal to specified boot; otherwise command-specific.
**Option:** `--since` — Select entries newer than a given time or duration.
**Option:** `--no-pager` — Print output directly rather than opening an interactive pager.
**Option:** `-n` — Namespace for kubectl/oc, number of lines for journalctl/tail, or another command-specific argument.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Filter systemd logs for the specified unit. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `systemd journal inspection` vendor manual or installed `--help`; [online vendor reference](https://www.freedesktop.org/software/systemd/man/latest/journalctl.html).

### 43. `journalctl -u kubelet -b --since '30 min ago' --no-pager -n 150`

**Source line:** 201  |  **Tool/purpose:** systemd journal inspection  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
journalctl -u kubelet -b --since '30 min ago' --no-pager -n 150
```

**What it does:** Filter systemd logs for the specified unit.

**Syntax:** journalctl -u kubelet -b --since. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-u` — Filter journal by systemd unit; in other tools may mean user.
**Option:** `-b` — Filter journal to specified boot; otherwise command-specific.
**Option:** `--since` — Select entries newer than a given time or duration.
**Option:** `--no-pager` — Print output directly rather than opening an interactive pager.
**Option:** `-n` — Namespace for kubectl/oc, number of lines for journalctl/tail, or another command-specific argument.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Filter systemd logs for the specified unit. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `systemd journal inspection` vendor manual or installed `--help`; [online vendor reference](https://www.freedesktop.org/software/systemd/man/latest/journalctl.html).

### 44. `journalctl -u k3s -b --since '30 min ago' --no-pager -n 150`

**Source line:** 202  |  **Tool/purpose:** systemd journal inspection  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
journalctl -u k3s -b --since '30 min ago' --no-pager -n 150
```

**What it does:** Filter systemd logs for the specified unit.

**Syntax:** journalctl -u k3s -b --since. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-u` — Filter journal by systemd unit; in other tools may mean user.
**Option:** `-b` — Filter journal to specified boot; otherwise command-specific.
**Option:** `--since` — Select entries newer than a given time or duration.
**Option:** `--no-pager` — Print output directly rather than opening an interactive pager.
**Option:** `-n` — Namespace for kubectl/oc, number of lines for journalctl/tail, or another command-specific argument.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Filter systemd logs for the specified unit. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `systemd journal inspection` vendor manual or installed `--help`; [online vendor reference](https://www.freedesktop.org/software/systemd/man/latest/journalctl.html).

### 45. `journalctl -u k3s-agent -b --since '30 min ago' --no-pager -n 150`

**Source line:** 203  |  **Tool/purpose:** systemd journal inspection  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
journalctl -u k3s-agent -b --since '30 min ago' --no-pager -n 150
```

**What it does:** Filter systemd logs for the specified unit.

**Syntax:** journalctl -u k3s-agent -b --since. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-u` — Filter journal by systemd unit; in other tools may mean user.
**Option:** `-b` — Filter journal to specified boot; otherwise command-specific.
**Option:** `--since` — Select entries newer than a given time or duration.
**Option:** `--no-pager` — Print output directly rather than opening an interactive pager.
**Option:** `-n` — Namespace for kubectl/oc, number of lines for journalctl/tail, or another command-specific argument.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Filter systemd logs for the specified unit. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `systemd journal inspection` vendor manual or installed `--help`; [online vendor reference](https://www.freedesktop.org/software/systemd/man/latest/journalctl.html).

### 46. `sudo crictl ps -a`

**Source line:** 204  |  **Tool/purpose:** CRI runtime diagnostics  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
sudo crictl ps -a
```

**What it does:** Inspect pods, containers and the configured container runtime.

**Syntax:** sudo crictl ps -a. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-a` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Inspect pods, containers and the configured container runtime. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `CRI runtime diagnostics` vendor manual or installed `--help`; [online vendor reference](https://github.com/kubernetes-sigs/cri-tools).

### 47. `sudo crictl info`

**Source line:** 205  |  **Tool/purpose:** CRI runtime diagnostics  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
sudo crictl info
```

**What it does:** Inspect pods, containers and the configured container runtime.

**Syntax:** sudo crictl info. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Inspect pods, containers and the configured container runtime. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `CRI runtime diagnostics` vendor manual or installed `--help`; [online vendor reference](https://github.com/kubernetes-sigs/cri-tools).

### 48. `sudo dmesg -T \| tail -100`

**Source line:** 206  |  **Tool/purpose:** dmesg operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
sudo dmesg -T | tail -100
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** sudo dmesg -T | tail. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-T` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Option:** `-100` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Shell syntax:** `|` pipes stdout into the next process; check pipeline exit codes (pipefail where appropriate).
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `dmesg operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 49. `ip -br link`

**Source line:** 230  |  **Tool/purpose:** Linux network configuration  |  **Impact:** **DIAGNOSTIC / REVIEW**

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

### 50. `ip -br addr`

**Source line:** 231  |  **Tool/purpose:** Linux network configuration  |  **Impact:** **DIAGNOSTIC / REVIEW**

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

### 51. `ip route`

**Source line:** 232  |  **Tool/purpose:** Linux network configuration  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
ip route
```

**What it does:** Read or change Linux addresses, links, routes and neighbor information.

**Syntax:** ip route. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Read or change Linux addresses, links, routes and neighbor information. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `Linux network configuration` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/man8/ip.8.html).

### 52. `ss -s`

**Source line:** 233  |  **Tool/purpose:** Socket inspection  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
ss -s
```

**What it does:** Show listening and active network sockets, protocols and owning processes when permitted.

**Syntax:** ss -s. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-s` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Show listening and active network sockets, protocols and owning processes when permitted. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `Socket inspection` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/man8/ss.8.html).

### 53. `sudo nft list ruleset`

**Source line:** 234  |  **Tool/purpose:** nft operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
sudo nft list ruleset
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** sudo nft list ruleset. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `nft operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 54. `sudo journalctl -k -b \| grep -Ei 'link.*down\|NETDEV\|watchdog\|drop\|conntrack\|NIC' \| tail -100`

**Source line:** 235  |  **Tool/purpose:** systemd journal inspection  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
sudo journalctl -k -b | grep -Ei 'link.*down|NETDEV|watchdog|drop|conntrack|NIC' | tail -100
```

**What it does:** Query system and service journal messages with boot, unit, time and priority filters.

**Syntax:** sudo journalctl -k -b |. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-k` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Option:** `-b` — Filter journal to specified boot; otherwise command-specific.
**Option:** `-Ei` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Option:** `-100` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Shell syntax:** `|` pipes stdout into the next process; check pipeline exit codes (pipefail where appropriate).
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Query system and service journal messages with boot, unit, time and priority filters. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `systemd journal inspection` vendor manual or installed `--help`; [online vendor reference](https://www.freedesktop.org/software/systemd/man/latest/journalctl.html).

### 55. `sudo ethtool YOUR_INTERFACE`

**Source line:** 236  |  **Tool/purpose:** ethtool operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
sudo ethtool YOUR_INTERFACE
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** sudo ethtool YOUR_INTERFACE. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Substitute before running:** `YOUR_INTERFACE`. Never assume an example target is the current cluster.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `ethtool operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 56. `mkdir -p ./incident-logs`

**Source line:** 290  |  **Tool/purpose:** mkdir operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
mkdir -p ./incident-logs
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** mkdir -p ./incident-logs. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-p` — Priority filter in journalctl; other meanings in other CLIs.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `mkdir operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 57. `journalctl -b -p err..alert --since '30 min ago' --no-pager -n 200 > ./incident-logs/errors.txt`

**Source line:** 291  |  **Tool/purpose:** systemd journal inspection  |  **Impact:** **LOCAL FILE WRITE / POSSIBLY MUTATING**

**Exact command:**

```bash
journalctl -b -p err..alert --since '30 min ago' --no-pager -n 200 > ./incident-logs/errors.txt
```

**What it does:** Query system and service journal messages with boot, unit, time and priority filters.

**Syntax:** journalctl -b -p err..alert --since. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-b` — Filter journal to specified boot; otherwise command-specific.
**Option:** `-p` — Priority filter in journalctl; other meanings in other CLIs.
**Option:** `--since` — Select entries newer than a given time or duration.
**Option:** `--no-pager` — Print output directly rather than opening an interactive pager.
**Option:** `-n` — Namespace for kubectl/oc, number of lines for journalctl/tail, or another command-specific argument.
**Shell syntax:** `>` redirects/truncates output; confirm destination and permissions.
**Safety/rollback:** Shell redirection may create/truncate files; verify output destination.
**Expected result:** Query system and service journal messages with boot, unit, time and priority filters. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `systemd journal inspection` vendor manual or installed `--help`; [online vendor reference](https://www.freedesktop.org/software/systemd/man/latest/journalctl.html).

### 58. `systemctl --failed --no-pager > ./incident-logs/failed-services.txt`

**Source line:** 292  |  **Tool/purpose:** systemd unit manager  |  **Impact:** **LOCAL FILE WRITE / POSSIBLY MUTATING**

**Exact command:**

```bash
systemctl --failed --no-pager > ./incident-logs/failed-services.txt
```

**What it does:** Inspect or modify systemd-managed services and units.

**Syntax:** systemctl --failed --no-pager > ./incident-logs/failed-services.txt. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `--failed` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Option:** `--no-pager` — Print output directly rather than opening an interactive pager.
**Shell syntax:** `>` redirects/truncates output; confirm destination and permissions.
**Safety/rollback:** Shell redirection may create/truncate files; verify output destination.
**Expected result:** Inspect or modify systemd-managed services and units. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `systemd unit manager` vendor manual or installed `--help`; [online vendor reference](https://www.freedesktop.org/software/systemd/man/latest/systemctl.html).

### 59. `df -hT > ./incident-logs/disk.txt`

**Source line:** 293  |  **Tool/purpose:** Filesystem capacity  |  **Impact:** **LOCAL FILE WRITE / POSSIBLY MUTATING**

**Exact command:**

```bash
df -hT > ./incident-logs/disk.txt
```

**What it does:** Display filesystem usage; bytes with -h or inodes with -i.

**Syntax:** df -hT > ./incident-logs/disk.txt. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-hT` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Shell syntax:** `>` redirects/truncates output; confirm destination and permissions.
**Safety/rollback:** Shell redirection may create/truncate files; verify output destination.
**Expected result:** Display filesystem usage; bytes with -h or inodes with -i. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `Filesystem capacity` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/man1/df.1.html).

### 60. `uptime > ./incident-logs/uptime.txt`

**Source line:** 294  |  **Tool/purpose:** uptime operation  |  **Impact:** **LOCAL FILE WRITE / POSSIBLY MUTATING**

**Exact command:**

```bash
uptime > ./incident-logs/uptime.txt
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** uptime > ./incident-logs/uptime.txt. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Shell syntax:** `>` redirects/truncates output; confirm destination and permissions.
**Safety/rollback:** Shell redirection may create/truncate files; verify output destination.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `uptime operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

