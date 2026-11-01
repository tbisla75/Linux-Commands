# Linux commands explained in plain English: 01-LINUX-SETUP-OPERATIONS.md

**Offline incident reference.** Find the exact command, see what it does, why to run it, how to interpret the results, and whether it can change your host. Some commands need optional packages or root permissions. Original: [01-LINUX-SETUP-OPERATIONS.md](../01-LINUX-SETUP-OPERATIONS.md).

## 1. cat /etc/os-release

```bash
cat /etc/os-release
```

**What it does:** Prints the contents of file `/etc/os-release` to your terminal without modifying it.

**How to read the command:** `cat` is the utility. Remaining words specify the file, service, device, user, host or action.

**Expected output:** Distribution name and version such as Ubuntu/Debian/RHEL.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 2. uname -r

```bash
uname -r
```

**What it does:** Shows details about the running Linux kernel.

**How to read the command:** `uname` is the utility. Options: `-r` means reverse order for journalctl; other meanings on other programs.

**Expected output:** The kernel release, useful for matching patches or drivers.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 3. hostnamectl

```bash
hostnamectl
```

**What it does:** Shows the hostname, operating system, CPU architecture and kernel running on this machine.

**How to read the command:** `hostnamectl` is the utility. Remaining words specify the file, service, device, user, host or action.

**Expected output:** A summary showing the host name, OS, kernel and virtualization platform.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 4. timedatectl status

```bash
timedatectl status
```

**What it does:** Checks time, timezone and whether system time is synchronized. Time drift can break TLS, authentication and cluster quorum.

**How to read the command:** `timedatectl` is the utility. Remaining words specify the file, service, device, user, host or action.

**Expected output:** Local/UTC time, timezone and NTP synchronization status.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 5. id

```bash
id
```

**What it does:** Runs the installed Linux utility `id` with the following arguments. This action depends on the specific tool and environment.

**How to read the command:** `id` is the utility. Remaining words specify the file, service, device, user, host or action.

**Expected output:** Program output or error; inspect the original runbook and `man id` if available.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 6. whoami

```bash
whoami
```

**What it does:** Runs the installed Linux utility `whoami` with the following arguments. This action depends on the specific tool and environment.

**How to read the command:** `whoami` is the utility. Remaining words specify the file, service, device, user, host or action.

**Expected output:** Program output or error; inspect the original runbook and `man whoami` if available.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 7. ip -br addr

```bash
ip -br addr
```

**What it does:** Displays or inspects Linux interfaces, addresses or routes.

**How to read the command:** `ip` is the utility. Options: `-br` means a program-specific setting; check its local `--help`.

**Expected output:** Interfaces/IPs, link state or selected gateway and route.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 8. ip route

```bash
ip route
```

**What it does:** Displays the Linux routing table or the path the kernel would choose to reach an IP.

**How to read the command:** `ip` is the utility. Remaining words specify the file, service, device, user, host or action.

**Expected output:** Interfaces/IPs, link state or selected gateway and route.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 9. lsblk -f

```bash
lsblk -f
```

**What it does:** Shows disks and partitions that Linux sees and where they are mounted.

**How to read the command:** `lsblk` is the utility. Options: `-f` means follow new log lines (journalctl/tail); path/force on other utilities.

**Expected output:** Device names, sizes, types, filesystems and mountpoints.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 10. findmnt /

```bash
findmnt /
```

**What it does:** Runs the installed Linux utility `findmnt` with the following arguments. This action depends on the specific tool and environment.

**How to read the command:** `findmnt` is the utility. Remaining words specify the file, service, device, user, host or action.

**Expected output:** Program output or error; inspect the original runbook and `man findmnt` if available.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 11. sudo apt-get update

```bash
sudo apt-get update
```

**What it does:** Uses the distro's package manager to upgrade package indexes or system packages (tool-specific). This can modify a production server.

**How to read the command:** `apt-get` is the utility. Remaining words specify the file, service, device, user, host or action.

**Expected output:** Package versions, dependency plan, downloads or installed/updated packages.

**Before running:** Check that you're on the correct Linux server/distribution. ⚠️ This may change the OS, accounts, services or submitted workloads; have approval/rollback.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 12. apt list --upgradable

```bash
apt list --upgradable
```

**What it does:** Uses the distro's package manager to query or manage packages. This can modify a production server.

**How to read the command:** `apt` is the utility. Options: `--upgradable` means a program-specific setting; check its local `--help`.

**Expected output:** Package versions, dependency plan, downloads or installed/updated packages.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 13. sudo dnf check-update

```bash
sudo dnf check-update
```

**What it does:** Uses the distro's package manager to check for available updates. This can modify a production server.

**How to read the command:** `dnf` is the utility. Remaining words specify the file, service, device, user, host or action.

**Expected output:** Package versions, dependency plan, downloads or installed/updated packages.

**Before running:** Check that you're on the correct Linux server/distribution. ⚠️ This may change the OS, accounts, services or submitted workloads; have approval/rollback.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 14. sudo apt-get install -y curl jq vim

```bash
sudo apt-get install -y curl jq vim
```

**What it does:** Uses the distro's package manager to install selected packages. This can modify a production server.

**How to read the command:** `apt-get` is the utility. Options: `-y` means a program-specific setting; check its local `--help`.

**Expected output:** Package versions, dependency plan, downloads or installed/updated packages.

**Before running:** Check that you're on the correct Linux server/distribution. ⚠️ This may change the OS, accounts, services or submitted workloads; have approval/rollback.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 15. sudo dnf install -y curl jq vim

```bash
sudo dnf install -y curl jq vim
```

**What it does:** Uses the distro's package manager to install selected packages. This can modify a production server.

**How to read the command:** `dnf` is the utility. Options: `-y` means a program-specific setting; check its local `--help`.

**Expected output:** Package versions, dependency plan, downloads or installed/updated packages.

**Before running:** Check that you're on the correct Linux server/distribution. ⚠️ This may change the OS, accounts, services or submitted workloads; have approval/rollback.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 16. systemctl --failed

```bash
systemctl --failed
```

**What it does:** Lists systemd services that failed to start or crashed, so you can focus on the broken component.

**How to read the command:** `systemctl` is the utility. Options: `--failed` means list failed services (systemctl).

**Expected output:** Failed unit names and states; no output can mean no failed units.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 17. systemctl status ssh --no-pager

```bash
systemctl status ssh --no-pager
```

**What it does:** Shows whether service `ssh` is running, its process ID, exit code and recent log lines.

**How to read the command:** `systemctl` is the utility. Options: `--no-pager` means write directly to terminal instead of using pager.

**Expected output:** `active (running)` means the service process is up; `failed` and `exit-code` indicate why it stopped.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 18. systemctl status sshd --no-pager

```bash
systemctl status sshd --no-pager
```

**What it does:** Shows whether service `sshd` is running, its process ID, exit code and recent log lines.

**How to read the command:** `systemctl` is the utility. Options: `--no-pager` means write directly to terminal instead of using pager.

**Expected output:** `active (running)` means the service process is up; `failed` and `exit-code` indicate why it stopped.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 19. journalctl -p err -b --no-pager

```bash
journalctl -p err -b --no-pager
```

**What it does:** Opens the systemd journal (Linux's central log database). It only reads logs; it does not restart or fix anything.

**How to read the command:** `journalctl` is the utility. Options: `-p` means select journal severity or select a process/priority, tool-specific; `-b` means this boot's logs (journalctl), otherwise tool-specific; `--no-pager` means write directly to terminal instead of using pager.

**Expected output:** Lines with timestamps, hostname, component and message. Find the first ERROR around the incident time, then read lines immediately before it.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Use `journalctl --list-boots` if the problem happened before a reboot.

## 20. journalctl -u YOUR_SERVICE --since '1 hour ago' --no-pager

```bash
journalctl -u YOUR_SERVICE --since '1 hour ago' --no-pager
```

**What it does:** Opens the systemd journal (Linux's central log database) and displays messages from service `YOUR_SERVICE`. It only reads logs; it does not restart or fix anything.

**How to read the command:** `journalctl` is the utility. Options: `-u` means filter logs to this systemd service (journalctl); `--since` means only messages from this time; `--no-pager` means write directly to terminal instead of using pager.

**Expected output:** Lines with timestamps, hostname, component and message. Find the first ERROR around the incident time, then read lines immediately before it.

**Before running:** Replace `YOUR_SERVICE` with real approved values. Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Use `journalctl --list-boots` if the problem happened before a reboot.

## 21. sudo systemctl restart YOUR_SERVICE

```bash
sudo systemctl restart YOUR_SERVICE
```

**What it does:** Stops and starts the selected system service. This interrupts it temporarily and can disrupt production.

**How to read the command:** `systemctl` is the utility. Remaining words specify the file, service, device, user, host or action.

**Expected output:** Usually no text if successful; run `systemctl status` afterwards.

**Before running:** Replace `YOUR_SERVICE` with real approved values. Check that you're on the correct Linux server/distribution. ⚠️ This may change the OS, accounts, services or submitted workloads; have approval/rollback.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 22. df -hT

```bash
df -hT
```

**What it does:** Checks whether mounted filesystems have enough free storage. With `-i`, it checks free file entries (inodes) instead of bytes.

**How to read the command:** `df` is the utility. Options: `-hT` means a program-specific setting; check its local `--help`.

**Expected output:** Filesystem/mountpoint, size, used space and percent used; look for 100%.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 23. df -i

```bash
df -i
```

**What it does:** Checks whether mounted filesystems have enough free storage. With `-i`, it checks free file entries (inodes) instead of bytes.

**How to read the command:** `df` is the utility. Options: `-i` means count free/used inodes rather than storage bytes (df); other meaning elsewhere.

**Expected output:** Filesystem/mountpoint, size, used space and percent used; look for 100%.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 24. free -h

```bash
free -h
```

**What it does:** Shows available RAM and swap, helping distinguish memory pressure from disk or CPU issues.

**How to read the command:** `free` is the utility. Options: `-h` means show numbers in easy-to-read units (for df/du/free); may mean help elsewhere.

**Expected output:** Total/used/available memory and swap figures.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 25. vmstat 1 5

```bash
vmstat 1 5
```

**What it does:** Samples CPU, memory, run queue, swapping and disk I/O behavior over time. Look for sustained high `wa` or swap activity.

**How to read the command:** `vmstat` is the utility. Remaining words specify the file, service, device, user, host or action.

**Expected output:** Repeated numeric rows with CPU idle/wait, runnable tasks, swap and IO counters.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 26. top -b -n1 | head -45

```bash
top -b -n1 | head -45
```

**What it does:** Shows which processes are using the most CPU and RAM, either live or as one snapshot.

**How to read the command:** `top` is the utility. Options: `-b` means this boot's logs (journalctl), otherwise tool-specific; `-n1` means a program-specific setting; check its local `--help`; `-45` means a program-specific setting; check its local `--help`. `|` filters the output through another utility.

**Expected output:** A process table and overall CPU/memory summary.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 27. ps aux --sort=-%mem | head -15

```bash
ps aux --sort=-%mem | head -15
```

**What it does:** Lists processes, users, process IDs and resource consumption; sorting often reveals high memory/CPU consumers.

**How to read the command:** `ps` is the utility. Options: `--sort=-%mem` means sort output by specified process field; `-15` means a program-specific setting; check its local `--help`. `|` filters the output through another utility.

**Expected output:** Process rows with command lines and resource values.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 28. ss -tulpen

```bash
ss -tulpen
```

**What it does:** Shows network connections and which ports services are listening on.

**How to read the command:** `ss` is the utility. Options: `-tulpen` means a program-specific setting; check its local `--help`.

**Expected output:** Protocol, local address/port, peer and optionally PID/process owner.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 29. lsof -iTCP -sTCP:LISTEN

```bash
lsof -iTCP -sTCP:LISTEN
```

**What it does:** Runs the installed Linux utility `lsof` with the following arguments. This action depends on the specific tool and environment.

**How to read the command:** `lsof` is the utility. Options: `-iTCP` means a program-specific setting; check its local `--help`; `-sTCP:LISTEN` means a program-specific setting; check its local `--help`.

**Expected output:** Program output or error; inspect the original runbook and `man lsof` if available.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 30. getent passwd YOUR_USER

```bash
getent passwd YOUR_USER
```

**What it does:** Runs the installed Linux utility `getent` with the following arguments. This action depends on the specific tool and environment.

**How to read the command:** `getent` is the utility. Remaining words specify the file, service, device, user, host or action.

**Expected output:** Program output or error; inspect the original runbook and `man getent` if available.

**Before running:** Replace `YOUR_USER` with real approved values. Check that you're on the correct Linux server/distribution. ⚠️ This may change the OS, accounts, services or submitted workloads; have approval/rollback.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 31. sudo visudo -c

```bash
sudo visudo -c
```

**What it does:** Runs the installed Linux utility `visudo` with the following arguments. This action depends on the specific tool and environment.

**How to read the command:** `visudo` is the utility. Options: `-c` means limit number of records or packets, tool-specific.

**Expected output:** Program output or error; inspect the original runbook and `man visudo` if available.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 32. sudo sshd -t

```bash
sudo sshd -t
```

**What it does:** Runs an SSH client/server diagnostic or validates SSH server configuration, depending on subcommand.

**How to read the command:** `sshd` is the utility. Options: `-t` means TCP filter for ss or tool-specific option.

**Expected output:** Connection/validation output or syntax/configuration errors.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 33. sudo getfacl /srv/data

```bash
sudo getfacl /srv/data
```

**What it does:** Runs the installed Linux utility `getfacl` with the following arguments. This action depends on the specific tool and environment.

**How to read the command:** `getfacl` is the utility. Remaining words specify the file, service, device, user, host or action.

**Expected output:** Program output or error; inspect the original runbook and `man getfacl` if available.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 34. sudo journalctl -u sshd -n 50 --no-pager

```bash
sudo journalctl -u sshd -n 50 --no-pager
```

**What it does:** Opens the systemd journal (Linux's central log database) and displays messages from service `sshd`. It only reads logs; it does not restart or fix anything.

**How to read the command:** `journalctl` is the utility. Options: `-u` means filter logs to this systemd service (journalctl); `-n` means display only N lines; namespace in kubectl; `--no-pager` means write directly to terminal instead of using pager.

**Expected output:** Lines with timestamps, hostname, component and message. Find the first ERROR around the incident time, then read lines immediately before it.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Use `journalctl --list-boots` if the problem happened before a reboot.

