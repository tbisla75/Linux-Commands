# Linux commands explained in plain English: 03-ADVANCED-TROUBLESHOOTING.md

**Offline incident reference.** Find the exact command, see what it does, why to run it, how to interpret the results, and whether it can change your host. Some commands need optional packages or root permissions. Original: [03-ADVANCED-TROUBLESHOOTING.md](../03-ADVANCED-TROUBLESHOOTING.md).

## 1. uptime

```bash
uptime
```

**What it does:** Shows how long the host has been running and its load averages over 1, 5 and 15 minutes.

**How to read the command:** `uptime` is the utility. Remaining words specify the file, service, device, user, host or action.

**Expected output:** Uptime, active users and three load averages.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 2. top -b -n1 | head -60

```bash
top -b -n1 | head -60
```

**What it does:** Shows which processes are using the most CPU and RAM, either live or as one snapshot.

**How to read the command:** `top` is the utility. Options: `-b` means this boot's logs (journalctl), otherwise tool-specific; `-n1` means a program-specific setting; check its local `--help`; `-60` means a program-specific setting; check its local `--help`. `|` filters the output through another utility.

**Expected output:** A process table and overall CPU/memory summary.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 3. vmstat 1 5

```bash
vmstat 1 5
```

**What it does:** Samples CPU, memory, run queue, swapping and disk I/O behavior over time. Look for sustained high `wa` or swap activity.

**How to read the command:** `vmstat` is the utility. Remaining words specify the file, service, device, user, host or action.

**Expected output:** Repeated numeric rows with CPU idle/wait, runnable tasks, swap and IO counters.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 4. pidstat -dur 1 5

```bash
pidstat -dur 1 5
```

**What it does:** Runs the installed Linux utility `pidstat` with the following arguments. This action depends on the specific tool and environment.

**How to read the command:** `pidstat` is the utility. Options: `-dur` means a program-specific setting; check its local `--help`.

**Expected output:** Program output or error; inspect the original runbook and `man pidstat` if available.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 5. free -h

```bash
free -h
```

**What it does:** Shows available RAM and swap, helping distinguish memory pressure from disk or CPU issues.

**How to read the command:** `free` is the utility. Options: `-h` means show numbers in easy-to-read units (for df/du/free); may mean help elsewhere.

**Expected output:** Total/used/available memory and swap figures.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 6. dmesg -T | tail -100

```bash
dmesg -T | tail -100
```

**What it does:** Runs the installed Linux utility `dmesg` with the following arguments. This action depends on the specific tool and environment.

**How to read the command:** `dmesg` is the utility. Options: `-T` means show filesystem type (df), or tool-specific detail; `-100` means a program-specific setting; check its local `--help`. `|` filters the output through another utility.

**Expected output:** Program output or error; inspect the original runbook and `man dmesg` if available.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 7. journalctl -k -b -p warning --no-pager

```bash
journalctl -k -b -p warning --no-pager
```

**What it does:** Opens the systemd journal (Linux's central log database). It only reads logs; it does not restart or fix anything.

**How to read the command:** `journalctl` is the utility. Options: `-k` means show kernel messages (journalctl); `-b` means this boot's logs (journalctl), otherwise tool-specific; `-p` means select journal severity or select a process/priority, tool-specific; `--no-pager` means write directly to terminal instead of using pager.

**Expected output:** Lines with timestamps, hostname, component and message. Find the first ERROR around the incident time, then read lines immediately before it.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Use `journalctl --list-boots` if the problem happened before a reboot.

## 8. df -hT

```bash
df -hT
```

**What it does:** Checks whether mounted filesystems have enough free storage. With `-i`, it checks free file entries (inodes) instead of bytes.

**How to read the command:** `df` is the utility. Options: `-hT` means a program-specific setting; check its local `--help`.

**Expected output:** Filesystem/mountpoint, size, used space and percent used; look for 100%.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 9. df -i

```bash
df -i
```

**What it does:** Checks whether mounted filesystems have enough free storage. With `-i`, it checks free file entries (inodes) instead of bytes.

**How to read the command:** `df` is the utility. Options: `-i` means count free/used inodes rather than storage bytes (df); other meaning elsewhere.

**Expected output:** Filesystem/mountpoint, size, used space and percent used; look for 100%.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 10. lsblk -o NAME,SIZE,FSTYPE,MOUNTPOINT,TYPE

```bash
lsblk -o NAME,SIZE,FSTYPE,MOUNTPOINT,TYPE
```

**What it does:** Shows disks and partitions that Linux sees and where they are mounted.

**How to read the command:** `lsblk` is the utility. Options: `-o` means a program-specific setting; check its local `--help`.

**Expected output:** Device names, sizes, types, filesystems and mountpoints.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 11. findmnt -R /var

```bash
findmnt -R /var
```

**What it does:** Runs the installed Linux utility `findmnt` with the following arguments. This action depends on the specific tool and environment.

**How to read the command:** `findmnt` is the utility. Options: `-R` means a program-specific setting; check its local `--help`.

**Expected output:** Program output or error; inspect the original runbook and `man findmnt` if available.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 12. iostat -xz 1 5

```bash
iostat -xz 1 5
```

**What it does:** Shows disk activity and latency per device. Useful when a server is slow because storage is taking too long.

**How to read the command:** `iostat` is the utility. Options: `-xz` means a program-specific setting; check its local `--help`.

**Expected output:** Device usage, reads/writes, queue/await and utilization columns; exact columns vary by sysstat.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 13. sudo smartctl -a /dev/YOUR_DISK

```bash
sudo smartctl -a /dev/YOUR_DISK
```

**What it does:** Runs the installed Linux utility `smartctl` with the following arguments. This action depends on the specific tool and environment.

**How to read the command:** `smartctl` is the utility. Options: `-a` means all devices/records or tool-specific.

**Expected output:** Program output or error; inspect the original runbook and `man smartctl` if available.

**Before running:** Replace `YOUR_DISK` with real approved values. Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 14. sudo journalctl -k --since '2 hours ago' | grep -Ei 'error|reset|i/o|nvme|scsi|xfs|ext4'

```bash
sudo journalctl -k --since '2 hours ago' | grep -Ei 'error|reset|i/o|nvme|scsi|xfs|ext4'
```

**What it does:** Opens the systemd journal (Linux's central log database). It only reads logs; it does not restart or fix anything.

**How to read the command:** `journalctl` is the utility. Options: `-k` means show kernel messages (journalctl); `--since` means only messages from this time; `-Ei` means a program-specific setting; check its local `--help`. `|` filters the output through another utility.

**Expected output:** Lines with timestamps, hostname, component and message. Find the first ERROR around the incident time, then read lines immediately before it.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Use `journalctl --list-boots` if the problem happened before a reboot.

## 15. ip -br link

```bash
ip -br link
```

**What it does:** Displays or inspects Linux interfaces, addresses or routes.

**How to read the command:** `ip` is the utility. Options: `-br` means a program-specific setting; check its local `--help`.

**Expected output:** Interfaces/IPs, link state or selected gateway and route.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 16. ip addr

```bash
ip addr
```

**What it does:** Displays or inspects Linux interfaces, addresses or routes.

**How to read the command:** `ip` is the utility. Remaining words specify the file, service, device, user, host or action.

**Expected output:** Interfaces/IPs, link state or selected gateway and route.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 17. ip route get 1.1.1.1

```bash
ip route get 1.1.1.1
```

**What it does:** Displays the Linux routing table or the path the kernel would choose to reach an IP.

**How to read the command:** `ip` is the utility. Remaining words specify the file, service, device, user, host or action.

**Expected output:** Interfaces/IPs, link state or selected gateway and route.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 18. resolvectl status

```bash
resolvectl status
```

**What it does:** Shows configured DNS resolver servers and search domains, or queries DNS through the system resolver.

**How to read the command:** `resolvectl` is the utility. Remaining words specify the file, service, device, user, host or action.

**Expected output:** DNS server addresses, search domains and interface-specific settings.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 19. dig @YOUR_DNS_SERVER YOUR_FQDN A +time=2 +tries=1

```bash
dig @YOUR_DNS_SERVER YOUR_FQDN A +time=2 +tries=1
```

**What it does:** Sends a DNS lookup to the chosen resolver, optionally using TCP or disabling DNSSEC checks.

**How to read the command:** `dig` is the utility. Remaining words specify the file, service, device, user, host or action.

**Expected output:** DNS response status such as `NOERROR` or `SERVFAIL`, answer records and response time.

**Before running:** Replace `YOUR_DNS_SERVER`, `YOUR_FQDN` with real approved values. Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 20. dig @YOUR_DNS_SERVER YOUR_FQDN A +tcp

```bash
dig @YOUR_DNS_SERVER YOUR_FQDN A +tcp
```

**What it does:** Sends a DNS lookup to the chosen resolver, optionally using TCP or disabling DNSSEC checks.

**How to read the command:** `dig` is the utility. Remaining words specify the file, service, device, user, host or action.

**Expected output:** DNS response status such as `NOERROR` or `SERVFAIL`, answer records and response time.

**Before running:** Replace `YOUR_DNS_SERVER`, `YOUR_FQDN` with real approved values. Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 21. curl -Iv --connect-timeout 5 https://YOUR_FQDN

```bash
curl -Iv --connect-timeout 5 https://YOUR_FQDN
```

**What it does:** Connects to an HTTP(S) URL to test whether the server answers and whether TLS is trusted.

**How to read the command:** `curl` is the utility. Options: `-Iv` means a program-specific setting; check its local `--help`; `--connect-timeout` means a program-specific setting; check its local `--help`.

**Expected output:** HTTP status/headers, redirect or an SSL, DNS, connection or timeout error.

**Before running:** Replace `YOUR_FQDN` with real approved values. Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 22. sudo tcpdump -ni YOUR_INTERFACE 'port 53' -c 50

```bash
sudo tcpdump -ni YOUR_INTERFACE 'port 53' -c 50
```

**What it does:** Runs the installed Linux utility `tcpdump` with the following arguments. This action depends on the specific tool and environment.

**How to read the command:** `tcpdump` is the utility. Options: `-ni` means a program-specific setting; check its local `--help`; `-c` means limit number of records or packets, tool-specific.

**Expected output:** Program output or error; inspect the original runbook and `man tcpdump` if available.

**Before running:** Replace `YOUR_INTERFACE` with real approved values. Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 23. systemctl status YOUR_SERVICE --no-pager

```bash
systemctl status YOUR_SERVICE --no-pager
```

**What it does:** Shows whether service `YOUR_SERVICE` is running, its process ID, exit code and recent log lines.

**How to read the command:** `systemctl` is the utility. Options: `--no-pager` means write directly to terminal instead of using pager.

**Expected output:** `active (running)` means the service process is up; `failed` and `exit-code` indicate why it stopped.

**Before running:** Replace `YOUR_SERVICE` with real approved values. Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 24. journalctl -u YOUR_SERVICE -b --no-pager -n 150

```bash
journalctl -u YOUR_SERVICE -b --no-pager -n 150
```

**What it does:** Opens the systemd journal (Linux's central log database) and displays messages from service `YOUR_SERVICE`. It only reads logs; it does not restart or fix anything.

**How to read the command:** `journalctl` is the utility. Options: `-u` means filter logs to this systemd service (journalctl); `-b` means this boot's logs (journalctl), otherwise tool-specific; `--no-pager` means write directly to terminal instead of using pager; `-n` means display only N lines; namespace in kubectl.

**Expected output:** Lines with timestamps, hostname, component and message. Find the first ERROR around the incident time, then read lines immediately before it.

**Before running:** Replace `YOUR_SERVICE` with real approved values. Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Use `journalctl --list-boots` if the problem happened before a reboot.

## 25. sudo coredumpctl list

```bash
sudo coredumpctl list
```

**What it does:** Runs the installed Linux utility `coredumpctl` with the following arguments. This action depends on the specific tool and environment.

**How to read the command:** `coredumpctl` is the utility. Remaining words specify the file, service, device, user, host or action.

**Expected output:** Program output or error; inspect the original runbook and `man coredumpctl` if available.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 26. sudo ausearch -m AVC -ts recent

```bash
sudo ausearch -m AVC -ts recent
```

**What it does:** Searches Linux audit records, particularly SELinux AVC denials explaining access failures.

**How to read the command:** `ausearch` is the utility. Options: `-m` means a program-specific setting; check its local `--help`; `-ts` means a program-specific setting; check its local `--help`.

**Expected output:** Audit events including denied operations, users, files and labels.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 27. sudo semanage fcontext -l | head -25

```bash
sudo semanage fcontext -l | head -25
```

**What it does:** Runs the installed Linux utility `semanage` with the following arguments. This action depends on the specific tool and environment.

**How to read the command:** `semanage` is the utility. Options: `-l` means show long full status lines for systemctl; otherwise tool-specific; `-25` means a program-specific setting; check its local `--help`. `|` filters the output through another utility.

**Expected output:** Program output or error; inspect the original runbook and `man semanage` if available.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 28. sudo sshd -T | head -30

```bash
sudo sshd -T | head -30
```

**What it does:** Runs an SSH client/server diagnostic or validates SSH server configuration, depending on subcommand.

**How to read the command:** `sshd` is the utility. Options: `-T` means show filesystem type (df), or tool-specific detail; `-30` means a program-specific setting; check its local `--help`. `|` filters the output through another utility.

**Expected output:** Connection/validation output or syntax/configuration errors.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 29. timedatectl status

```bash
timedatectl status
```

**What it does:** Checks time, timezone and whether system time is synchronized. Time drift can break TLS, authentication and cluster quorum.

**How to read the command:** `timedatectl` is the utility. Remaining words specify the file, service, device, user, host or action.

**Expected output:** Local/UTC time, timezone and NTP synchronization status.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 30. chronyc tracking

```bash
chronyc tracking
```

**What it does:** Checks NTP time synchronization and which time sources the host trusts.

**How to read the command:** `chronyc` is the utility. Remaining words specify the file, service, device, user, host or action.

**Expected output:** Clock offset, stratum and peers.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 31. chronyc sources -v

```bash
chronyc sources -v
```

**What it does:** Checks NTP time synchronization and which time sources the host trusts.

**How to read the command:** `chronyc` is the utility. Options: `-v` means version or verbose, program-dependent.

**Expected output:** Clock offset, stratum and peers.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 32. sudo journalctl -u chronyd -n 70 --no-pager

```bash
sudo journalctl -u chronyd -n 70 --no-pager
```

**What it does:** Opens the systemd journal (Linux's central log database) and displays messages from service `chronyd`. It only reads logs; it does not restart or fix anything.

**How to read the command:** `journalctl` is the utility. Options: `-u` means filter logs to this systemd service (journalctl); `-n` means display only N lines; namespace in kubectl; `--no-pager` means write directly to terminal instead of using pager.

**Expected output:** Lines with timestamps, hostname, component and message. Find the first ERROR around the incident time, then read lines immediately before it.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Use `journalctl --list-boots` if the problem happened before a reboot.

