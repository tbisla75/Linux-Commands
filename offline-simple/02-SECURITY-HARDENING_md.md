# Linux commands explained in plain English: 02-SECURITY-HARDENING.md

**Offline incident reference.** Find the exact command, see what it does, why to run it, how to interpret the results, and whether it can change your host. Some commands need optional packages or root permissions. Original: [02-SECURITY-HARDENING.md](../02-SECURITY-HARDENING.md).

## 1. sudo ss -tulpen

```bash
sudo ss -tulpen
```

**What it does:** Shows network connections and which ports services are listening on.

**How to read the command:** `ss` is the utility. Options: `-tulpen` means a program-specific setting; check its local `--help`.

**Expected output:** Protocol, local address/port, peer and optionally PID/process owner.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 2. sudo systemctl --type=service --state=running

```bash
sudo systemctl --type=service --state=running
```

**What it does:** Uses systemd to --type=service the selected service or inspect its state.

**How to read the command:** `systemctl` is the utility. Options: `--type=service` means filter systemd units by type; `--state=running` means filter units by state.

**Expected output:** The service's state or an operation acknowledgment.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 3. sudo find /etc/ssh -maxdepth 2 -type f -ls

```bash
sudo find /etc/ssh -maxdepth 2 -type f -ls
```

**What it does:** Searches a directory tree for files matching names, permissions or types; can consume IO on large paths.

**How to read the command:** `find` is the utility. Options: `-maxdepth` means a program-specific setting; check its local `--help`; `-type` means a program-specific setting; check its local `--help`; `-ls` means a program-specific setting; check its local `--help`.

**Expected output:** Paths and metadata matching the criteria.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 4. sudo sshd -T | grep -E '^(permitrootlogin|passwordauthentication|pubkeyauthentication)'

```bash
sudo sshd -T | grep -E '^(permitrootlogin|passwordauthentication|pubkeyauthentication)'
```

**What it does:** Runs an SSH client/server diagnostic or validates SSH server configuration, depending on subcommand.

**How to read the command:** `sshd` is the utility. Options: `-T` means show filesystem type (df), or tool-specific detail; `-E` means a program-specific setting; check its local `--help`. `|` filters the output through another utility.

**Expected output:** Connection/validation output or syntax/configuration errors.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 5. sudo auditctl -s

```bash
sudo auditctl -s
```

**What it does:** Runs the installed Linux utility `auditctl` with the following arguments. This action depends on the specific tool and environment.

**How to read the command:** `auditctl` is the utility. Options: `-s` means summary or specify source, depending on program.

**Expected output:** Program output or error; inspect the original runbook and `man auditctl` if available.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 6. getenforce

```bash
getenforce
```

**What it does:** Checks whether SELinux is enforcing, permissive or disabled.

**How to read the command:** `getenforce` is the utility. Remaining words specify the file, service, device, user, host or action.

**Expected output:** `Enforcing`, `Permissive` or `Disabled`.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 7. sudo aa-status

```bash
sudo aa-status
```

**What it does:** Shows active AppArmor security profiles and which are enforcing or in complain mode.

**How to read the command:** `aa-status` is the utility. Remaining words specify the file, service, device, user, host or action.

**Expected output:** Profile counts and names.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 8. sudo nft list ruleset

```bash
sudo nft list ruleset
```

**What it does:** Displays firewall rules/status for the Linux host. Adding/removing firewall rules could disconnect services.

**How to read the command:** `nft` is the utility. Remaining words specify the file, service, device, user, host or action.

**Expected output:** Rule sets, allowed services/ports or firewall status.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 9. sudo firewall-cmd --state

```bash
sudo firewall-cmd --state
```

**What it does:** Displays firewall rules/status for the Linux host. Adding/removing firewall rules could disconnect services.

**How to read the command:** `firewall-cmd` is the utility. Options: `--state` means filter units by state.

**Expected output:** Rule sets, allowed services/ports or firewall status.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 10. sudo firewall-cmd --list-all

```bash
sudo firewall-cmd --list-all
```

**What it does:** Displays firewall rules/status for the Linux host. Adding/removing firewall rules could disconnect services.

**How to read the command:** `firewall-cmd` is the utility. Options: `--list-all` means a program-specific setting; check its local `--help`.

**Expected output:** Rule sets, allowed services/ports or firewall status.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 11. sudo ufw status verbose

```bash
sudo ufw status verbose
```

**What it does:** Displays firewall rules/status for the Linux host. Adding/removing firewall rules could disconnect services.

**How to read the command:** `ufw` is the utility. Remaining words specify the file, service, device, user, host or action.

**Expected output:** Rule sets, allowed services/ports or firewall status.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 12. getent group sudo

```bash
getent group sudo
```

**What it does:** Runs the installed Linux utility `getent` with the following arguments. This action depends on the specific tool and environment.

**How to read the command:** `getent` is the utility. Remaining words specify the file, service, device, user, host or action.

**Expected output:** Program output or error; inspect the original runbook and `man getent` if available.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 13. getent group wheel

```bash
getent group wheel
```

**What it does:** Runs the installed Linux utility `getent` with the following arguments. This action depends on the specific tool and environment.

**How to read the command:** `getent` is the utility. Remaining words specify the file, service, device, user, host or action.

**Expected output:** Program output or error; inspect the original runbook and `man getent` if available.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 14. sudo last -n 20

```bash
sudo last -n 20
```

**What it does:** Runs the installed Linux utility `last` with the following arguments. This action depends on the specific tool and environment.

**How to read the command:** `last` is the utility. Options: `-n` means display only N lines; namespace in kubectl.

**Expected output:** Program output or error; inspect the original runbook and `man last` if available.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 15. sudo journalctl -u sshd --since yesterday

```bash
sudo journalctl -u sshd --since yesterday
```

**What it does:** Opens the systemd journal (Linux's central log database) and displays messages from service `sshd`. It only reads logs; it does not restart or fix anything.

**How to read the command:** `journalctl` is the utility. Options: `-u` means filter logs to this systemd service (journalctl); `--since` means only messages from this time.

**Expected output:** Lines with timestamps, hostname, component and message. Find the first ERROR around the incident time, then read lines immediately before it.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Use `journalctl --list-boots` if the problem happened before a reboot.

## 16. sudo apt list --upgradable

```bash
sudo apt list --upgradable
```

**What it does:** Uses the distro's package manager to query or manage packages. This can modify a production server.

**How to read the command:** `apt` is the utility. Options: `--upgradable` means a program-specific setting; check its local `--help`.

**Expected output:** Package versions, dependency plan, downloads or installed/updated packages.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 17. sudo dnf updateinfo list security

```bash
sudo dnf updateinfo list security
```

**What it does:** Uses the distro's package manager to query or manage packages. This can modify a production server.

**How to read the command:** `dnf` is the utility. Remaining words specify the file, service, device, user, host or action.

**Expected output:** Package versions, dependency plan, downloads or installed/updated packages.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 18. sudo openssl version -a

```bash
sudo openssl version -a
```

**What it does:** Examines TLS certificates and handshakes; useful for expired/intermediate CA or hostname errors.

**How to read the command:** `openssl` is the utility. Options: `-a` means all devices/records or tool-specific.

**Expected output:** Certificate subject/issuer, validity, trust and handshake details.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 19. sudo find / -xdev -perm -4000 -type f 2>/dev/null

```bash
sudo find / -xdev -perm -4000 -type f 2>/dev/null
```

**What it does:** Searches a directory tree for files matching names, permissions or types; can consume IO on large paths.

**How to read the command:** `find` is the utility. Options: `-xdev` means a program-specific setting; check its local `--help`; `-perm` means a program-specific setting; check its local `--help`; `-4000` means a program-specific setting; check its local `--help`; `-type` means a program-specific setting; check its local `--help`.

**Expected output:** Paths and metadata matching the criteria.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 20. sudo find /etc -xdev -type f -perm /022 -ls 2>/dev/null

```bash
sudo find /etc -xdev -type f -perm /022 -ls 2>/dev/null
```

**What it does:** Searches a directory tree for files matching names, permissions or types; can consume IO on large paths.

**How to read the command:** `find` is the utility. Options: `-xdev` means a program-specific setting; check its local `--help`; `-type` means a program-specific setting; check its local `--help`; `-perm` means a program-specific setting; check its local `--help`; `-ls` means a program-specific setting; check its local `--help`.

**Expected output:** Paths and metadata matching the criteria.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 21. timedatectl status

```bash
timedatectl status
```

**What it does:** Checks time, timezone and whether system time is synchronized. Time drift can break TLS, authentication and cluster quorum.

**How to read the command:** `timedatectl` is the utility. Remaining words specify the file, service, device, user, host or action.

**Expected output:** Local/UTC time, timezone and NTP synchronization status.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 22. openssl s_client -connect YOUR_HOST:443 -servername YOUR_HOST </dev/null

```bash
openssl s_client -connect YOUR_HOST:443 -servername YOUR_HOST </dev/null
```

**What it does:** Examines TLS certificates and handshakes; useful for expired/intermediate CA or hostname errors.

**How to read the command:** `openssl` is the utility. Options: `-connect` means a program-specific setting; check its local `--help`; `-servername` means a program-specific setting; check its local `--help`.

**Expected output:** Certificate subject/issuer, validity, trust and handshake details.

**Before running:** Replace `YOUR_HOST` with real approved values. Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 23. sudo journalctl -u chronyd -n 50 --no-pager

```bash
sudo journalctl -u chronyd -n 50 --no-pager
```

**What it does:** Opens the systemd journal (Linux's central log database) and displays messages from service `chronyd`. It only reads logs; it does not restart or fix anything.

**How to read the command:** `journalctl` is the utility. Options: `-u` means filter logs to this systemd service (journalctl); `-n` means display only N lines; namespace in kubectl; `--no-pager` means write directly to terminal instead of using pager.

**Expected output:** Lines with timestamps, hostname, component and message. Find the first ERROR around the incident time, then read lines immediately before it.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Use `journalctl --list-boots` if the problem happened before a reboot.

## 24. sudo journalctl -u systemd-timesyncd -n 50 --no-pager

```bash
sudo journalctl -u systemd-timesyncd -n 50 --no-pager
```

**What it does:** Opens the systemd journal (Linux's central log database) and displays messages from service `systemd-timesyncd`. It only reads logs; it does not restart or fix anything.

**How to read the command:** `journalctl` is the utility. Options: `-u` means filter logs to this systemd service (journalctl); `-n` means display only N lines; namespace in kubectl; `--no-pager` means write directly to terminal instead of using pager.

**Expected output:** Lines with timestamps, hostname, component and message. Find the first ERROR around the incident time, then read lines immediately before it.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Use `journalctl --list-boots` if the problem happened before a reboot.

