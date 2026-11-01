# Offline explanations: 10-FAST-LOG-TROUBLESHOOTING.md

Source: [10-FAST-LOG-TROUBLESHOOTING.md](../10-FAST-LOG-TROUBLESHOOTING.md). This is a **local, internet-independent** explanation of every terminal example in the runbook, with syntax, prerequisites and operational risk. Validate against actual installed releases.

## 1. date -Is

```bash
date -Is
```

**What it does:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics.

**Complete command form:** `date` is the executable; the remaining words are targets/subcommands and options. Options: `-Is` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 2. uptime

```bash
uptime
```

**What it does:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics.

**Complete command form:** `uptime` is the executable; the remaining words are targets/subcommands and options. No named options.. Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 3. systemctl --failed --no-pager

```bash
systemctl --failed --no-pager
```

**What it does:** Inspect/change systemd unit state.

**Complete command form:** `systemctl` is the executable; the remaining words are targets/subcommands and options. Options: `--failed` (confirm tool-specific help); `--no-pager` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Inspect/change systemd unit state. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 4. journalctl -b -p err..alert --since '30 min ago' --no-pager -n 80

```bash
journalctl -b -p err..alert --since '30 min ago' --no-pager -n 80
```

**What it does:** Read service/kernel journal logs filtered by arguments.

**Complete command form:** `journalctl` is the executable; the remaining words are targets/subcommands and options. Options: `-b` (confirm tool-specific help); `-p` (confirm tool-specific help); `--since` (confirm tool-specific help); `--no-pager` (confirm tool-specific help); `-n` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Read service/kernel journal logs filtered by arguments. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 5. journalctl -k -b -p warning..alert --no-pager -n 80

```bash
journalctl -k -b -p warning..alert --no-pager -n 80
```

**What it does:** Read service/kernel journal logs filtered by arguments.

**Complete command form:** `journalctl` is the executable; the remaining words are targets/subcommands and options. Options: `-k` (confirm tool-specific help); `-b` (confirm tool-specific help); `-p` (confirm tool-specific help); `--no-pager` (confirm tool-specific help); `-n` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Read service/kernel journal logs filtered by arguments. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 6. df -hT

```bash
df -hT
```

**What it does:** Report available disk blocks/inodes.

**Complete command form:** `df` is the executable; the remaining words are targets/subcommands and options. Options: `-hT` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Report available disk blocks/inodes. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 7. df -i

```bash
df -i
```

**What it does:** Report available disk blocks/inodes.

**Complete command form:** `df` is the executable; the remaining words are targets/subcommands and options. Options: `-i` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Report available disk blocks/inodes. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 8. free -h

```bash
free -h
```

**What it does:** Read physical memory and swap statistics.

**Complete command form:** `free` is the executable; the remaining words are targets/subcommands and options. Options: `-h` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Read physical memory and swap statistics. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 9. ss -tulpn

```bash
ss -tulpn
```

**What it does:** Show active/listening sockets.

**Complete command form:** `ss` is the executable; the remaining words are targets/subcommands and options. Options: `-tulpn` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Show active/listening sockets. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 10. journalctl --list-boots

```bash
journalctl --list-boots
```

**What it does:** Read service/kernel journal logs filtered by arguments.

**Complete command form:** `journalctl` is the executable; the remaining words are targets/subcommands and options. Options: `--list-boots` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Read service/kernel journal logs filtered by arguments. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 11. journalctl -b --since '15 min ago' -p err..alert --no-pager

```bash
journalctl -b --since '15 min ago' -p err..alert --no-pager
```

**What it does:** Read service/kernel journal logs filtered by arguments.

**Complete command form:** `journalctl` is the executable; the remaining words are targets/subcommands and options. Options: `-b` (confirm tool-specific help); `--since` (confirm tool-specific help); `-p` (confirm tool-specific help); `--no-pager` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Read service/kernel journal logs filtered by arguments. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 12. journalctl -b -1 -p err..alert --no-pager -n 100

```bash
journalctl -b -1 -p err..alert --no-pager -n 100
```

**What it does:** Read service/kernel journal logs filtered by arguments.

**Complete command form:** `journalctl` is the executable; the remaining words are targets/subcommands and options. Options: `-b` (confirm tool-specific help); `-1` (confirm tool-specific help); `-p` (confirm tool-specific help); `--no-pager` (confirm tool-specific help); `-n` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Read service/kernel journal logs filtered by arguments. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 13. journalctl -b -k --since '1 hour ago' --no-pager -n 150

```bash
journalctl -b -k --since '1 hour ago' --no-pager -n 150
```

**What it does:** Read service/kernel journal logs filtered by arguments.

**Complete command form:** `journalctl` is the executable; the remaining words are targets/subcommands and options. Options: `-b` (confirm tool-specific help); `-k` (confirm tool-specific help); `--since` (confirm tool-specific help); `--no-pager` (confirm tool-specific help); `-n` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Read service/kernel journal logs filtered by arguments. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 14. journalctl -b -r --no-pager -n 100

```bash
journalctl -b -r --no-pager -n 100
```

**What it does:** Read service/kernel journal logs filtered by arguments.

**Complete command form:** `journalctl` is the executable; the remaining words are targets/subcommands and options. Options: `-b` (confirm tool-specific help); `-r` (confirm tool-specific help); `--no-pager` (confirm tool-specific help); `-n` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Read service/kernel journal logs filtered by arguments. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 15. journalctl --disk-usage

```bash
journalctl --disk-usage
```

**What it does:** Read service/kernel journal logs filtered by arguments.

**Complete command form:** `journalctl` is the executable; the remaining words are targets/subcommands and options. Options: `--disk-usage` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Read service/kernel journal logs filtered by arguments. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 16. systemctl status YOUR_SERVICE --no-pager -l

```bash
systemctl status YOUR_SERVICE --no-pager -l
```

**What it does:** Inspect/change systemd unit state.

**Complete command form:** `systemctl` is the executable; the remaining words are targets/subcommands and options. Options: `--no-pager` (confirm tool-specific help); `-l` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** YOUR_SERVICE. Replace only with authorized target values.

**Expected output:** Inspect/change systemd unit state. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 17. journalctl -u YOUR_SERVICE -b --since '30 min ago' --no-pager -n 150

```bash
journalctl -u YOUR_SERVICE -b --since '30 min ago' --no-pager -n 150
```

**What it does:** Read service/kernel journal logs filtered by arguments.

**Complete command form:** `journalctl` is the executable; the remaining words are targets/subcommands and options. Options: `-u` (confirm tool-specific help); `-b` (confirm tool-specific help); `--since` (confirm tool-specific help); `--no-pager` (confirm tool-specific help); `-n` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** YOUR_SERVICE. Replace only with authorized target values.

**Expected output:** Read service/kernel journal logs filtered by arguments. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 18. journalctl -u YOUR_SERVICE -b -p warning..alert --no-pager -n 100

```bash
journalctl -u YOUR_SERVICE -b -p warning..alert --no-pager -n 100
```

**What it does:** Read service/kernel journal logs filtered by arguments.

**Complete command form:** `journalctl` is the executable; the remaining words are targets/subcommands and options. Options: `-u` (confirm tool-specific help); `-b` (confirm tool-specific help); `-p` (confirm tool-specific help); `--no-pager` (confirm tool-specific help); `-n` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** YOUR_SERVICE. Replace only with authorized target values.

**Expected output:** Read service/kernel journal logs filtered by arguments. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 19. systemctl show YOUR_SERVICE -p ExecMainStatus -p ExecMainCode -p NRestarts -p ActiveState

```bash
systemctl show YOUR_SERVICE -p ExecMainStatus -p ExecMainCode -p NRestarts -p ActiveState
```

**What it does:** Inspect/change systemd unit state.

**Complete command form:** `systemctl` is the executable; the remaining words are targets/subcommands and options. Options: `-p` (confirm tool-specific help); `-p` (confirm tool-specific help); `-p` (confirm tool-specific help); `-p` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** YOUR_SERVICE. Replace only with authorized target values.

**Expected output:** Inspect/change systemd unit state. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 20. systemctl cat YOUR_SERVICE

```bash
systemctl cat YOUR_SERVICE
```

**What it does:** Inspect/change systemd unit state.

**Complete command form:** `systemctl` is the executable; the remaining words are targets/subcommands and options. No named options.. Shell pipes forward output, while redirects can write local files.

**Environment and variables:** YOUR_SERVICE. Replace only with authorized target values.

**Expected output:** Inspect/change systemd unit state. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 21. df -hT

```bash
df -hT
```

**What it does:** Report available disk blocks/inodes.

**Complete command form:** `df` is the executable; the remaining words are targets/subcommands and options. Options: `-hT` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Report available disk blocks/inodes. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 22. df -i

```bash
df -i
```

**What it does:** Report available disk blocks/inodes.

**Complete command form:** `df` is the executable; the remaining words are targets/subcommands and options. Options: `-i` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Report available disk blocks/inodes. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 23. findmnt -T /var/log

```bash
findmnt -T /var/log
```

**What it does:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics.

**Complete command form:** `findmnt` is the executable; the remaining words are targets/subcommands and options. Options: `-T` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 24. sudo du -xhd1 /var 2>/dev/null | sort -h | tail -20

```bash
sudo du -xhd1 /var 2>/dev/null | sort -h | tail -20
```

**What it does:** Measure directory/file size.

**Complete command form:** `du` is the executable; the remaining words are targets/subcommands and options. Options: `-xhd1` (confirm tool-specific help); `-h` (confirm tool-specific help); `-20` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Measure directory/file size. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 25. sudo journalctl -k -b --since '2 hours ago' | grep -Ei 'I/O error|timeout|reset|ext4|xfs|nvme|scsi|blk_up

```bash
sudo journalctl -k -b --since '2 hours ago' | grep -Ei 'I/O error|timeout|reset|ext4|xfs|nvme|scsi|blk_update_request' | tail -80
```

**What it does:** Read service/kernel journal logs filtered by arguments.

**Complete command form:** `journalctl` is the executable; the remaining words are targets/subcommands and options. Options: `-k` (confirm tool-specific help); `-b` (confirm tool-specific help); `--since` (confirm tool-specific help); `-Ei` (confirm tool-specific help); `-80` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Read service/kernel journal logs filtered by arguments. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟠 Action may modify host, credentials or allocate batch resources; require approval and rollback.

## 26. iostat -xz 1 5

```bash
iostat -xz 1 5
```

**What it does:** Disk utilization, queue depth and latency report.

**Complete command form:** `iostat` is the executable; the remaining words are targets/subcommands and options. Options: `-xz` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Disk utilization, queue depth and latency report. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 27. lsblk -o NAME,TYPE,SIZE,FSTYPE,MOUNTPOINTS

```bash
lsblk -o NAME,TYPE,SIZE,FSTYPE,MOUNTPOINTS
```

**What it does:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics.

**Complete command form:** `lsblk` is the executable; the remaining words are targets/subcommands and options. Options: `-o` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 28. journalctl -u sshd -b --since '1 hour ago' --no-pager -n 120

```bash
journalctl -u sshd -b --since '1 hour ago' --no-pager -n 120
```

**What it does:** Read service/kernel journal logs filtered by arguments.

**Complete command form:** `journalctl` is the executable; the remaining words are targets/subcommands and options. Options: `-u` (confirm tool-specific help); `-b` (confirm tool-specific help); `--since` (confirm tool-specific help); `--no-pager` (confirm tool-specific help); `-n` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Read service/kernel journal logs filtered by arguments. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 29. journalctl -u ssh -b --since '1 hour ago' --no-pager -n 120

```bash
journalctl -u ssh -b --since '1 hour ago' --no-pager -n 120
```

**What it does:** Read service/kernel journal logs filtered by arguments.

**Complete command form:** `journalctl` is the executable; the remaining words are targets/subcommands and options. Options: `-u` (confirm tool-specific help); `-b` (confirm tool-specific help); `--since` (confirm tool-specific help); `--no-pager` (confirm tool-specific help); `-n` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Read service/kernel journal logs filtered by arguments. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 30. sudo tail -n 100 /var/log/auth.log

```bash
sudo tail -n 100 /var/log/auth.log
```

**What it does:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics.

**Complete command form:** `tail` is the executable; the remaining words are targets/subcommands and options. Options: `-n` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 31. sudo tail -n 100 /var/log/secure

```bash
sudo tail -n 100 /var/log/secure
```

**What it does:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics.

**Complete command form:** `tail` is the executable; the remaining words are targets/subcommands and options. Options: `-n` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 32. sudo sshd -t

```bash
sudo sshd -t
```

**What it does:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics.

**Complete command form:** `sshd` is the executable; the remaining words are targets/subcommands and options. Options: `-t` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 33. sudo sshd -T | grep -Ei 'passwordauthentication|pubkeyauthentication|permitrootlogin'

```bash
sudo sshd -T | grep -Ei 'passwordauthentication|pubkeyauthentication|permitrootlogin'
```

**What it does:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics.

**Complete command form:** `sshd` is the executable; the remaining words are targets/subcommands and options. Options: `-T` (confirm tool-specific help); `-Ei` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 34. resolvectl status

```bash
resolvectl status
```

**What it does:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics.

**Complete command form:** `resolvectl` is the executable; the remaining words are targets/subcommands and options. No named options.. Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 35. getent ahosts YOUR_FQDN

```bash
getent ahosts YOUR_FQDN
```

**What it does:** Resolve NSS hosts or user/group database.

**Complete command form:** `getent` is the executable; the remaining words are targets/subcommands and options. No named options.. Shell pipes forward output, while redirects can write local files.

**Environment and variables:** YOUR_FQDN. Replace only with authorized target values.

**Expected output:** Resolve NSS hosts or user/group database. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 36. dig @YOUR_DNS_SERVER YOUR_FQDN A +time=2 +tries=1

```bash
dig @YOUR_DNS_SERVER YOUR_FQDN A +time=2 +tries=1
```

**What it does:** DNS request to chosen server.

**Complete command form:** `dig` is the executable; the remaining words are targets/subcommands and options. No named options.. Shell pipes forward output, while redirects can write local files.

**Environment and variables:** YOUR_DNS_SERVER, YOUR_FQDN. Replace only with authorized target values.

**Expected output:** DNS request to chosen server. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 37. ip route get YOUR_DESTINATION_IP

```bash
ip route get YOUR_DESTINATION_IP
```

**What it does:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics.

**Complete command form:** `ip` is the executable; the remaining words are targets/subcommands and options. No named options.. Shell pipes forward output, while redirects can write local files.

**Environment and variables:** YOUR_DESTINATION_IP. Replace only with authorized target values.

**Expected output:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 38. curl -Iv --connect-timeout 5 https://YOUR_FQDN

```bash
curl -Iv --connect-timeout 5 https://YOUR_FQDN
```

**What it does:** HTTP endpoint and TLS test.

**Complete command form:** `curl` is the executable; the remaining words are targets/subcommands and options. Options: `-Iv` (confirm tool-specific help); `--connect-timeout` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** YOUR_FQDN. Replace only with authorized target values.

**Expected output:** HTTP endpoint and TLS test. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 39. timedatectl status

```bash
timedatectl status
```

**What it does:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics.

**Complete command form:** `timedatectl` is the executable; the remaining words are targets/subcommands and options. No named options.. Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 40. journalctl -u systemd-resolved -b --no-pager -n 100

```bash
journalctl -u systemd-resolved -b --no-pager -n 100
```

**What it does:** Read service/kernel journal logs filtered by arguments.

**Complete command form:** `journalctl` is the executable; the remaining words are targets/subcommands and options. Options: `-u` (confirm tool-specific help); `-b` (confirm tool-specific help); `--no-pager` (confirm tool-specific help); `-n` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Read service/kernel journal logs filtered by arguments. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 41. systemctl status containerd --no-pager

```bash
systemctl status containerd --no-pager
```

**What it does:** Inspect/change systemd unit state.

**Complete command form:** `systemctl` is the executable; the remaining words are targets/subcommands and options. Options: `--no-pager` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Inspect/change systemd unit state. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 42. journalctl -u containerd -b --since '30 min ago' --no-pager -n 100

```bash
journalctl -u containerd -b --since '30 min ago' --no-pager -n 100
```

**What it does:** Read service/kernel journal logs filtered by arguments.

**Complete command form:** `journalctl` is the executable; the remaining words are targets/subcommands and options. Options: `-u` (confirm tool-specific help); `-b` (confirm tool-specific help); `--since` (confirm tool-specific help); `--no-pager` (confirm tool-specific help); `-n` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Read service/kernel journal logs filtered by arguments. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 43. journalctl -u kubelet -b --since '30 min ago' --no-pager -n 150

```bash
journalctl -u kubelet -b --since '30 min ago' --no-pager -n 150
```

**What it does:** Read service/kernel journal logs filtered by arguments.

**Complete command form:** `journalctl` is the executable; the remaining words are targets/subcommands and options. Options: `-u` (confirm tool-specific help); `-b` (confirm tool-specific help); `--since` (confirm tool-specific help); `--no-pager` (confirm tool-specific help); `-n` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Read service/kernel journal logs filtered by arguments. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 44. journalctl -u k3s -b --since '30 min ago' --no-pager -n 150

```bash
journalctl -u k3s -b --since '30 min ago' --no-pager -n 150
```

**What it does:** Read service/kernel journal logs filtered by arguments.

**Complete command form:** `journalctl` is the executable; the remaining words are targets/subcommands and options. Options: `-u` (confirm tool-specific help); `-b` (confirm tool-specific help); `--since` (confirm tool-specific help); `--no-pager` (confirm tool-specific help); `-n` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Read service/kernel journal logs filtered by arguments. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 45. journalctl -u k3s-agent -b --since '30 min ago' --no-pager -n 150

```bash
journalctl -u k3s-agent -b --since '30 min ago' --no-pager -n 150
```

**What it does:** Read service/kernel journal logs filtered by arguments.

**Complete command form:** `journalctl` is the executable; the remaining words are targets/subcommands and options. Options: `-u` (confirm tool-specific help); `-b` (confirm tool-specific help); `--since` (confirm tool-specific help); `--no-pager` (confirm tool-specific help); `-n` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Read service/kernel journal logs filtered by arguments. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 46. sudo crictl ps -a

```bash
sudo crictl ps -a
```

**What it does:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics.

**Complete command form:** `crictl` is the executable; the remaining words are targets/subcommands and options. Options: `-a` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 47. sudo crictl info

```bash
sudo crictl info
```

**What it does:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics.

**Complete command form:** `crictl` is the executable; the remaining words are targets/subcommands and options. No named options.. Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 48. sudo dmesg -T | tail -100

```bash
sudo dmesg -T | tail -100
```

**What it does:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics.

**Complete command form:** `dmesg` is the executable; the remaining words are targets/subcommands and options. Options: `-T` (confirm tool-specific help); `-100` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 49. ip -br link

```bash
ip -br link
```

**What it does:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics.

**Complete command form:** `ip` is the executable; the remaining words are targets/subcommands and options. Options: `-br` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 50. ip -br addr

```bash
ip -br addr
```

**What it does:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics.

**Complete command form:** `ip` is the executable; the remaining words are targets/subcommands and options. Options: `-br` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 51. ip route

```bash
ip route
```

**What it does:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics.

**Complete command form:** `ip` is the executable; the remaining words are targets/subcommands and options. No named options.. Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 52. ss -s

```bash
ss -s
```

**What it does:** Show active/listening sockets.

**Complete command form:** `ss` is the executable; the remaining words are targets/subcommands and options. Options: `-s` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Show active/listening sockets. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 53. sudo nft list ruleset

```bash
sudo nft list ruleset
```

**What it does:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics.

**Complete command form:** `nft` is the executable; the remaining words are targets/subcommands and options. No named options.. Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 54. sudo journalctl -k -b | grep -Ei 'link.*down|NETDEV|watchdog|drop|conntrack|NIC' | tail -100

```bash
sudo journalctl -k -b | grep -Ei 'link.*down|NETDEV|watchdog|drop|conntrack|NIC' | tail -100
```

**What it does:** Read service/kernel journal logs filtered by arguments.

**Complete command form:** `journalctl` is the executable; the remaining words are targets/subcommands and options. Options: `-k` (confirm tool-specific help); `-b` (confirm tool-specific help); `-Ei` (confirm tool-specific help); `-100` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Read service/kernel journal logs filtered by arguments. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 55. sudo ethtool YOUR_INTERFACE

```bash
sudo ethtool YOUR_INTERFACE
```

**What it does:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics.

**Complete command form:** `ethtool` is the executable; the remaining words are targets/subcommands and options. No named options.. Shell pipes forward output, while redirects can write local files.

**Environment and variables:** YOUR_INTERFACE. Replace only with authorized target values.

**Expected output:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 56. mkdir -p ./incident-logs

```bash
mkdir -p ./incident-logs
```

**What it does:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics.

**Complete command form:** `mkdir` is the executable; the remaining words are targets/subcommands and options. Options: `-p` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 57. journalctl -b -p err..alert --since '30 min ago' --no-pager -n 200 > ./incident-logs/errors.txt

```bash
journalctl -b -p err..alert --since '30 min ago' --no-pager -n 200 > ./incident-logs/errors.txt
```

**What it does:** Read service/kernel journal logs filtered by arguments.

**Complete command form:** `journalctl` is the executable; the remaining words are targets/subcommands and options. Options: `-b` (confirm tool-specific help); `-p` (confirm tool-specific help); `--since` (confirm tool-specific help); `--no-pager` (confirm tool-specific help); `-n` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Read service/kernel journal logs filtered by arguments. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 58. systemctl --failed --no-pager > ./incident-logs/failed-services.txt

```bash
systemctl --failed --no-pager > ./incident-logs/failed-services.txt
```

**What it does:** Inspect/change systemd unit state.

**Complete command form:** `systemctl` is the executable; the remaining words are targets/subcommands and options. Options: `--failed` (confirm tool-specific help); `--no-pager` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Inspect/change systemd unit state. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 59. df -hT > ./incident-logs/disk.txt

```bash
df -hT > ./incident-logs/disk.txt
```

**What it does:** Report available disk blocks/inodes.

**Complete command form:** `df` is the executable; the remaining words are targets/subcommands and options. Options: `-hT` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Report available disk blocks/inodes. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 60. uptime > ./incident-logs/uptime.txt

```bash
uptime > ./incident-logs/uptime.txt
```

**What it does:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics.

**Complete command form:** `uptime` is the executable; the remaining words are targets/subcommands and options. No named options.. Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

