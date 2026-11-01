# Advanced Linux incident troubleshooting

> 🟢 Diagnostics are read-only unless marked **CHANGE**. Check production scope, privileges and change approvals. Each command has a ChatGPT syntax explanation link; never submit secrets.

## Host unresponsive / load

Investigate load average vs run queue, CPU steal, memory reclaim, OOM, IRQ, stuck D-state tasks.

```bash
uptime
top -b -n1 | head -60
vmstat 1 5
pidstat -dur 1 5
free -h
dmesg -T | tail -100
journalctl -k -b -p warning --no-pager
```

<details>
<summary>🧠 Explain every command in ChatGPT</summary>

- [1. Explain `uptime`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20uptime)
- [2. Explain `top -b -n1 | head -60`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20top%20-b%20-n1%20%7C%20head%20-60)
- [3. Explain `vmstat 1 5`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20vmstat%201%205)
- [4. Explain `pidstat -dur 1 5`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20pidstat%20-dur%201%205)
- [5. Explain `free -h`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20free%20-h)
- [6. Explain `dmesg -T | tail -100`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20dmesg%20-T%20%7C%20tail%20-100)
- [7. Explain `journalctl -k -b -p warning --no-pager`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20journalctl%20-k%20-b%20-p%20warning%20--no-pager)

</details>

## Filesystem / disk / IOPS

Do not run fsck on a mounted filesystem or remove block devices during a live incident.

```bash
df -hT
df -i
lsblk -o NAME,SIZE,FSTYPE,MOUNTPOINT,TYPE
findmnt -R /var
iostat -xz 1 5
sudo smartctl -a /dev/YOUR_DISK
sudo journalctl -k --since '2 hours ago' | grep -Ei 'error|reset|i/o|nvme|scsi|xfs|ext4'
```

<details>
<summary>🧠 Explain every command in ChatGPT</summary>

- [1. Explain `df -hT`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20df%20-hT)
- [2. Explain `df -i`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20df%20-i)
- [3. Explain `lsblk -o NAME,SIZE,FSTYPE,MOUNTPOINT,TYPE`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20lsblk%20-o%20NAME%2CSIZE%2CFSTYPE%2CMOUNTPOINT%2CTYPE)
- [4. Explain `findmnt -R /var`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20findmnt%20-R%20%2Fvar)
- [5. Explain `iostat -xz 1 5`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20iostat%20-xz%201%205)
- [6. Explain `sudo smartctl -a /dev/YOUR_DISK`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20sudo%20smartctl%20-a%20%2Fdev%2FYOUR_DISK)
- [7. Explain `sudo journalctl -k --since '2 hours ago' | grep -Ei 'error|reset|i/o|nvme|scsi|xfs|ex`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20sudo%20journalctl%20-k%20--since%20'2%20hours%20ago'%20%7C%20grep%20-Ei%20'error%7Creset%7Ci%2Fo%7Cnvme%7Cscsi%7Cxfs%7Cext4')

</details>

## DNS / networking / TLS

Packets and URLs may contain customer details. Authorize capture and sanitize evidence.

```bash
ip -br link
ip addr
ip route get 1.1.1.1
resolvectl status
dig @YOUR_DNS_SERVER YOUR_FQDN A +time=2 +tries=1
dig @YOUR_DNS_SERVER YOUR_FQDN A +tcp
curl -Iv --connect-timeout 5 https://YOUR_FQDN
sudo tcpdump -ni YOUR_INTERFACE 'port 53' -c 50
```

<details>
<summary>🧠 Explain every command in ChatGPT</summary>

- [1. Explain `ip -br link`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20ip%20-br%20link)
- [2. Explain `ip addr`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20ip%20addr)
- [3. Explain `ip route get 1.1.1.1`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20ip%20route%20get%201.1.1.1)
- [4. Explain `resolvectl status`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20resolvectl%20status)
- [5. Explain `dig @YOUR_DNS_SERVER YOUR_FQDN A +time=2 +tries=1`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20dig%20%40YOUR_DNS_SERVER%20YOUR_FQDN%20A%20%2Btime%3D2%20%2Btries%3D1)
- [6. Explain `dig @YOUR_DNS_SERVER YOUR_FQDN A +tcp`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20dig%20%40YOUR_DNS_SERVER%20YOUR_FQDN%20A%20%2Btcp)
- [7. Explain `curl -Iv --connect-timeout 5 https://YOUR_FQDN`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20curl%20-Iv%20--connect-timeout%205%20https%3A%2F%2FYOUR_FQDN)
- [8. Explain `sudo tcpdump -ni YOUR_INTERFACE 'port 53' -c 50`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20sudo%20tcpdump%20-ni%20YOUR_INTERFACE%20'port%2053'%20-c%2050)

</details>

## Service crash / authentication / SELinux

Do not disable SELinux or AppArmor to hide the problem.

```bash
systemctl status YOUR_SERVICE --no-pager
journalctl -u YOUR_SERVICE -b --no-pager -n 150
sudo coredumpctl list
sudo ausearch -m AVC -ts recent
sudo semanage fcontext -l | head -25
sudo sshd -T | head -30
```

<details>
<summary>🧠 Explain every command in ChatGPT</summary>

- [1. Explain `systemctl status YOUR_SERVICE --no-pager`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20systemctl%20status%20YOUR_SERVICE%20--no-pager)
- [2. Explain `journalctl -u YOUR_SERVICE -b --no-pager -n 150`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20journalctl%20-u%20YOUR_SERVICE%20-b%20--no-pager%20-n%20150)
- [3. Explain `sudo coredumpctl list`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20sudo%20coredumpctl%20list)
- [4. Explain `sudo ausearch -m AVC -ts recent`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20sudo%20ausearch%20-m%20AVC%20-ts%20recent)
- [5. Explain `sudo semanage fcontext -l | head -25`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20sudo%20semanage%20fcontext%20-l%20%7C%20head%20-25)
- [6. Explain `sudo sshd -T | head -30`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20sudo%20sshd%20-T%20%7C%20head%20-30)

</details>

## Cluster or node time drift

Quorum, TLS and Kerberos can fail with significant clock skew.

```bash
timedatectl status
chronyc tracking
chronyc sources -v
sudo journalctl -u chronyd -n 70 --no-pager
```

<details>
<summary>🧠 Explain every command in ChatGPT</summary>

- [1. Explain `timedatectl status`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20timedatectl%20status)
- [2. Explain `chronyc tracking`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20chronyc%20tracking)
- [3. Explain `chronyc sources -v`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20chronyc%20sources%20-v)
- [4. Explain `sudo journalctl -u chronyd -n 70 --no-pager`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20sudo%20journalctl%20-u%20chronyd%20-n%2070%20--no-pager)

</details>

