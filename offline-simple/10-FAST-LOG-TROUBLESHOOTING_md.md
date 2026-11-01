# Linux commands explained in plain English: 10-FAST-LOG-TROUBLESHOOTING.md

**Offline incident reference.** Find the exact command, see what it does, why to run it, how to interpret the results, and whether it can change your host. Some commands need optional packages or root permissions. Original: [10-FAST-LOG-TROUBLESHOOTING.md](../10-FAST-LOG-TROUBLESHOOTING.md).

## 1. date -Is

```bash
date -Is
```

**What it does:** Runs the installed Linux utility `date` with the following arguments. This action depends on the specific tool and environment.

**How to read the command:** `date` is the utility. Options: `-Is` means a program-specific setting; check its local `--help`.

**Expected output:** Program output or error; inspect the original runbook and `man date` if available.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 2. uptime

```bash
uptime
```

**What it does:** Shows how long the host has been running and its load averages over 1, 5 and 15 minutes.

**How to read the command:** `uptime` is the utility. Remaining words specify the file, service, device, user, host or action.

**Expected output:** Uptime, active users and three load averages.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 3. systemctl --failed --no-pager

```bash
systemctl --failed --no-pager
```

**What it does:** Lists systemd services that failed to start or crashed, so you can focus on the broken component.

**How to read the command:** `systemctl` is the utility. Options: `--failed` means list failed services (systemctl); `--no-pager` means write directly to terminal instead of using pager.

**Expected output:** Failed unit names and states; no output can mean no failed units.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 4. journalctl -b -p err..alert --since '30 min ago' --no-pager -n 80

```bash
journalctl -b -p err..alert --since '30 min ago' --no-pager -n 80
```

**What it does:** Opens the systemd journal (Linux's central log database). It only reads logs; it does not restart or fix anything.

**How to read the command:** `journalctl` is the utility. Options: `-b` means this boot's logs (journalctl), otherwise tool-specific; `-p` means select journal severity or select a process/priority, tool-specific; `--since` means only messages from this time; `--no-pager` means write directly to terminal instead of using pager; `-n` means display only N lines; namespace in kubectl.

**Expected output:** Lines with timestamps, hostname, component and message. Find the first ERROR around the incident time, then read lines immediately before it.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Use `journalctl --list-boots` if the problem happened before a reboot.

## 5. journalctl -k -b -p warning..alert --no-pager -n 80

```bash
journalctl -k -b -p warning..alert --no-pager -n 80
```

**What it does:** Opens the systemd journal (Linux's central log database). It only reads logs; it does not restart or fix anything.

**How to read the command:** `journalctl` is the utility. Options: `-k` means show kernel messages (journalctl); `-b` means this boot's logs (journalctl), otherwise tool-specific; `-p` means select journal severity or select a process/priority, tool-specific; `--no-pager` means write directly to terminal instead of using pager; `-n` means display only N lines; namespace in kubectl.

**Expected output:** Lines with timestamps, hostname, component and message. Find the first ERROR around the incident time, then read lines immediately before it.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Use `journalctl --list-boots` if the problem happened before a reboot.

## 6. df -hT

```bash
df -hT
```

**What it does:** Checks whether mounted filesystems have enough free storage. With `-i`, it checks free file entries (inodes) instead of bytes.

**How to read the command:** `df` is the utility. Options: `-hT` means a program-specific setting; check its local `--help`.

**Expected output:** Filesystem/mountpoint, size, used space and percent used; look for 100%.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 7. df -i

```bash
df -i
```

**What it does:** Checks whether mounted filesystems have enough free storage. With `-i`, it checks free file entries (inodes) instead of bytes.

**How to read the command:** `df` is the utility. Options: `-i` means count free/used inodes rather than storage bytes (df); other meaning elsewhere.

**Expected output:** Filesystem/mountpoint, size, used space and percent used; look for 100%.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 8. free -h

```bash
free -h
```

**What it does:** Shows available RAM and swap, helping distinguish memory pressure from disk or CPU issues.

**How to read the command:** `free` is the utility. Options: `-h` means show numbers in easy-to-read units (for df/du/free); may mean help elsewhere.

**Expected output:** Total/used/available memory and swap figures.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 9. ss -tulpn

```bash
ss -tulpn
```

**What it does:** Shows network connections and which ports services are listening on.

**How to read the command:** `ss` is the utility. Options: `-tulpn` means a program-specific setting; check its local `--help`.

**Expected output:** Protocol, local address/port, peer and optionally PID/process owner.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 10. journalctl --list-boots

```bash
journalctl --list-boots
```

**What it does:** Opens the systemd journal (Linux's central log database). It only reads logs; it does not restart or fix anything.

**How to read the command:** `journalctl` is the utility. Options: `--list-boots` means a program-specific setting; check its local `--help`.

**Expected output:** Lines with timestamps, hostname, component and message. Find the first ERROR around the incident time, then read lines immediately before it.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Use `journalctl --list-boots` if the problem happened before a reboot.

## 11. journalctl -b --since '15 min ago' -p err..alert --no-pager

```bash
journalctl -b --since '15 min ago' -p err..alert --no-pager
```

**What it does:** Opens the systemd journal (Linux's central log database). It only reads logs; it does not restart or fix anything.

**How to read the command:** `journalctl` is the utility. Options: `-b` means this boot's logs (journalctl), otherwise tool-specific; `--since` means only messages from this time; `-p` means select journal severity or select a process/priority, tool-specific; `--no-pager` means write directly to terminal instead of using pager.

**Expected output:** Lines with timestamps, hostname, component and message. Find the first ERROR around the incident time, then read lines immediately before it.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Use `journalctl --list-boots` if the problem happened before a reboot.

## 12. journalctl -b -1 -p err..alert --no-pager -n 100

```bash
journalctl -b -1 -p err..alert --no-pager -n 100
```

**What it does:** Opens the systemd journal (Linux's central log database). It only reads logs; it does not restart or fix anything.

**How to read the command:** `journalctl` is the utility. Options: `-b` means this boot's logs (journalctl), otherwise tool-specific; `-1` means a program-specific setting; check its local `--help`; `-p` means select journal severity or select a process/priority, tool-specific; `--no-pager` means write directly to terminal instead of using pager; `-n` means display only N lines; namespace in kubectl.

**Expected output:** Lines with timestamps, hostname, component and message. Find the first ERROR around the incident time, then read lines immediately before it.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Use `journalctl --list-boots` if the problem happened before a reboot.

## 13. journalctl -b -k --since '1 hour ago' --no-pager -n 150

```bash
journalctl -b -k --since '1 hour ago' --no-pager -n 150
```

**What it does:** Opens the systemd journal (Linux's central log database). It only reads logs; it does not restart or fix anything.

**How to read the command:** `journalctl` is the utility. Options: `-b` means this boot's logs (journalctl), otherwise tool-specific; `-k` means show kernel messages (journalctl); `--since` means only messages from this time; `--no-pager` means write directly to terminal instead of using pager; `-n` means display only N lines; namespace in kubectl.

**Expected output:** Lines with timestamps, hostname, component and message. Find the first ERROR around the incident time, then read lines immediately before it.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Use `journalctl --list-boots` if the problem happened before a reboot.

## 14. journalctl -b -r --no-pager -n 100

```bash
journalctl -b -r --no-pager -n 100
```

**What it does:** Opens the systemd journal (Linux's central log database). It only reads logs; it does not restart or fix anything.

**How to read the command:** `journalctl` is the utility. Options: `-b` means this boot's logs (journalctl), otherwise tool-specific; `-r` means reverse order for journalctl; other meanings on other programs; `--no-pager` means write directly to terminal instead of using pager; `-n` means display only N lines; namespace in kubectl.

**Expected output:** Lines with timestamps, hostname, component and message. Find the first ERROR around the incident time, then read lines immediately before it.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Use `journalctl --list-boots` if the problem happened before a reboot.

## 15. journalctl --disk-usage

```bash
journalctl --disk-usage
```

**What it does:** Opens the systemd journal (Linux's central log database). It only reads logs; it does not restart or fix anything.

**How to read the command:** `journalctl` is the utility. Options: `--disk-usage` means a program-specific setting; check its local `--help`.

**Expected output:** Lines with timestamps, hostname, component and message. Find the first ERROR around the incident time, then read lines immediately before it.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Use `journalctl --list-boots` if the problem happened before a reboot.

## 16. systemctl status YOUR_SERVICE --no-pager -l

```bash
systemctl status YOUR_SERVICE --no-pager -l
```

**What it does:** Shows whether service `YOUR_SERVICE` is running, its process ID, exit code and recent log lines.

**How to read the command:** `systemctl` is the utility. Options: `--no-pager` means write directly to terminal instead of using pager; `-l` means show long full status lines for systemctl; otherwise tool-specific.

**Expected output:** `active (running)` means the service process is up; `failed` and `exit-code` indicate why it stopped.

**Before running:** Replace `YOUR_SERVICE` with real approved values. Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 17. journalctl -u YOUR_SERVICE -b --since '30 min ago' --no-pager -n 150

```bash
journalctl -u YOUR_SERVICE -b --since '30 min ago' --no-pager -n 150
```

**What it does:** Opens the systemd journal (Linux's central log database) and displays messages from service `YOUR_SERVICE`. It only reads logs; it does not restart or fix anything.

**How to read the command:** `journalctl` is the utility. Options: `-u` means filter logs to this systemd service (journalctl); `-b` means this boot's logs (journalctl), otherwise tool-specific; `--since` means only messages from this time; `--no-pager` means write directly to terminal instead of using pager; `-n` means display only N lines; namespace in kubectl.

**Expected output:** Lines with timestamps, hostname, component and message. Find the first ERROR around the incident time, then read lines immediately before it.

**Before running:** Replace `YOUR_SERVICE` with real approved values. Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Use `journalctl --list-boots` if the problem happened before a reboot.

## 18. journalctl -u YOUR_SERVICE -b -p warning..alert --no-pager -n 100

```bash
journalctl -u YOUR_SERVICE -b -p warning..alert --no-pager -n 100
```

**What it does:** Opens the systemd journal (Linux's central log database) and displays messages from service `YOUR_SERVICE`. It only reads logs; it does not restart or fix anything.

**How to read the command:** `journalctl` is the utility. Options: `-u` means filter logs to this systemd service (journalctl); `-b` means this boot's logs (journalctl), otherwise tool-specific; `-p` means select journal severity or select a process/priority, tool-specific; `--no-pager` means write directly to terminal instead of using pager; `-n` means display only N lines; namespace in kubectl.

**Expected output:** Lines with timestamps, hostname, component and message. Find the first ERROR around the incident time, then read lines immediately before it.

**Before running:** Replace `YOUR_SERVICE` with real approved values. Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Use `journalctl --list-boots` if the problem happened before a reboot.

## 19. systemctl show YOUR_SERVICE -p ExecMainStatus -p ExecMainCode -p NRestarts -p ActiveState

```bash
systemctl show YOUR_SERVICE -p ExecMainStatus -p ExecMainCode -p NRestarts -p ActiveState
```

**What it does:** Uses systemd to show the selected service or inspect its state.

**How to read the command:** `systemctl` is the utility. Options: `-p` means select journal severity or select a process/priority, tool-specific; `-p` means select journal severity or select a process/priority, tool-specific; `-p` means select journal severity or select a process/priority, tool-specific; `-p` means select journal severity or select a process/priority, tool-specific.

**Expected output:** The service's state or an operation acknowledgment.

**Before running:** Replace `YOUR_SERVICE` with real approved values. Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 20. systemctl cat YOUR_SERVICE

```bash
systemctl cat YOUR_SERVICE
```

**What it does:** Uses systemd to cat the selected service or inspect its state.

**How to read the command:** `systemctl` is the utility. Remaining words specify the file, service, device, user, host or action.

**Expected output:** The service's state or an operation acknowledgment.

**Before running:** Replace `YOUR_SERVICE` with real approved values. Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 21. df -hT

```bash
df -hT
```

**What it does:** Checks whether mounted filesystems have enough free storage. With `-i`, it checks free file entries (inodes) instead of bytes.

**How to read the command:** `df` is the utility. Options: `-hT` means a program-specific setting; check its local `--help`.

**Expected output:** Filesystem/mountpoint, size, used space and percent used; look for 100%.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 22. df -i

```bash
df -i
```

**What it does:** Checks whether mounted filesystems have enough free storage. With `-i`, it checks free file entries (inodes) instead of bytes.

**How to read the command:** `df` is the utility. Options: `-i` means count free/used inodes rather than storage bytes (df); other meaning elsewhere.

**Expected output:** Filesystem/mountpoint, size, used space and percent used; look for 100%.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 23. findmnt -T /var/log

```bash
findmnt -T /var/log
```

**What it does:** Runs the installed Linux utility `findmnt` with the following arguments. This action depends on the specific tool and environment.

**How to read the command:** `findmnt` is the utility. Options: `-T` means show filesystem type (df), or tool-specific detail.

**Expected output:** Program output or error; inspect the original runbook and `man findmnt` if available.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 24. sudo du -xhd1 /var 2>/dev/null | sort -h | tail -20

```bash
sudo du -xhd1 /var 2>/dev/null | sort -h | tail -20
```

**What it does:** Calculates how much disk space is used by files/directories, often to find which part of `/var` grew unexpectedly.

**How to read the command:** `du` is the utility. Options: `-xhd1` means a program-specific setting; check its local `--help`; `-h` means show numbers in easy-to-read units (for df/du/free); may mean help elsewhere; `-20` means a program-specific setting; check its local `--help`. `|` filters the output through another utility.

**Expected output:** Sizes per directory; may take time and cause I/O on large trees.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 25. sudo journalctl -k -b --since '2 hours ago' | grep -Ei 'I/O error|timeout|reset|ext4|xfs|nvme|scsi|blk_up

```bash
sudo journalctl -k -b --since '2 hours ago' | grep -Ei 'I/O error|timeout|reset|ext4|xfs|nvme|scsi|blk_update_request' | tail -80
```

**What it does:** Opens the systemd journal (Linux's central log database). It only reads logs; it does not restart or fix anything.

**How to read the command:** `journalctl` is the utility. Options: `-k` means show kernel messages (journalctl); `-b` means this boot's logs (journalctl), otherwise tool-specific; `--since` means only messages from this time; `-Ei` means a program-specific setting; check its local `--help`; `-80` means a program-specific setting; check its local `--help`. `|` filters the output through another utility.

**Expected output:** Lines with timestamps, hostname, component and message. Find the first ERROR around the incident time, then read lines immediately before it.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Use `journalctl --list-boots` if the problem happened before a reboot.

## 26. iostat -xz 1 5

```bash
iostat -xz 1 5
```

**What it does:** Shows disk activity and latency per device. Useful when a server is slow because storage is taking too long.

**How to read the command:** `iostat` is the utility. Options: `-xz` means a program-specific setting; check its local `--help`.

**Expected output:** Device usage, reads/writes, queue/await and utilization columns; exact columns vary by sysstat.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 27. lsblk -o NAME,TYPE,SIZE,FSTYPE,MOUNTPOINTS

```bash
lsblk -o NAME,TYPE,SIZE,FSTYPE,MOUNTPOINTS
```

**What it does:** Shows disks and partitions that Linux sees and where they are mounted.

**How to read the command:** `lsblk` is the utility. Options: `-o` means a program-specific setting; check its local `--help`.

**Expected output:** Device names, sizes, types, filesystems and mountpoints.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 28. journalctl -u sshd -b --since '1 hour ago' --no-pager -n 120

```bash
journalctl -u sshd -b --since '1 hour ago' --no-pager -n 120
```

**What it does:** Opens the systemd journal (Linux's central log database) and displays messages from service `sshd`. It only reads logs; it does not restart or fix anything.

**How to read the command:** `journalctl` is the utility. Options: `-u` means filter logs to this systemd service (journalctl); `-b` means this boot's logs (journalctl), otherwise tool-specific; `--since` means only messages from this time; `--no-pager` means write directly to terminal instead of using pager; `-n` means display only N lines; namespace in kubectl.

**Expected output:** Lines with timestamps, hostname, component and message. Find the first ERROR around the incident time, then read lines immediately before it.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Use `journalctl --list-boots` if the problem happened before a reboot.

## 29. journalctl -u ssh -b --since '1 hour ago' --no-pager -n 120

```bash
journalctl -u ssh -b --since '1 hour ago' --no-pager -n 120
```

**What it does:** Opens the systemd journal (Linux's central log database) and displays messages from service `ssh`. It only reads logs; it does not restart or fix anything.

**How to read the command:** `journalctl` is the utility. Options: `-u` means filter logs to this systemd service (journalctl); `-b` means this boot's logs (journalctl), otherwise tool-specific; `--since` means only messages from this time; `--no-pager` means write directly to terminal instead of using pager; `-n` means display only N lines; namespace in kubectl.

**Expected output:** Lines with timestamps, hostname, component and message. Find the first ERROR around the incident time, then read lines immediately before it.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Use `journalctl --list-boots` if the problem happened before a reboot.

## 30. sudo tail -n 100 /var/log/auth.log

```bash
sudo tail -n 100 /var/log/auth.log
```

**What it does:** Shows the last lines of a log file or pipeline, usually the newest messages.

**How to read the command:** `tail` is the utility. Options: `-n` means display only N lines; namespace in kubectl.

**Expected output:** The final N input lines.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 31. sudo tail -n 100 /var/log/secure

```bash
sudo tail -n 100 /var/log/secure
```

**What it does:** Shows the last lines of a log file or pipeline, usually the newest messages.

**How to read the command:** `tail` is the utility. Options: `-n` means display only N lines; namespace in kubectl.

**Expected output:** The final N input lines.

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

## 33. sudo sshd -T | grep -Ei 'passwordauthentication|pubkeyauthentication|permitrootlogin'

```bash
sudo sshd -T | grep -Ei 'passwordauthentication|pubkeyauthentication|permitrootlogin'
```

**What it does:** Runs an SSH client/server diagnostic or validates SSH server configuration, depending on subcommand.

**How to read the command:** `sshd` is the utility. Options: `-T` means show filesystem type (df), or tool-specific detail; `-Ei` means a program-specific setting; check its local `--help`. `|` filters the output through another utility.

**Expected output:** Connection/validation output or syntax/configuration errors.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 34. resolvectl status

```bash
resolvectl status
```

**What it does:** Shows configured DNS resolver servers and search domains, or queries DNS through the system resolver.

**How to read the command:** `resolvectl` is the utility. Remaining words specify the file, service, device, user, host or action.

**Expected output:** DNS server addresses, search domains and interface-specific settings.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 35. getent ahosts YOUR_FQDN

```bash
getent ahosts YOUR_FQDN
```

**What it does:** Runs the installed Linux utility `getent` with the following arguments. This action depends on the specific tool and environment.

**How to read the command:** `getent` is the utility. Remaining words specify the file, service, device, user, host or action.

**Expected output:** Program output or error; inspect the original runbook and `man getent` if available.

**Before running:** Replace `YOUR_FQDN` with real approved values. Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 36. dig @YOUR_DNS_SERVER YOUR_FQDN A +time=2 +tries=1

```bash
dig @YOUR_DNS_SERVER YOUR_FQDN A +time=2 +tries=1
```

**What it does:** Sends a DNS lookup to the chosen resolver, optionally using TCP or disabling DNSSEC checks.

**How to read the command:** `dig` is the utility. Remaining words specify the file, service, device, user, host or action.

**Expected output:** DNS response status such as `NOERROR` or `SERVFAIL`, answer records and response time.

**Before running:** Replace `YOUR_DNS_SERVER`, `YOUR_FQDN` with real approved values. Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 37. ip route get YOUR_DESTINATION_IP

```bash
ip route get YOUR_DESTINATION_IP
```

**What it does:** Displays the Linux routing table or the path the kernel would choose to reach an IP.

**How to read the command:** `ip` is the utility. Remaining words specify the file, service, device, user, host or action.

**Expected output:** Interfaces/IPs, link state or selected gateway and route.

**Before running:** Replace `YOUR_DESTINATION_IP` with real approved values. Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 38. curl -Iv --connect-timeout 5 https://YOUR_FQDN

```bash
curl -Iv --connect-timeout 5 https://YOUR_FQDN
```

**What it does:** Connects to an HTTP(S) URL to test whether the server answers and whether TLS is trusted.

**How to read the command:** `curl` is the utility. Options: `-Iv` means a program-specific setting; check its local `--help`; `--connect-timeout` means a program-specific setting; check its local `--help`.

**Expected output:** HTTP status/headers, redirect or an SSL, DNS, connection or timeout error.

**Before running:** Replace `YOUR_FQDN` with real approved values. Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 39. timedatectl status

```bash
timedatectl status
```

**What it does:** Checks time, timezone and whether system time is synchronized. Time drift can break TLS, authentication and cluster quorum.

**How to read the command:** `timedatectl` is the utility. Remaining words specify the file, service, device, user, host or action.

**Expected output:** Local/UTC time, timezone and NTP synchronization status.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 40. journalctl -u systemd-resolved -b --no-pager -n 100

```bash
journalctl -u systemd-resolved -b --no-pager -n 100
```

**What it does:** Opens the systemd journal (Linux's central log database) and displays messages from service `systemd-resolved`. It only reads logs; it does not restart or fix anything.

**How to read the command:** `journalctl` is the utility. Options: `-u` means filter logs to this systemd service (journalctl); `-b` means this boot's logs (journalctl), otherwise tool-specific; `--no-pager` means write directly to terminal instead of using pager; `-n` means display only N lines; namespace in kubectl.

**Expected output:** Lines with timestamps, hostname, component and message. Find the first ERROR around the incident time, then read lines immediately before it.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Use `journalctl --list-boots` if the problem happened before a reboot.

## 41. systemctl status containerd --no-pager

```bash
systemctl status containerd --no-pager
```

**What it does:** Shows whether service `containerd` is running, its process ID, exit code and recent log lines.

**How to read the command:** `systemctl` is the utility. Options: `--no-pager` means write directly to terminal instead of using pager.

**Expected output:** `active (running)` means the service process is up; `failed` and `exit-code` indicate why it stopped.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 42. journalctl -u containerd -b --since '30 min ago' --no-pager -n 100

```bash
journalctl -u containerd -b --since '30 min ago' --no-pager -n 100
```

**What it does:** Opens the systemd journal (Linux's central log database) and displays messages from service `containerd`. It only reads logs; it does not restart or fix anything.

**How to read the command:** `journalctl` is the utility. Options: `-u` means filter logs to this systemd service (journalctl); `-b` means this boot's logs (journalctl), otherwise tool-specific; `--since` means only messages from this time; `--no-pager` means write directly to terminal instead of using pager; `-n` means display only N lines; namespace in kubectl.

**Expected output:** Lines with timestamps, hostname, component and message. Find the first ERROR around the incident time, then read lines immediately before it.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Use `journalctl --list-boots` if the problem happened before a reboot.

## 43. journalctl -u kubelet -b --since '30 min ago' --no-pager -n 150

```bash
journalctl -u kubelet -b --since '30 min ago' --no-pager -n 150
```

**What it does:** Opens the systemd journal (Linux's central log database) and displays messages from service `kubelet`. It only reads logs; it does not restart or fix anything.

**How to read the command:** `journalctl` is the utility. Options: `-u` means filter logs to this systemd service (journalctl); `-b` means this boot's logs (journalctl), otherwise tool-specific; `--since` means only messages from this time; `--no-pager` means write directly to terminal instead of using pager; `-n` means display only N lines; namespace in kubectl.

**Expected output:** Lines with timestamps, hostname, component and message. Find the first ERROR around the incident time, then read lines immediately before it.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Use `journalctl --list-boots` if the problem happened before a reboot.

## 44. journalctl -u k3s -b --since '30 min ago' --no-pager -n 150

```bash
journalctl -u k3s -b --since '30 min ago' --no-pager -n 150
```

**What it does:** Opens the systemd journal (Linux's central log database) and displays messages from service `k3s`. It only reads logs; it does not restart or fix anything.

**How to read the command:** `journalctl` is the utility. Options: `-u` means filter logs to this systemd service (journalctl); `-b` means this boot's logs (journalctl), otherwise tool-specific; `--since` means only messages from this time; `--no-pager` means write directly to terminal instead of using pager; `-n` means display only N lines; namespace in kubectl.

**Expected output:** Lines with timestamps, hostname, component and message. Find the first ERROR around the incident time, then read lines immediately before it.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Use `journalctl --list-boots` if the problem happened before a reboot.

## 45. journalctl -u k3s-agent -b --since '30 min ago' --no-pager -n 150

```bash
journalctl -u k3s-agent -b --since '30 min ago' --no-pager -n 150
```

**What it does:** Opens the systemd journal (Linux's central log database) and displays messages from service `k3s-agent`. It only reads logs; it does not restart or fix anything.

**How to read the command:** `journalctl` is the utility. Options: `-u` means filter logs to this systemd service (journalctl); `-b` means this boot's logs (journalctl), otherwise tool-specific; `--since` means only messages from this time; `--no-pager` means write directly to terminal instead of using pager; `-n` means display only N lines; namespace in kubectl.

**Expected output:** Lines with timestamps, hostname, component and message. Find the first ERROR around the incident time, then read lines immediately before it.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Use `journalctl --list-boots` if the problem happened before a reboot.

## 46. sudo crictl ps -a

```bash
sudo crictl ps -a
```

**What it does:** Runs the installed Linux utility `crictl` with the following arguments. This action depends on the specific tool and environment.

**How to read the command:** `crictl` is the utility. Options: `-a` means all devices/records or tool-specific.

**Expected output:** Program output or error; inspect the original runbook and `man crictl` if available.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 47. sudo crictl info

```bash
sudo crictl info
```

**What it does:** Runs the installed Linux utility `crictl` with the following arguments. This action depends on the specific tool and environment.

**How to read the command:** `crictl` is the utility. Remaining words specify the file, service, device, user, host or action.

**Expected output:** Program output or error; inspect the original runbook and `man crictl` if available.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 48. sudo dmesg -T | tail -100

```bash
sudo dmesg -T | tail -100
```

**What it does:** Runs the installed Linux utility `dmesg` with the following arguments. This action depends on the specific tool and environment.

**How to read the command:** `dmesg` is the utility. Options: `-T` means show filesystem type (df), or tool-specific detail; `-100` means a program-specific setting; check its local `--help`. `|` filters the output through another utility.

**Expected output:** Program output or error; inspect the original runbook and `man dmesg` if available.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 49. ip -br link

```bash
ip -br link
```

**What it does:** Displays or inspects Linux interfaces, addresses or routes.

**How to read the command:** `ip` is the utility. Options: `-br` means a program-specific setting; check its local `--help`.

**Expected output:** Interfaces/IPs, link state or selected gateway and route.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 50. ip -br addr

```bash
ip -br addr
```

**What it does:** Displays or inspects Linux interfaces, addresses or routes.

**How to read the command:** `ip` is the utility. Options: `-br` means a program-specific setting; check its local `--help`.

**Expected output:** Interfaces/IPs, link state or selected gateway and route.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 51. ip route

```bash
ip route
```

**What it does:** Displays the Linux routing table or the path the kernel would choose to reach an IP.

**How to read the command:** `ip` is the utility. Remaining words specify the file, service, device, user, host or action.

**Expected output:** Interfaces/IPs, link state or selected gateway and route.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 52. ss -s

```bash
ss -s
```

**What it does:** Shows network connections and which ports services are listening on.

**How to read the command:** `ss` is the utility. Options: `-s` means summary or specify source, depending on program.

**Expected output:** Protocol, local address/port, peer and optionally PID/process owner.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 53. sudo nft list ruleset

```bash
sudo nft list ruleset
```

**What it does:** Displays firewall rules/status for the Linux host. Adding/removing firewall rules could disconnect services.

**How to read the command:** `nft` is the utility. Remaining words specify the file, service, device, user, host or action.

**Expected output:** Rule sets, allowed services/ports or firewall status.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 54. sudo journalctl -k -b | grep -Ei 'link.*down|NETDEV|watchdog|drop|conntrack|NIC' | tail -100

```bash
sudo journalctl -k -b | grep -Ei 'link.*down|NETDEV|watchdog|drop|conntrack|NIC' | tail -100
```

**What it does:** Opens the systemd journal (Linux's central log database). It only reads logs; it does not restart or fix anything.

**How to read the command:** `journalctl` is the utility. Options: `-k` means show kernel messages (journalctl); `-b` means this boot's logs (journalctl), otherwise tool-specific; `-Ei` means a program-specific setting; check its local `--help`; `-100` means a program-specific setting; check its local `--help`. `|` filters the output through another utility.

**Expected output:** Lines with timestamps, hostname, component and message. Find the first ERROR around the incident time, then read lines immediately before it.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Use `journalctl --list-boots` if the problem happened before a reboot.

## 55. sudo ethtool YOUR_INTERFACE

```bash
sudo ethtool YOUR_INTERFACE
```

**What it does:** Reads NIC driver, negotiation, link speed and sometimes hardware error counters.

**How to read the command:** `ethtool` is the utility. Remaining words specify the file, service, device, user, host or action.

**Expected output:** Link state, speed, driver and interface statistics.

**Before running:** Replace `YOUR_INTERFACE` with real approved values. Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 56. mkdir -p ./incident-logs

```bash
mkdir -p ./incident-logs
```

**What it does:** Runs the installed Linux utility `mkdir` with the following arguments. This action depends on the specific tool and environment.

**How to read the command:** `mkdir` is the utility. Options: `-p` means select journal severity or select a process/priority, tool-specific.

**Expected output:** Program output or error; inspect the original runbook and `man mkdir` if available.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 57. journalctl -b -p err..alert --since '30 min ago' --no-pager -n 200 > ./incident-logs/errors.txt

```bash
journalctl -b -p err..alert --since '30 min ago' --no-pager -n 200 > ./incident-logs/errors.txt
```

**What it does:** Opens the systemd journal (Linux's central log database). It only reads logs; it does not restart or fix anything.

**How to read the command:** `journalctl` is the utility. Options: `-b` means this boot's logs (journalctl), otherwise tool-specific; `-p` means select journal severity or select a process/priority, tool-specific; `--since` means only messages from this time; `--no-pager` means write directly to terminal instead of using pager; `-n` means display only N lines; namespace in kubectl. `>` saves text into a file, replacing its contents.

**Expected output:** Lines with timestamps, hostname, component and message. Find the first ERROR around the incident time, then read lines immediately before it.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Use `journalctl --list-boots` if the problem happened before a reboot.

## 58. systemctl --failed --no-pager > ./incident-logs/failed-services.txt

```bash
systemctl --failed --no-pager > ./incident-logs/failed-services.txt
```

**What it does:** Lists systemd services that failed to start or crashed, so you can focus on the broken component.

**How to read the command:** `systemctl` is the utility. Options: `--failed` means list failed services (systemctl); `--no-pager` means write directly to terminal instead of using pager. `>` saves text into a file, replacing its contents.

**Expected output:** Failed unit names and states; no output can mean no failed units.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 59. df -hT > ./incident-logs/disk.txt

```bash
df -hT > ./incident-logs/disk.txt
```

**What it does:** Checks whether mounted filesystems have enough free storage. With `-i`, it checks free file entries (inodes) instead of bytes.

**How to read the command:** `df` is the utility. Options: `-hT` means a program-specific setting; check its local `--help`. `>` saves text into a file, replacing its contents.

**Expected output:** Filesystem/mountpoint, size, used space and percent used; look for 100%.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 60. uptime > ./incident-logs/uptime.txt

```bash
uptime > ./incident-logs/uptime.txt
```

**What it does:** Shows how long the host has been running and its load averages over 1, 5 and 15 minutes.

**How to read the command:** `uptime` is the utility. Remaining words specify the file, service, device, user, host or action. `>` saves text into a file, replacing its contents.

**Expected output:** Uptime, active users and three load averages.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

