# Offline Linux command explanations: 03-ADVANCED-TROUBLESHOOTING.md

Fully local searchable catalog sourced from [03-ADVANCED-TROUBLESHOOTING.md](../03-ADVANCED-TROUBLESHOOTING.md). Every command includes syntax, purpose, options, output and safety. Verify ambiguous flags with installed `--help` / manual pages.

## 1. uptime

```bash
uptime
```

**Purpose:** Runs the named command with supplied target arguments; consult its exact local manual for detailed semantics.

**Full syntax:** executable `uptime`; following words identify subcommands and target, followed by options (none). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** Runs the named command with supplied target arguments; consult its exact local manual for detailed semantics. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 2. top -b -n1 | head -60

```bash
top -b -n1 | head -60
```

**Purpose:** Live process usage and resource statistics.

**Full syntax:** executable `top`; following words identify subcommands and target, followed by options `-b` (verify exact option in this CLI), `-n1` (verify exact option in this CLI), `-60` (verify exact option in this CLI). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** Live process usage and resource statistics. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 3. vmstat 1 5

```bash
vmstat 1 5
```

**Purpose:** Kernel CPU, memory, swap and IO counters.

**Full syntax:** executable `vmstat`; following words identify subcommands and target, followed by options (none). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** Kernel CPU, memory, swap and IO counters. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 4. pidstat -dur 1 5

```bash
pidstat -dur 1 5
```

**Purpose:** Runs the named command with supplied target arguments; consult its exact local manual for detailed semantics.

**Full syntax:** executable `pidstat`; following words identify subcommands and target, followed by options `-dur` (verify exact option in this CLI). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** Runs the named command with supplied target arguments; consult its exact local manual for detailed semantics. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 5. free -h

```bash
free -h
```

**Purpose:** RAM and swap usage.

**Full syntax:** executable `free`; following words identify subcommands and target, followed by options `-h` (verify exact option in this CLI). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** RAM and swap usage. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 6. dmesg -T | tail -100

```bash
dmesg -T | tail -100
```

**Purpose:** Runs the named command with supplied target arguments; consult its exact local manual for detailed semantics.

**Full syntax:** executable `dmesg`; following words identify subcommands and target, followed by options `-T` (verify exact option in this CLI), `-100` (verify exact option in this CLI). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** Runs the named command with supplied target arguments; consult its exact local manual for detailed semantics. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 7. journalctl -k -b -p warning --no-pager

```bash
journalctl -k -b -p warning --no-pager
```

**Purpose:** Reads systemd journal messages (unit, boot, time and priority filters).

**Full syntax:** executable `journalctl`; following words identify subcommands and target, followed by options `-k` (verify exact option in this CLI), `-b` (verify exact option in this CLI), `-p` (verify exact option in this CLI), `--no-pager` (verify exact option in this CLI). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** Reads systemd journal messages (unit, boot, time and priority filters). Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 8. df -hT

```bash
df -hT
```

**Purpose:** Reports filesystem capacity and inode usage.

**Full syntax:** executable `df`; following words identify subcommands and target, followed by options `-hT` (verify exact option in this CLI). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** Reports filesystem capacity and inode usage. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 9. df -i

```bash
df -i
```

**Purpose:** Reports filesystem capacity and inode usage.

**Full syntax:** executable `df`; following words identify subcommands and target, followed by options `-i` (verify exact option in this CLI). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** Reports filesystem capacity and inode usage. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 10. lsblk -o NAME,SIZE,FSTYPE,MOUNTPOINT,TYPE

```bash
lsblk -o NAME,SIZE,FSTYPE,MOUNTPOINT,TYPE
```

**Purpose:** Enumerates block devices, partitions and filesystems.

**Full syntax:** executable `lsblk`; following words identify subcommands and target, followed by options `-o` (verify exact option in this CLI). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** Enumerates block devices, partitions and filesystems. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 11. findmnt -R /var

```bash
findmnt -R /var
```

**Purpose:** Runs the named command with supplied target arguments; consult its exact local manual for detailed semantics.

**Full syntax:** executable `findmnt`; following words identify subcommands and target, followed by options `-R` (verify exact option in this CLI). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** Runs the named command with supplied target arguments; consult its exact local manual for detailed semantics. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 12. iostat -xz 1 5

```bash
iostat -xz 1 5
```

**Purpose:** Block device throughput, queueing and latency metrics.

**Full syntax:** executable `iostat`; following words identify subcommands and target, followed by options `-xz` (verify exact option in this CLI). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** Block device throughput, queueing and latency metrics. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 13. sudo smartctl -a /dev/YOUR_DISK

```bash
sudo smartctl -a /dev/YOUR_DISK
```

**Purpose:** Runs the named command with supplied target arguments; consult its exact local manual for detailed semantics.

**Full syntax:** executable `smartctl`; following words identify subcommands and target, followed by options `-a` (verify exact option in this CLI). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** YOUR_DISK.

**Expected outcome:** Runs the named command with supplied target arguments; consult its exact local manual for detailed semantics. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 14. sudo journalctl -k --since '2 hours ago' | grep -Ei 'error|reset|i/o|nvme|scsi|xfs|ext4'

```bash
sudo journalctl -k --since '2 hours ago' | grep -Ei 'error|reset|i/o|nvme|scsi|xfs|ext4'
```

**Purpose:** Reads systemd journal messages (unit, boot, time and priority filters).

**Full syntax:** executable `journalctl`; following words identify subcommands and target, followed by options `-k` (verify exact option in this CLI), `--since` (verify exact option in this CLI), `-Ei` (verify exact option in this CLI). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** Reads systemd journal messages (unit, boot, time and priority filters). Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 15. ip -br link

```bash
ip -br link
```

**Purpose:** Displays or modifies Linux link/address/route state.

**Full syntax:** executable `ip`; following words identify subcommands and target, followed by options `-br` (verify exact option in this CLI). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** Displays or modifies Linux link/address/route state. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 16. ip addr

```bash
ip addr
```

**Purpose:** Displays or modifies Linux link/address/route state.

**Full syntax:** executable `ip`; following words identify subcommands and target, followed by options (none). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** Displays or modifies Linux link/address/route state. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 17. ip route get 1.1.1.1

```bash
ip route get 1.1.1.1
```

**Purpose:** Displays or modifies Linux link/address/route state.

**Full syntax:** executable `ip`; following words identify subcommands and target, followed by options (none). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** Displays or modifies Linux link/address/route state. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 18. resolvectl status

```bash
resolvectl status
```

**Purpose:** Runs the named command with supplied target arguments; consult its exact local manual for detailed semantics.

**Full syntax:** executable `resolvectl`; following words identify subcommands and target, followed by options (none). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** Runs the named command with supplied target arguments; consult its exact local manual for detailed semantics. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 19. dig @YOUR_DNS_SERVER YOUR_FQDN A +time=2 +tries=1

```bash
dig @YOUR_DNS_SERVER YOUR_FQDN A +time=2 +tries=1
```

**Purpose:** Runs the named command with supplied target arguments; consult its exact local manual for detailed semantics.

**Full syntax:** executable `dig`; following words identify subcommands and target, followed by options (none). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** YOUR_DNS_SERVER, YOUR_FQDN.

**Expected outcome:** Runs the named command with supplied target arguments; consult its exact local manual for detailed semantics. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 20. dig @YOUR_DNS_SERVER YOUR_FQDN A +tcp

```bash
dig @YOUR_DNS_SERVER YOUR_FQDN A +tcp
```

**Purpose:** Runs the named command with supplied target arguments; consult its exact local manual for detailed semantics.

**Full syntax:** executable `dig`; following words identify subcommands and target, followed by options (none). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** YOUR_DNS_SERVER, YOUR_FQDN.

**Expected outcome:** Runs the named command with supplied target arguments; consult its exact local manual for detailed semantics. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 21. curl -Iv --connect-timeout 5 https://YOUR_FQDN

```bash
curl -Iv --connect-timeout 5 https://YOUR_FQDN
```

**Purpose:** HTTP(S) request / endpoint diagnostic.

**Full syntax:** executable `curl`; following words identify subcommands and target, followed by options `-Iv` (verify exact option in this CLI), `--connect-timeout` (verify exact option in this CLI). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** YOUR_FQDN.

**Expected outcome:** HTTP(S) request / endpoint diagnostic. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 22. sudo tcpdump -ni YOUR_INTERFACE 'port 53' -c 50

```bash
sudo tcpdump -ni YOUR_INTERFACE 'port 53' -c 50
```

**Purpose:** Runs the named command with supplied target arguments; consult its exact local manual for detailed semantics.

**Full syntax:** executable `tcpdump`; following words identify subcommands and target, followed by options `-ni` (verify exact option in this CLI), `-c` (verify exact option in this CLI). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** YOUR_INTERFACE.

**Expected outcome:** Runs the named command with supplied target arguments; consult its exact local manual for detailed semantics. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 23. systemctl status YOUR_SERVICE --no-pager

```bash
systemctl status YOUR_SERVICE --no-pager
```

**Purpose:** Reads or changes state of systemd-managed services.

**Full syntax:** executable `systemctl`; following words identify subcommands and target, followed by options `--no-pager` (verify exact option in this CLI). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** YOUR_SERVICE.

**Expected outcome:** Reads or changes state of systemd-managed services. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 24. journalctl -u YOUR_SERVICE -b --no-pager -n 150

```bash
journalctl -u YOUR_SERVICE -b --no-pager -n 150
```

**Purpose:** Reads systemd journal messages (unit, boot, time and priority filters).

**Full syntax:** executable `journalctl`; following words identify subcommands and target, followed by options `-u` (verify exact option in this CLI), `-b` (verify exact option in this CLI), `--no-pager` (verify exact option in this CLI), `-n` (verify exact option in this CLI). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** YOUR_SERVICE.

**Expected outcome:** Reads systemd journal messages (unit, boot, time and priority filters). Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 25. sudo coredumpctl list

```bash
sudo coredumpctl list
```

**Purpose:** Runs the named command with supplied target arguments; consult its exact local manual for detailed semantics.

**Full syntax:** executable `coredumpctl`; following words identify subcommands and target, followed by options (none). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** Runs the named command with supplied target arguments; consult its exact local manual for detailed semantics. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 26. sudo ausearch -m AVC -ts recent

```bash
sudo ausearch -m AVC -ts recent
```

**Purpose:** Queries audit/SELinux AVC denial events.

**Full syntax:** executable `ausearch`; following words identify subcommands and target, followed by options `-m` (verify exact option in this CLI), `-ts` (verify exact option in this CLI). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** Queries audit/SELinux AVC denial events. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 27. sudo semanage fcontext -l | head -25

```bash
sudo semanage fcontext -l | head -25
```

**Purpose:** Runs the named command with supplied target arguments; consult its exact local manual for detailed semantics.

**Full syntax:** executable `semanage`; following words identify subcommands and target, followed by options `-l` (verify exact option in this CLI), `-25` (verify exact option in this CLI). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** Runs the named command with supplied target arguments; consult its exact local manual for detailed semantics. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 28. sudo sshd -T | head -30

```bash
sudo sshd -T | head -30
```

**Purpose:** Runs the named command with supplied target arguments; consult its exact local manual for detailed semantics.

**Full syntax:** executable `sshd`; following words identify subcommands and target, followed by options `-T` (verify exact option in this CLI), `-30` (verify exact option in this CLI). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** Runs the named command with supplied target arguments; consult its exact local manual for detailed semantics. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 29. timedatectl status

```bash
timedatectl status
```

**Purpose:** Time synchronization, timezone and clock status.

**Full syntax:** executable `timedatectl`; following words identify subcommands and target, followed by options (none). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** Time synchronization, timezone and clock status. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 30. chronyc tracking

```bash
chronyc tracking
```

**Purpose:** Runs the named command with supplied target arguments; consult its exact local manual for detailed semantics.

**Full syntax:** executable `chronyc`; following words identify subcommands and target, followed by options (none). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** Runs the named command with supplied target arguments; consult its exact local manual for detailed semantics. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 31. chronyc sources -v

```bash
chronyc sources -v
```

**Purpose:** Runs the named command with supplied target arguments; consult its exact local manual for detailed semantics.

**Full syntax:** executable `chronyc`; following words identify subcommands and target, followed by options `-v` (verify exact option in this CLI). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** Runs the named command with supplied target arguments; consult its exact local manual for detailed semantics. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 32. sudo journalctl -u chronyd -n 70 --no-pager

```bash
sudo journalctl -u chronyd -n 70 --no-pager
```

**Purpose:** Reads systemd journal messages (unit, boot, time and priority filters).

**Full syntax:** executable `journalctl`; following words identify subcommands and target, followed by options `-u` (verify exact option in this CLI), `-n` (verify exact option in this CLI), `--no-pager` (verify exact option in this CLI). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** Reads systemd journal messages (unit, boot, time and priority filters). Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

