# Offline Linux command explanations: 01-LINUX-SETUP-OPERATIONS.md

Fully local searchable catalog sourced from [01-LINUX-SETUP-OPERATIONS.md](../01-LINUX-SETUP-OPERATIONS.md). Every command includes syntax, purpose, options, output and safety. Verify ambiguous flags with installed `--help` / manual pages.

## 1. cat /etc/os-release

```bash
cat /etc/os-release
```

**Purpose:** Runs the named command with supplied target arguments; consult its exact local manual for detailed semantics.

**Full syntax:** executable `cat`; following words identify subcommands and target, followed by options (none). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** Runs the named command with supplied target arguments; consult its exact local manual for detailed semantics. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 2. uname -r

```bash
uname -r
```

**Purpose:** Kernel/architecture identification.

**Full syntax:** executable `uname`; following words identify subcommands and target, followed by options `-r` (verify exact option in this CLI). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** Kernel/architecture identification. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 3. hostnamectl

```bash
hostnamectl
```

**Purpose:** Shows or changes hostname and host identity.

**Full syntax:** executable `hostnamectl`; following words identify subcommands and target, followed by options (none). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** Shows or changes hostname and host identity. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 4. timedatectl status

```bash
timedatectl status
```

**Purpose:** Time synchronization, timezone and clock status.

**Full syntax:** executable `timedatectl`; following words identify subcommands and target, followed by options (none). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** Time synchronization, timezone and clock status. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 5. id

```bash
id
```

**Purpose:** Current account identity and groups.

**Full syntax:** executable `id`; following words identify subcommands and target, followed by options (none). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** Current account identity and groups. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 6. whoami

```bash
whoami
```

**Purpose:** Runs the named command with supplied target arguments; consult its exact local manual for detailed semantics.

**Full syntax:** executable `whoami`; following words identify subcommands and target, followed by options (none). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** Runs the named command with supplied target arguments; consult its exact local manual for detailed semantics. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 7. ip -br addr

```bash
ip -br addr
```

**Purpose:** Displays or modifies Linux link/address/route state.

**Full syntax:** executable `ip`; following words identify subcommands and target, followed by options `-br` (verify exact option in this CLI). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** Displays or modifies Linux link/address/route state. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 8. ip route

```bash
ip route
```

**Purpose:** Displays or modifies Linux link/address/route state.

**Full syntax:** executable `ip`; following words identify subcommands and target, followed by options (none). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** Displays or modifies Linux link/address/route state. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 9. lsblk -f

```bash
lsblk -f
```

**Purpose:** Enumerates block devices, partitions and filesystems.

**Full syntax:** executable `lsblk`; following words identify subcommands and target, followed by options `-f` (verify exact option in this CLI). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** Enumerates block devices, partitions and filesystems. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 10. findmnt /

```bash
findmnt /
```

**Purpose:** Runs the named command with supplied target arguments; consult its exact local manual for detailed semantics.

**Full syntax:** executable `findmnt`; following words identify subcommands and target, followed by options (none). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** Runs the named command with supplied target arguments; consult its exact local manual for detailed semantics. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 11. sudo apt-get update

```bash
sudo apt-get update
```

**Purpose:** Ubuntu/Debian package installation/index/update command.

**Full syntax:** executable `apt-get`; following words identify subcommands and target, followed by options (none). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** Ubuntu/Debian package installation/index/update command. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟠 Potentially changes operating system; get approval and rollback/recovery access.

## 12. apt list --upgradable

```bash
apt list --upgradable
```

**Purpose:** Ubuntu/Debian package administration.

**Full syntax:** executable `apt`; following words identify subcommands and target, followed by options `--upgradable` (verify exact option in this CLI). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** Ubuntu/Debian package administration. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 13. sudo dnf check-update

```bash
sudo dnf check-update
```

**Purpose:** RHEL-family package manager.

**Full syntax:** executable `dnf`; following words identify subcommands and target, followed by options (none). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** RHEL-family package manager. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟠 Potentially changes operating system; get approval and rollback/recovery access.

## 14. sudo apt-get install -y curl jq vim

```bash
sudo apt-get install -y curl jq vim
```

**Purpose:** Ubuntu/Debian package installation/index/update command.

**Full syntax:** executable `apt-get`; following words identify subcommands and target, followed by options `-y` (verify exact option in this CLI). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** Ubuntu/Debian package installation/index/update command. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟠 Potentially changes operating system; get approval and rollback/recovery access.

## 15. sudo dnf install -y curl jq vim

```bash
sudo dnf install -y curl jq vim
```

**Purpose:** RHEL-family package manager.

**Full syntax:** executable `dnf`; following words identify subcommands and target, followed by options `-y` (verify exact option in this CLI). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** RHEL-family package manager. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟠 Potentially changes operating system; get approval and rollback/recovery access.

## 16. systemctl --failed

```bash
systemctl --failed
```

**Purpose:** Reads or changes state of systemd-managed services.

**Full syntax:** executable `systemctl`; following words identify subcommands and target, followed by options `--failed` (verify exact option in this CLI). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** Reads or changes state of systemd-managed services. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 17. systemctl status ssh --no-pager

```bash
systemctl status ssh --no-pager
```

**Purpose:** Reads or changes state of systemd-managed services.

**Full syntax:** executable `systemctl`; following words identify subcommands and target, followed by options `--no-pager` (verify exact option in this CLI). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** Reads or changes state of systemd-managed services. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 18. systemctl status sshd --no-pager

```bash
systemctl status sshd --no-pager
```

**Purpose:** Reads or changes state of systemd-managed services.

**Full syntax:** executable `systemctl`; following words identify subcommands and target, followed by options `--no-pager` (verify exact option in this CLI). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** Reads or changes state of systemd-managed services. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 19. journalctl -p err -b --no-pager

```bash
journalctl -p err -b --no-pager
```

**Purpose:** Reads systemd journal messages (unit, boot, time and priority filters).

**Full syntax:** executable `journalctl`; following words identify subcommands and target, followed by options `-p` (verify exact option in this CLI), `-b` (verify exact option in this CLI), `--no-pager` (verify exact option in this CLI). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** Reads systemd journal messages (unit, boot, time and priority filters). Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 20. journalctl -u YOUR_SERVICE --since '1 hour ago' --no-pager

```bash
journalctl -u YOUR_SERVICE --since '1 hour ago' --no-pager
```

**Purpose:** Reads systemd journal messages (unit, boot, time and priority filters).

**Full syntax:** executable `journalctl`; following words identify subcommands and target, followed by options `-u` (verify exact option in this CLI), `--since` (verify exact option in this CLI), `--no-pager` (verify exact option in this CLI). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** YOUR_SERVICE.

**Expected outcome:** Reads systemd journal messages (unit, boot, time and priority filters). Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 21. sudo systemctl restart YOUR_SERVICE

```bash
sudo systemctl restart YOUR_SERVICE
```

**Purpose:** Reads or changes state of systemd-managed services.

**Full syntax:** executable `systemctl`; following words identify subcommands and target, followed by options (none). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** YOUR_SERVICE.

**Expected outcome:** Reads or changes state of systemd-managed services. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟠 Potentially changes operating system; get approval and rollback/recovery access.

## 22. df -hT

```bash
df -hT
```

**Purpose:** Reports filesystem capacity and inode usage.

**Full syntax:** executable `df`; following words identify subcommands and target, followed by options `-hT` (verify exact option in this CLI). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** Reports filesystem capacity and inode usage. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 23. df -i

```bash
df -i
```

**Purpose:** Reports filesystem capacity and inode usage.

**Full syntax:** executable `df`; following words identify subcommands and target, followed by options `-i` (verify exact option in this CLI). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** Reports filesystem capacity and inode usage. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 24. free -h

```bash
free -h
```

**Purpose:** RAM and swap usage.

**Full syntax:** executable `free`; following words identify subcommands and target, followed by options `-h` (verify exact option in this CLI). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** RAM and swap usage. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 25. vmstat 1 5

```bash
vmstat 1 5
```

**Purpose:** Kernel CPU, memory, swap and IO counters.

**Full syntax:** executable `vmstat`; following words identify subcommands and target, followed by options (none). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** Kernel CPU, memory, swap and IO counters. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 26. top -b -n1 | head -45

```bash
top -b -n1 | head -45
```

**Purpose:** Live process usage and resource statistics.

**Full syntax:** executable `top`; following words identify subcommands and target, followed by options `-b` (verify exact option in this CLI), `-n1` (verify exact option in this CLI), `-45` (verify exact option in this CLI). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** Live process usage and resource statistics. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 27. ps aux --sort=-%mem | head -15

```bash
ps aux --sort=-%mem | head -15
```

**Purpose:** Lists processes and resource usage.

**Full syntax:** executable `ps`; following words identify subcommands and target, followed by options `--sort=-%mem` (verify exact option in this CLI), `-15` (verify exact option in this CLI). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** Lists processes and resource usage. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 28. ss -tulpen

```bash
ss -tulpen
```

**Purpose:** Displays listening/established network sockets.

**Full syntax:** executable `ss`; following words identify subcommands and target, followed by options `-tulpen` (verify exact option in this CLI). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** Displays listening/established network sockets. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 29. lsof -iTCP -sTCP:LISTEN

```bash
lsof -iTCP -sTCP:LISTEN
```

**Purpose:** Lists open files and network sockets.

**Full syntax:** executable `lsof`; following words identify subcommands and target, followed by options `-iTCP` (verify exact option in this CLI), `-sTCP:LISTEN` (verify exact option in this CLI). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** Lists open files and network sockets. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 30. getent passwd YOUR_USER

```bash
getent passwd YOUR_USER
```

**Purpose:** Resolves NSS users, groups and hostnames.

**Full syntax:** executable `getent`; following words identify subcommands and target, followed by options (none). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** YOUR_USER.

**Expected outcome:** Resolves NSS users, groups and hostnames. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟠 Potentially changes operating system; get approval and rollback/recovery access.

## 31. sudo visudo -c

```bash
sudo visudo -c
```

**Purpose:** Runs the named command with supplied target arguments; consult its exact local manual for detailed semantics.

**Full syntax:** executable `visudo`; following words identify subcommands and target, followed by options `-c` (verify exact option in this CLI). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** Runs the named command with supplied target arguments; consult its exact local manual for detailed semantics. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 32. sudo sshd -t

```bash
sudo sshd -t
```

**Purpose:** Runs the named command with supplied target arguments; consult its exact local manual for detailed semantics.

**Full syntax:** executable `sshd`; following words identify subcommands and target, followed by options `-t` (verify exact option in this CLI). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** Runs the named command with supplied target arguments; consult its exact local manual for detailed semantics. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 33. sudo getfacl /srv/data

```bash
sudo getfacl /srv/data
```

**Purpose:** Runs the named command with supplied target arguments; consult its exact local manual for detailed semantics.

**Full syntax:** executable `getfacl`; following words identify subcommands and target, followed by options (none). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** Runs the named command with supplied target arguments; consult its exact local manual for detailed semantics. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 34. sudo journalctl -u sshd -n 50 --no-pager

```bash
sudo journalctl -u sshd -n 50 --no-pager
```

**Purpose:** Reads systemd journal messages (unit, boot, time and priority filters).

**Full syntax:** executable `journalctl`; following words identify subcommands and target, followed by options `-u` (verify exact option in this CLI), `-n` (verify exact option in this CLI), `--no-pager` (verify exact option in this CLI). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** Reads systemd journal messages (unit, boot, time and priority filters). Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

