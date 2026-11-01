# 10 — Linux emergency logs: find the cause in the first 60 seconds

> **Fast read-only incident triage.** Start with boot scope, time and affected service. Avoid dumping entire logs, secrets, authentication tokens, full process environments or customer data into tickets/ChatGPT. Use `sudo` only where required, and distinguish a transient warning from the root cause.

## 🚨 First 60 seconds — universal checklist

## Paste first: overall health and errors (READ ONLY)

A fast initial snapshot for most systemd-based Linux servers. If `journalctl` is unavailable use the distro's syslog service/log files.

> ⚠️ A failed unit may be unrelated; correlate with incident time. Kernel/journal logs may need sudo or membership in systemd-journal.

```bash
date -Is
uptime
systemctl --failed --no-pager
journalctl -b -p err..alert --since '30 min ago' --no-pager -n 80
journalctl -k -b -p warning..alert --no-pager -n 80
df -hT
df -i
free -h
ss -tulpn
```

<details>
<summary>🧠 Explain each command in ChatGPT (9)</summary>

- [1. Explain `date -Is`](https://chatgpt.com/?q=Explain%20this%20Linux%20command%20exactly%2C%20token%20by%20token%20including%20syntax%2C%20flags%2C%20variables%2C%20required%20privileges%2C%20expected%20output%2C%20version%2Fdistro%20caveats%2C%20production%20risks%2C%20errors%20and%20safer%20alternatives.%20Do%20not%20execute%20it.%20Command%3A%20date%20-Is)
- [2. Explain `uptime`](https://chatgpt.com/?q=Explain%20this%20Linux%20command%20exactly%2C%20token%20by%20token%20including%20syntax%2C%20flags%2C%20variables%2C%20required%20privileges%2C%20expected%20output%2C%20version%2Fdistro%20caveats%2C%20production%20risks%2C%20errors%20and%20safer%20alternatives.%20Do%20not%20execute%20it.%20Command%3A%20uptime)
- [3. Explain `systemctl --failed --no-pager`](https://chatgpt.com/?q=Explain%20this%20Linux%20command%20exactly%2C%20token%20by%20token%20including%20syntax%2C%20flags%2C%20variables%2C%20required%20privileges%2C%20expected%20output%2C%20version%2Fdistro%20caveats%2C%20production%20risks%2C%20errors%20and%20safer%20alternatives.%20Do%20not%20execute%20it.%20Command%3A%20systemctl%20--failed%20--no-pager)
- [4. Explain `journalctl -b -p err..alert --since '30 min ago' --no-pager -n 80`](https://chatgpt.com/?q=Explain%20this%20Linux%20command%20exactly%2C%20token%20by%20token%20including%20syntax%2C%20flags%2C%20variables%2C%20required%20privileges%2C%20expected%20output%2C%20version%2Fdistro%20caveats%2C%20production%20risks%2C%20errors%20and%20safer%20alternatives.%20Do%20not%20execute%20it.%20Command%3A%20journalctl%20-b%20-p%20err..alert%20--since%20'30%20min%20ago'%20--no-pager%20-n%2080)
- [5. Explain `journalctl -k -b -p warning..alert --no-pager -n 80`](https://chatgpt.com/?q=Explain%20this%20Linux%20command%20exactly%2C%20token%20by%20token%20including%20syntax%2C%20flags%2C%20variables%2C%20required%20privileges%2C%20expected%20output%2C%20version%2Fdistro%20caveats%2C%20production%20risks%2C%20errors%20and%20safer%20alternatives.%20Do%20not%20execute%20it.%20Command%3A%20journalctl%20-k%20-b%20-p%20warning..alert%20--no-pager%20-n%2080)
- [6. Explain `df -hT`](https://chatgpt.com/?q=Explain%20this%20Linux%20command%20exactly%2C%20token%20by%20token%20including%20syntax%2C%20flags%2C%20variables%2C%20required%20privileges%2C%20expected%20output%2C%20version%2Fdistro%20caveats%2C%20production%20risks%2C%20errors%20and%20safer%20alternatives.%20Do%20not%20execute%20it.%20Command%3A%20df%20-hT)
- [7. Explain `df -i`](https://chatgpt.com/?q=Explain%20this%20Linux%20command%20exactly%2C%20token%20by%20token%20including%20syntax%2C%20flags%2C%20variables%2C%20required%20privileges%2C%20expected%20output%2C%20version%2Fdistro%20caveats%2C%20production%20risks%2C%20errors%20and%20safer%20alternatives.%20Do%20not%20execute%20it.%20Command%3A%20df%20-i)
- [8. Explain `free -h`](https://chatgpt.com/?q=Explain%20this%20Linux%20command%20exactly%2C%20token%20by%20token%20including%20syntax%2C%20flags%2C%20variables%2C%20required%20privileges%2C%20expected%20output%2C%20version%2Fdistro%20caveats%2C%20production%20risks%2C%20errors%20and%20safer%20alternatives.%20Do%20not%20execute%20it.%20Command%3A%20free%20-h)
- [9. Explain `ss -tulpn`](https://chatgpt.com/?q=Explain%20this%20Linux%20command%20exactly%2C%20token%20by%20token%20including%20syntax%2C%20flags%2C%20variables%2C%20required%20privileges%2C%20expected%20output%2C%20version%2Fdistro%20caveats%2C%20production%20risks%2C%20errors%20and%20safer%20alternatives.%20Do%20not%20execute%20it.%20Command%3A%20ss%20-tulpn)

</details>

## Symptom → where to look first

| Symptom | Fastest source | Typical root causes |
|---|---|---|
| Service stopped / repeatedly crashes | `systemctl status`, `journalctl -u` | Bad config, dependency, OOM, permission, port conflict |
| Server slow or hanging | `journalctl -k`, `dmesg`, `vmstat`, `iostat` | Memory reclaim, stuck disk, I/O timeouts, CPU contention |
| SSH login rejected | `journalctl -u sshd/ssh`, `/var/log/auth.log` or `/var/log/secure` | PAM, sshd config, locked user, MFA, firewall |
| Disk full | `df -h`, `df -i`, `du`, journal use | Logs, orphan files, full inode table |
| DNS fails | `resolvectl`, `dig`, systemd-resolved logs | Resolver, DNSSEC, network, bad forwarders |
| Network intermittent | `journalctl -k`, NetworkManager/systemd-networkd | NIC reset, MTU, route, DHCP, VLAN |
| Filesystem read-only / I/O | Kernel journal, `findmnt`, `iostat` | Block device, SAN, fs errors |
| Boot fails | `journalctl -b -1`, `systemctl --failed` | fstab, encryption, mounts, initramfs |
| Container won't start | `journalctl -u containerd/docker/k3s`, runtime logs | Image pull, disk, cgroups, TLS |
| Kubernetes kubelet NotReady | `journalctl -u kubelet`, containerd, CNI pods | CRI, certificates, IP, node pressure |

## Find errors in a narrow time window (READ ONLY)

Use journal priorities: `0=emerg`, `1=alert`, `2=crit`, `3=err`, `4=warning`, `5=notice`, `6=info`, `7=debug`. Start with error and warning levels; not every log includes structured priority.

> For `journalctl -b -1`, persistent journals must exist; otherwise prior boots may not be available.

```bash
journalctl --list-boots
journalctl -b --since '15 min ago' -p err..alert --no-pager
journalctl -b -1 -p err..alert --no-pager -n 100
journalctl -b -k --since '1 hour ago' --no-pager -n 150
journalctl -b -r --no-pager -n 100
journalctl --disk-usage
```

<details>
<summary>🧠 Explain each command in ChatGPT (6)</summary>

- [1. Explain `journalctl --list-boots`](https://chatgpt.com/?q=Explain%20this%20Linux%20command%20exactly%2C%20token%20by%20token%20including%20syntax%2C%20flags%2C%20variables%2C%20required%20privileges%2C%20expected%20output%2C%20version%2Fdistro%20caveats%2C%20production%20risks%2C%20errors%20and%20safer%20alternatives.%20Do%20not%20execute%20it.%20Command%3A%20journalctl%20--list-boots)
- [2. Explain `journalctl -b --since '15 min ago' -p err..alert --no-pager`](https://chatgpt.com/?q=Explain%20this%20Linux%20command%20exactly%2C%20token%20by%20token%20including%20syntax%2C%20flags%2C%20variables%2C%20required%20privileges%2C%20expected%20output%2C%20version%2Fdistro%20caveats%2C%20production%20risks%2C%20errors%20and%20safer%20alternatives.%20Do%20not%20execute%20it.%20Command%3A%20journalctl%20-b%20--since%20'15%20min%20ago'%20-p%20err..alert%20--no-pager)
- [3. Explain `journalctl -b -1 -p err..alert --no-pager -n 100`](https://chatgpt.com/?q=Explain%20this%20Linux%20command%20exactly%2C%20token%20by%20token%20including%20syntax%2C%20flags%2C%20variables%2C%20required%20privileges%2C%20expected%20output%2C%20version%2Fdistro%20caveats%2C%20production%20risks%2C%20errors%20and%20safer%20alternatives.%20Do%20not%20execute%20it.%20Command%3A%20journalctl%20-b%20-1%20-p%20err..alert%20--no-pager%20-n%20100)
- [4. Explain `journalctl -b -k --since '1 hour ago' --no-pager -n 150`](https://chatgpt.com/?q=Explain%20this%20Linux%20command%20exactly%2C%20token%20by%20token%20including%20syntax%2C%20flags%2C%20variables%2C%20required%20privileges%2C%20expected%20output%2C%20version%2Fdistro%20caveats%2C%20production%20risks%2C%20errors%20and%20safer%20alternatives.%20Do%20not%20execute%20it.%20Command%3A%20journalctl%20-b%20-k%20--since%20'1%20hour%20ago'%20--no-pager%20-n%20150)
- [5. Explain `journalctl -b -r --no-pager -n 100`](https://chatgpt.com/?q=Explain%20this%20Linux%20command%20exactly%2C%20token%20by%20token%20including%20syntax%2C%20flags%2C%20variables%2C%20required%20privileges%2C%20expected%20output%2C%20version%2Fdistro%20caveats%2C%20production%20risks%2C%20errors%20and%20safer%20alternatives.%20Do%20not%20execute%20it.%20Command%3A%20journalctl%20-b%20-r%20--no-pager%20-n%20100)
- [6. Explain `journalctl --disk-usage`](https://chatgpt.com/?q=Explain%20this%20Linux%20command%20exactly%2C%20token%20by%20token%20including%20syntax%2C%20flags%2C%20variables%2C%20required%20privileges%2C%20expected%20output%2C%20version%2Fdistro%20caveats%2C%20production%20risks%2C%20errors%20and%20safer%20alternatives.%20Do%20not%20execute%20it.%20Command%3A%20journalctl%20--disk-usage)

</details>

## One broken systemd service (READ ONLY)

Replace `YOUR_SERVICE` with the actual unit, e.g. `nginx`, `sshd`, `kubelet`, `containerd`, `docker` or `k3s`.

> To follow live output, `journalctl -fu YOUR_SERVICE` is read-only but runs until Ctrl+C.

```bash
systemctl status YOUR_SERVICE --no-pager -l
journalctl -u YOUR_SERVICE -b --since '30 min ago' --no-pager -n 150
journalctl -u YOUR_SERVICE -b -p warning..alert --no-pager -n 100
systemctl show YOUR_SERVICE -p ExecMainStatus -p ExecMainCode -p NRestarts -p ActiveState
systemctl cat YOUR_SERVICE
```

<details>
<summary>🧠 Explain each command in ChatGPT (5)</summary>

- [1. Explain `systemctl status YOUR_SERVICE --no-pager -l`](https://chatgpt.com/?q=Explain%20this%20Linux%20command%20exactly%2C%20token%20by%20token%20including%20syntax%2C%20flags%2C%20variables%2C%20required%20privileges%2C%20expected%20output%2C%20version%2Fdistro%20caveats%2C%20production%20risks%2C%20errors%20and%20safer%20alternatives.%20Do%20not%20execute%20it.%20Command%3A%20systemctl%20status%20YOUR_SERVICE%20--no-pager%20-l)
- [2. Explain `journalctl -u YOUR_SERVICE -b --since '30 min ago' --no-pager -n 150`](https://chatgpt.com/?q=Explain%20this%20Linux%20command%20exactly%2C%20token%20by%20token%20including%20syntax%2C%20flags%2C%20variables%2C%20required%20privileges%2C%20expected%20output%2C%20version%2Fdistro%20caveats%2C%20production%20risks%2C%20errors%20and%20safer%20alternatives.%20Do%20not%20execute%20it.%20Command%3A%20journalctl%20-u%20YOUR_SERVICE%20-b%20--since%20'30%20min%20ago'%20--no-pager%20-n%20150)
- [3. Explain `journalctl -u YOUR_SERVICE -b -p warning..alert --no-pager -n 100`](https://chatgpt.com/?q=Explain%20this%20Linux%20command%20exactly%2C%20token%20by%20token%20including%20syntax%2C%20flags%2C%20variables%2C%20required%20privileges%2C%20expected%20output%2C%20version%2Fdistro%20caveats%2C%20production%20risks%2C%20errors%20and%20safer%20alternatives.%20Do%20not%20execute%20it.%20Command%3A%20journalctl%20-u%20YOUR_SERVICE%20-b%20-p%20warning..alert%20--no-pager%20-n%20100)
- [4. Explain `systemctl show YOUR_SERVICE -p ExecMainStatus -p ExecMainCode -p NRestarts -p ActiveState`](https://chatgpt.com/?q=Explain%20this%20Linux%20command%20exactly%2C%20token%20by%20token%20including%20syntax%2C%20flags%2C%20variables%2C%20required%20privileges%2C%20expected%20output%2C%20version%2Fdistro%20caveats%2C%20production%20risks%2C%20errors%20and%20safer%20alternatives.%20Do%20not%20execute%20it.%20Command%3A%20systemctl%20show%20YOUR_SERVICE%20-p%20ExecMainStatus%20-p%20ExecMainCode%20-p%20NRestarts%20-p%20ActiveState)
- [5. Explain `systemctl cat YOUR_SERVICE`](https://chatgpt.com/?q=Explain%20this%20Linux%20command%20exactly%2C%20token%20by%20token%20including%20syntax%2C%20flags%2C%20variables%2C%20required%20privileges%2C%20expected%20output%2C%20version%2Fdistro%20caveats%2C%20production%20risks%2C%20errors%20and%20safer%20alternatives.%20Do%20not%20execute%20it.%20Command%3A%20systemctl%20cat%20YOUR_SERVICE)

</details>

## Disk full, storage latency, filesystem problems (READ ONLY)

Check capacity, inode exhaustion and actual kernel I/O errors before removing files.

> Avoid `rm -rf /var/log`, deleting database WAL or running `fsck` on a mounted filesystem. `iostat` requires sysstat.

```bash
df -hT
df -i
findmnt -T /var/log
sudo du -xhd1 /var 2>/dev/null | sort -h | tail -20
sudo journalctl -k -b --since '2 hours ago' | grep -Ei 'I/O error|timeout|reset|ext4|xfs|nvme|scsi|blk_update_request' | tail -80
iostat -xz 1 5
lsblk -o NAME,TYPE,SIZE,FSTYPE,MOUNTPOINTS
```

<details>
<summary>🧠 Explain each command in ChatGPT (7)</summary>

- [1. Explain `df -hT`](https://chatgpt.com/?q=Explain%20this%20Linux%20command%20exactly%2C%20token%20by%20token%20including%20syntax%2C%20flags%2C%20variables%2C%20required%20privileges%2C%20expected%20output%2C%20version%2Fdistro%20caveats%2C%20production%20risks%2C%20errors%20and%20safer%20alternatives.%20Do%20not%20execute%20it.%20Command%3A%20df%20-hT)
- [2. Explain `df -i`](https://chatgpt.com/?q=Explain%20this%20Linux%20command%20exactly%2C%20token%20by%20token%20including%20syntax%2C%20flags%2C%20variables%2C%20required%20privileges%2C%20expected%20output%2C%20version%2Fdistro%20caveats%2C%20production%20risks%2C%20errors%20and%20safer%20alternatives.%20Do%20not%20execute%20it.%20Command%3A%20df%20-i)
- [3. Explain `findmnt -T /var/log`](https://chatgpt.com/?q=Explain%20this%20Linux%20command%20exactly%2C%20token%20by%20token%20including%20syntax%2C%20flags%2C%20variables%2C%20required%20privileges%2C%20expected%20output%2C%20version%2Fdistro%20caveats%2C%20production%20risks%2C%20errors%20and%20safer%20alternatives.%20Do%20not%20execute%20it.%20Command%3A%20findmnt%20-T%20%2Fvar%2Flog)
- [4. Explain `sudo du -xhd1 /var 2>/dev/null | sort -h | tail -20`](https://chatgpt.com/?q=Explain%20this%20Linux%20command%20exactly%2C%20token%20by%20token%20including%20syntax%2C%20flags%2C%20variables%2C%20required%20privileges%2C%20expected%20output%2C%20version%2Fdistro%20caveats%2C%20production%20risks%2C%20errors%20and%20safer%20alternatives.%20Do%20not%20execute%20it.%20Command%3A%20sudo%20du%20-xhd1%20%2Fvar%202%3E%2Fdev%2Fnull%20%7C%20sort%20-h%20%7C%20tail%20-20)
- [5. Explain `sudo journalctl -k -b --since '2 hours ago' | grep -Ei 'I/O error|timeout|reset|ext4|xfs|nvme|s`](https://chatgpt.com/?q=Explain%20this%20Linux%20command%20exactly%2C%20token%20by%20token%20including%20syntax%2C%20flags%2C%20variables%2C%20required%20privileges%2C%20expected%20output%2C%20version%2Fdistro%20caveats%2C%20production%20risks%2C%20errors%20and%20safer%20alternatives.%20Do%20not%20execute%20it.%20Command%3A%20sudo%20journalctl%20-k%20-b%20--since%20'2%20hours%20ago'%20%7C%20grep%20-Ei%20'I%2FO%20error%7Ctimeout%7Creset%7Cext4%7Cxfs%7Cnvme%7Cscsi%7Cblk_update_request'%20%7C%20tail%20-80)
- [6. Explain `iostat -xz 1 5`](https://chatgpt.com/?q=Explain%20this%20Linux%20command%20exactly%2C%20token%20by%20token%20including%20syntax%2C%20flags%2C%20variables%2C%20required%20privileges%2C%20expected%20output%2C%20version%2Fdistro%20caveats%2C%20production%20risks%2C%20errors%20and%20safer%20alternatives.%20Do%20not%20execute%20it.%20Command%3A%20iostat%20-xz%201%205)
- [7. Explain `lsblk -o NAME,TYPE,SIZE,FSTYPE,MOUNTPOINTS`](https://chatgpt.com/?q=Explain%20this%20Linux%20command%20exactly%2C%20token%20by%20token%20including%20syntax%2C%20flags%2C%20variables%2C%20required%20privileges%2C%20expected%20output%2C%20version%2Fdistro%20caveats%2C%20production%20risks%2C%20errors%20and%20safer%20alternatives.%20Do%20not%20execute%20it.%20Command%3A%20lsblk%20-o%20NAME%2CTYPE%2CSIZE%2CFSTYPE%2CMOUNTPOINTS)

</details>

## SSH, user authentication and PAM (READ ONLY)

On Ubuntu/Debian SSH unit may be `ssh`; RHEL often `sshd`. Journal messages can include account/IP identifiers.

> Log files may be missing because journald is the logging backend. Never change SSH config without out-of-band console.

```bash
journalctl -u sshd -b --since '1 hour ago' --no-pager -n 120
journalctl -u ssh -b --since '1 hour ago' --no-pager -n 120
sudo tail -n 100 /var/log/auth.log
sudo tail -n 100 /var/log/secure
sudo sshd -t
sudo sshd -T | grep -Ei 'passwordauthentication|pubkeyauthentication|permitrootlogin'
```

<details>
<summary>🧠 Explain each command in ChatGPT (6)</summary>

- [1. Explain `journalctl -u sshd -b --since '1 hour ago' --no-pager -n 120`](https://chatgpt.com/?q=Explain%20this%20Linux%20command%20exactly%2C%20token%20by%20token%20including%20syntax%2C%20flags%2C%20variables%2C%20required%20privileges%2C%20expected%20output%2C%20version%2Fdistro%20caveats%2C%20production%20risks%2C%20errors%20and%20safer%20alternatives.%20Do%20not%20execute%20it.%20Command%3A%20journalctl%20-u%20sshd%20-b%20--since%20'1%20hour%20ago'%20--no-pager%20-n%20120)
- [2. Explain `journalctl -u ssh -b --since '1 hour ago' --no-pager -n 120`](https://chatgpt.com/?q=Explain%20this%20Linux%20command%20exactly%2C%20token%20by%20token%20including%20syntax%2C%20flags%2C%20variables%2C%20required%20privileges%2C%20expected%20output%2C%20version%2Fdistro%20caveats%2C%20production%20risks%2C%20errors%20and%20safer%20alternatives.%20Do%20not%20execute%20it.%20Command%3A%20journalctl%20-u%20ssh%20-b%20--since%20'1%20hour%20ago'%20--no-pager%20-n%20120)
- [3. Explain `sudo tail -n 100 /var/log/auth.log`](https://chatgpt.com/?q=Explain%20this%20Linux%20command%20exactly%2C%20token%20by%20token%20including%20syntax%2C%20flags%2C%20variables%2C%20required%20privileges%2C%20expected%20output%2C%20version%2Fdistro%20caveats%2C%20production%20risks%2C%20errors%20and%20safer%20alternatives.%20Do%20not%20execute%20it.%20Command%3A%20sudo%20tail%20-n%20100%20%2Fvar%2Flog%2Fauth.log)
- [4. Explain `sudo tail -n 100 /var/log/secure`](https://chatgpt.com/?q=Explain%20this%20Linux%20command%20exactly%2C%20token%20by%20token%20including%20syntax%2C%20flags%2C%20variables%2C%20required%20privileges%2C%20expected%20output%2C%20version%2Fdistro%20caveats%2C%20production%20risks%2C%20errors%20and%20safer%20alternatives.%20Do%20not%20execute%20it.%20Command%3A%20sudo%20tail%20-n%20100%20%2Fvar%2Flog%2Fsecure)
- [5. Explain `sudo sshd -t`](https://chatgpt.com/?q=Explain%20this%20Linux%20command%20exactly%2C%20token%20by%20token%20including%20syntax%2C%20flags%2C%20variables%2C%20required%20privileges%2C%20expected%20output%2C%20version%2Fdistro%20caveats%2C%20production%20risks%2C%20errors%20and%20safer%20alternatives.%20Do%20not%20execute%20it.%20Command%3A%20sudo%20sshd%20-t)
- [6. Explain `sudo sshd -T | grep -Ei 'passwordauthentication|pubkeyauthentication|permitrootlogin'`](https://chatgpt.com/?q=Explain%20this%20Linux%20command%20exactly%2C%20token%20by%20token%20including%20syntax%2C%20flags%2C%20variables%2C%20required%20privileges%2C%20expected%20output%2C%20version%2Fdistro%20caveats%2C%20production%20risks%2C%20errors%20and%20safer%20alternatives.%20Do%20not%20execute%20it.%20Command%3A%20sudo%20sshd%20-T%20%7C%20grep%20-Ei%20'passwordauthentication%7Cpubkeyauthentication%7Cpermitrootlogin')

</details>

## DNS, TLS, time and routes (READ ONLY)

Compare resolution through the system resolver and an explicitly approved DNS server.

> DNS and TLS tools can generate network traffic. Do not paste real URLs, identifiers or TLS diagnostic data into public channels.

```bash
resolvectl status
getent ahosts YOUR_FQDN
dig @YOUR_DNS_SERVER YOUR_FQDN A +time=2 +tries=1
ip route get YOUR_DESTINATION_IP
curl -Iv --connect-timeout 5 https://YOUR_FQDN
timedatectl status
journalctl -u systemd-resolved -b --no-pager -n 100
```

<details>
<summary>🧠 Explain each command in ChatGPT (7)</summary>

- [1. Explain `resolvectl status`](https://chatgpt.com/?q=Explain%20this%20Linux%20command%20exactly%2C%20token%20by%20token%20including%20syntax%2C%20flags%2C%20variables%2C%20required%20privileges%2C%20expected%20output%2C%20version%2Fdistro%20caveats%2C%20production%20risks%2C%20errors%20and%20safer%20alternatives.%20Do%20not%20execute%20it.%20Command%3A%20resolvectl%20status)
- [2. Explain `getent ahosts YOUR_FQDN`](https://chatgpt.com/?q=Explain%20this%20Linux%20command%20exactly%2C%20token%20by%20token%20including%20syntax%2C%20flags%2C%20variables%2C%20required%20privileges%2C%20expected%20output%2C%20version%2Fdistro%20caveats%2C%20production%20risks%2C%20errors%20and%20safer%20alternatives.%20Do%20not%20execute%20it.%20Command%3A%20getent%20ahosts%20YOUR_FQDN)
- [3. Explain `dig @YOUR_DNS_SERVER YOUR_FQDN A +time=2 +tries=1`](https://chatgpt.com/?q=Explain%20this%20Linux%20command%20exactly%2C%20token%20by%20token%20including%20syntax%2C%20flags%2C%20variables%2C%20required%20privileges%2C%20expected%20output%2C%20version%2Fdistro%20caveats%2C%20production%20risks%2C%20errors%20and%20safer%20alternatives.%20Do%20not%20execute%20it.%20Command%3A%20dig%20%40YOUR_DNS_SERVER%20YOUR_FQDN%20A%20%2Btime%3D2%20%2Btries%3D1)
- [4. Explain `ip route get YOUR_DESTINATION_IP`](https://chatgpt.com/?q=Explain%20this%20Linux%20command%20exactly%2C%20token%20by%20token%20including%20syntax%2C%20flags%2C%20variables%2C%20required%20privileges%2C%20expected%20output%2C%20version%2Fdistro%20caveats%2C%20production%20risks%2C%20errors%20and%20safer%20alternatives.%20Do%20not%20execute%20it.%20Command%3A%20ip%20route%20get%20YOUR_DESTINATION_IP)
- [5. Explain `curl -Iv --connect-timeout 5 https://YOUR_FQDN`](https://chatgpt.com/?q=Explain%20this%20Linux%20command%20exactly%2C%20token%20by%20token%20including%20syntax%2C%20flags%2C%20variables%2C%20required%20privileges%2C%20expected%20output%2C%20version%2Fdistro%20caveats%2C%20production%20risks%2C%20errors%20and%20safer%20alternatives.%20Do%20not%20execute%20it.%20Command%3A%20curl%20-Iv%20--connect-timeout%205%20https%3A%2F%2FYOUR_FQDN)
- [6. Explain `timedatectl status`](https://chatgpt.com/?q=Explain%20this%20Linux%20command%20exactly%2C%20token%20by%20token%20including%20syntax%2C%20flags%2C%20variables%2C%20required%20privileges%2C%20expected%20output%2C%20version%2Fdistro%20caveats%2C%20production%20risks%2C%20errors%20and%20safer%20alternatives.%20Do%20not%20execute%20it.%20Command%3A%20timedatectl%20status)
- [7. Explain `journalctl -u systemd-resolved -b --no-pager -n 100`](https://chatgpt.com/?q=Explain%20this%20Linux%20command%20exactly%2C%20token%20by%20token%20including%20syntax%2C%20flags%2C%20variables%2C%20required%20privileges%2C%20expected%20output%2C%20version%2Fdistro%20caveats%2C%20production%20risks%2C%20errors%20and%20safer%20alternatives.%20Do%20not%20execute%20it.%20Command%3A%20journalctl%20-u%20systemd-resolved%20-b%20--no-pager%20-n%20100)

</details>

## Containers, kubeadm, K3s and cluster nodes (READ ONLY)

Use matching runtime/unit names. `crictl` may require a configured runtime endpoint.

> Look for API unreachable, registry x509, etcd quorum, cgroup errors, CNI, CSI and disk pressure before restarting workloads.

```bash
systemctl status containerd --no-pager
journalctl -u containerd -b --since '30 min ago' --no-pager -n 100
journalctl -u kubelet -b --since '30 min ago' --no-pager -n 150
journalctl -u k3s -b --since '30 min ago' --no-pager -n 150
journalctl -u k3s-agent -b --since '30 min ago' --no-pager -n 150
sudo crictl ps -a
sudo crictl info
sudo dmesg -T | tail -100
```

<details>
<summary>🧠 Explain each command in ChatGPT (8)</summary>

- [1. Explain `systemctl status containerd --no-pager`](https://chatgpt.com/?q=Explain%20this%20Linux%20command%20exactly%2C%20token%20by%20token%20including%20syntax%2C%20flags%2C%20variables%2C%20required%20privileges%2C%20expected%20output%2C%20version%2Fdistro%20caveats%2C%20production%20risks%2C%20errors%20and%20safer%20alternatives.%20Do%20not%20execute%20it.%20Command%3A%20systemctl%20status%20containerd%20--no-pager)
- [2. Explain `journalctl -u containerd -b --since '30 min ago' --no-pager -n 100`](https://chatgpt.com/?q=Explain%20this%20Linux%20command%20exactly%2C%20token%20by%20token%20including%20syntax%2C%20flags%2C%20variables%2C%20required%20privileges%2C%20expected%20output%2C%20version%2Fdistro%20caveats%2C%20production%20risks%2C%20errors%20and%20safer%20alternatives.%20Do%20not%20execute%20it.%20Command%3A%20journalctl%20-u%20containerd%20-b%20--since%20'30%20min%20ago'%20--no-pager%20-n%20100)
- [3. Explain `journalctl -u kubelet -b --since '30 min ago' --no-pager -n 150`](https://chatgpt.com/?q=Explain%20this%20Linux%20command%20exactly%2C%20token%20by%20token%20including%20syntax%2C%20flags%2C%20variables%2C%20required%20privileges%2C%20expected%20output%2C%20version%2Fdistro%20caveats%2C%20production%20risks%2C%20errors%20and%20safer%20alternatives.%20Do%20not%20execute%20it.%20Command%3A%20journalctl%20-u%20kubelet%20-b%20--since%20'30%20min%20ago'%20--no-pager%20-n%20150)
- [4. Explain `journalctl -u k3s -b --since '30 min ago' --no-pager -n 150`](https://chatgpt.com/?q=Explain%20this%20Linux%20command%20exactly%2C%20token%20by%20token%20including%20syntax%2C%20flags%2C%20variables%2C%20required%20privileges%2C%20expected%20output%2C%20version%2Fdistro%20caveats%2C%20production%20risks%2C%20errors%20and%20safer%20alternatives.%20Do%20not%20execute%20it.%20Command%3A%20journalctl%20-u%20k3s%20-b%20--since%20'30%20min%20ago'%20--no-pager%20-n%20150)
- [5. Explain `journalctl -u k3s-agent -b --since '30 min ago' --no-pager -n 150`](https://chatgpt.com/?q=Explain%20this%20Linux%20command%20exactly%2C%20token%20by%20token%20including%20syntax%2C%20flags%2C%20variables%2C%20required%20privileges%2C%20expected%20output%2C%20version%2Fdistro%20caveats%2C%20production%20risks%2C%20errors%20and%20safer%20alternatives.%20Do%20not%20execute%20it.%20Command%3A%20journalctl%20-u%20k3s-agent%20-b%20--since%20'30%20min%20ago'%20--no-pager%20-n%20150)
- [6. Explain `sudo crictl ps -a`](https://chatgpt.com/?q=Explain%20this%20Linux%20command%20exactly%2C%20token%20by%20token%20including%20syntax%2C%20flags%2C%20variables%2C%20required%20privileges%2C%20expected%20output%2C%20version%2Fdistro%20caveats%2C%20production%20risks%2C%20errors%20and%20safer%20alternatives.%20Do%20not%20execute%20it.%20Command%3A%20sudo%20crictl%20ps%20-a)
- [7. Explain `sudo crictl info`](https://chatgpt.com/?q=Explain%20this%20Linux%20command%20exactly%2C%20token%20by%20token%20including%20syntax%2C%20flags%2C%20variables%2C%20required%20privileges%2C%20expected%20output%2C%20version%2Fdistro%20caveats%2C%20production%20risks%2C%20errors%20and%20safer%20alternatives.%20Do%20not%20execute%20it.%20Command%3A%20sudo%20crictl%20info)
- [8. Explain `sudo dmesg -T | tail -100`](https://chatgpt.com/?q=Explain%20this%20Linux%20command%20exactly%2C%20token%20by%20token%20including%20syntax%2C%20flags%2C%20variables%2C%20required%20privileges%2C%20expected%20output%2C%20version%2Fdistro%20caveats%2C%20production%20risks%2C%20errors%20and%20safer%20alternatives.%20Do%20not%20execute%20it.%20Command%3A%20sudo%20dmesg%20-T%20%7C%20tail%20-100)

</details>

## Network and firewall failures (READ ONLY)

Focus on a single destination and network interface.

> Never flush firewalls or restart networking remotely as a first step.

```bash
ip -br link
ip -br addr
ip route
ss -s
sudo nft list ruleset
sudo journalctl -k -b | grep -Ei 'link.*down|NETDEV|watchdog|drop|conntrack|NIC' | tail -100
sudo ethtool YOUR_INTERFACE
```

<details>
<summary>🧠 Explain each command in ChatGPT (7)</summary>

- [1. Explain `ip -br link`](https://chatgpt.com/?q=Explain%20this%20Linux%20command%20exactly%2C%20token%20by%20token%20including%20syntax%2C%20flags%2C%20variables%2C%20required%20privileges%2C%20expected%20output%2C%20version%2Fdistro%20caveats%2C%20production%20risks%2C%20errors%20and%20safer%20alternatives.%20Do%20not%20execute%20it.%20Command%3A%20ip%20-br%20link)
- [2. Explain `ip -br addr`](https://chatgpt.com/?q=Explain%20this%20Linux%20command%20exactly%2C%20token%20by%20token%20including%20syntax%2C%20flags%2C%20variables%2C%20required%20privileges%2C%20expected%20output%2C%20version%2Fdistro%20caveats%2C%20production%20risks%2C%20errors%20and%20safer%20alternatives.%20Do%20not%20execute%20it.%20Command%3A%20ip%20-br%20addr)
- [3. Explain `ip route`](https://chatgpt.com/?q=Explain%20this%20Linux%20command%20exactly%2C%20token%20by%20token%20including%20syntax%2C%20flags%2C%20variables%2C%20required%20privileges%2C%20expected%20output%2C%20version%2Fdistro%20caveats%2C%20production%20risks%2C%20errors%20and%20safer%20alternatives.%20Do%20not%20execute%20it.%20Command%3A%20ip%20route)
- [4. Explain `ss -s`](https://chatgpt.com/?q=Explain%20this%20Linux%20command%20exactly%2C%20token%20by%20token%20including%20syntax%2C%20flags%2C%20variables%2C%20required%20privileges%2C%20expected%20output%2C%20version%2Fdistro%20caveats%2C%20production%20risks%2C%20errors%20and%20safer%20alternatives.%20Do%20not%20execute%20it.%20Command%3A%20ss%20-s)
- [5. Explain `sudo nft list ruleset`](https://chatgpt.com/?q=Explain%20this%20Linux%20command%20exactly%2C%20token%20by%20token%20including%20syntax%2C%20flags%2C%20variables%2C%20required%20privileges%2C%20expected%20output%2C%20version%2Fdistro%20caveats%2C%20production%20risks%2C%20errors%20and%20safer%20alternatives.%20Do%20not%20execute%20it.%20Command%3A%20sudo%20nft%20list%20ruleset)
- [6. Explain `sudo journalctl -k -b | grep -Ei 'link.*down|NETDEV|watchdog|drop|conntrack|NIC' | tail -100`](https://chatgpt.com/?q=Explain%20this%20Linux%20command%20exactly%2C%20token%20by%20token%20including%20syntax%2C%20flags%2C%20variables%2C%20required%20privileges%2C%20expected%20output%2C%20version%2Fdistro%20caveats%2C%20production%20risks%2C%20errors%20and%20safer%20alternatives.%20Do%20not%20execute%20it.%20Command%3A%20sudo%20journalctl%20-k%20-b%20%7C%20grep%20-Ei%20'link.*down%7CNETDEV%7Cwatchdog%7Cdrop%7Cconntrack%7CNIC'%20%7C%20tail%20-100)
- [7. Explain `sudo ethtool YOUR_INTERFACE`](https://chatgpt.com/?q=Explain%20this%20Linux%20command%20exactly%2C%20token%20by%20token%20including%20syntax%2C%20flags%2C%20variables%2C%20required%20privileges%2C%20expected%20output%2C%20version%2Fdistro%20caveats%2C%20production%20risks%2C%20errors%20and%20safer%20alternatives.%20Do%20not%20execute%20it.%20Command%3A%20sudo%20ethtool%20YOUR_INTERFACE)

</details>

## Fast diagnosis logic — distinguish symptom from cause

1. **Time:** identify the first failure and whether it started after upgrade, reboot, deploy or storage event.
2. **Scope:** one process, one VM, one host, one VLAN, or the entire cluster?
3. **Service:** check `systemctl status` → `journalctl -u`; capture the *first* relevant failure, not just the last restart.
4. **Resources:** check memory/OOM, disk bytes/inodes, filesystem read-only, CPU contention and latency.
5. **Dependencies:** check DNS, TLS, NTP, database, registry and firewall.
6. **Prove:** correlate logs/events across the affected host and its upstream systems.
7. **Change:** only after evidence, owner approval and documented rollback.

## Quick failure decoder

| Log fragment | Meaning / next check |
|---|---|
| `No space left on device` | Bytes or inodes full; `df -hT` and `df -i` |
| `Killed process` / `Out of memory` | OOM killer; memory pressure, cgroup limit and prior load |
| `Permission denied` | Unix perms, ACLs, SELinux/AppArmor, UID or mount options |
| `Connection refused` | Remote port not listening or actively rejected |
| `Connection timed out` | Route, firewall, service overload, upstream failure |
| `Name or service not known` | DNS resolution, search domains, resolver |
| `certificate verify failed` / `x509` | Chain, trust CA, hostname, expired cert, time |
| `read-only file system` | Mount flags or kernel filesystem error; inspect storage health |
| `Failed to start` | Unit failure; inspect earlier error lines and dependencies |
| `I/O error` / `reset` | Device/driver, SAN fabric, paths, storage array |

## Avoid these blind emergency fixes

**Do not** run `chmod -R 777`, `rm -rf` on log directories, `systemctl restart network` over SSH, `fsck` on mounted filesystems, `setenforce 0`, flush firewalls, or reboot an etcd/control-plane node to 'see if it helps'. These can cause data loss or destroy evidence.

## Optional: targeted evidence collection

## Write limited evidence to a protected local folder (LOCAL FILE CHANGE)

Do not upload the result without checking sensitive IPs, usernames and customer information.

> 🟠 These commands write local files, not cluster changes; secure and delete them under retention policy.

```bash
mkdir -p ./incident-logs
journalctl -b -p err..alert --since '30 min ago' --no-pager -n 200 > ./incident-logs/errors.txt
systemctl --failed --no-pager > ./incident-logs/failed-services.txt
df -hT > ./incident-logs/disk.txt
uptime > ./incident-logs/uptime.txt
```

<details>
<summary>🧠 Explain each command in ChatGPT (5)</summary>

- [1. Explain `mkdir -p ./incident-logs`](https://chatgpt.com/?q=Explain%20this%20Linux%20command%20exactly%2C%20token%20by%20token%20including%20syntax%2C%20flags%2C%20variables%2C%20required%20privileges%2C%20expected%20output%2C%20version%2Fdistro%20caveats%2C%20production%20risks%2C%20errors%20and%20safer%20alternatives.%20Do%20not%20execute%20it.%20Command%3A%20mkdir%20-p%20.%2Fincident-logs)
- [2. Explain `journalctl -b -p err..alert --since '30 min ago' --no-pager -n 200 > ./incident-logs/errors.txt`](https://chatgpt.com/?q=Explain%20this%20Linux%20command%20exactly%2C%20token%20by%20token%20including%20syntax%2C%20flags%2C%20variables%2C%20required%20privileges%2C%20expected%20output%2C%20version%2Fdistro%20caveats%2C%20production%20risks%2C%20errors%20and%20safer%20alternatives.%20Do%20not%20execute%20it.%20Command%3A%20journalctl%20-b%20-p%20err..alert%20--since%20'30%20min%20ago'%20--no-pager%20-n%20200%20%3E%20.%2Fincident-logs%2Ferrors.txt)
- [3. Explain `systemctl --failed --no-pager > ./incident-logs/failed-services.txt`](https://chatgpt.com/?q=Explain%20this%20Linux%20command%20exactly%2C%20token%20by%20token%20including%20syntax%2C%20flags%2C%20variables%2C%20required%20privileges%2C%20expected%20output%2C%20version%2Fdistro%20caveats%2C%20production%20risks%2C%20errors%20and%20safer%20alternatives.%20Do%20not%20execute%20it.%20Command%3A%20systemctl%20--failed%20--no-pager%20%3E%20.%2Fincident-logs%2Ffailed-services.txt)
- [4. Explain `df -hT > ./incident-logs/disk.txt`](https://chatgpt.com/?q=Explain%20this%20Linux%20command%20exactly%2C%20token%20by%20token%20including%20syntax%2C%20flags%2C%20variables%2C%20required%20privileges%2C%20expected%20output%2C%20version%2Fdistro%20caveats%2C%20production%20risks%2C%20errors%20and%20safer%20alternatives.%20Do%20not%20execute%20it.%20Command%3A%20df%20-hT%20%3E%20.%2Fincident-logs%2Fdisk.txt)
- [5. Explain `uptime > ./incident-logs/uptime.txt`](https://chatgpt.com/?q=Explain%20this%20Linux%20command%20exactly%2C%20token%20by%20token%20including%20syntax%2C%20flags%2C%20variables%2C%20required%20privileges%2C%20expected%20output%2C%20version%2Fdistro%20caveats%2C%20production%20risks%2C%20errors%20and%20safer%20alternatives.%20Do%20not%20execute%20it.%20Command%3A%20uptime%20%3E%20.%2Fincident-logs%2Fuptime.txt)

</details>

**References:** [systemd journalctl manual](https://www.freedesktop.org/software/systemd/man/latest/journalctl.html), [Ubuntu server logging](https://documentation.ubuntu.com/server/), [Red Hat RHEL logging docs](https://docs.redhat.com/en/documentation/red_hat_enterprise_linux/9).
