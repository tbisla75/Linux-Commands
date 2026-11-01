# Linux setup, packages, services and everyday administration

> 🟢 Diagnostics are read-only unless marked **CHANGE**. Check production scope, privileges and change approvals. Each command has a ChatGPT syntax explanation link; never submit secrets.

## Identity and OS

Use `sudo` only where necessary.

```bash
cat /etc/os-release
uname -r
hostnamectl
timedatectl status
id
whoami
ip -br addr
ip route
lsblk -f
findmnt /
```

<details>
<summary>🧠 Explain every command in ChatGPT</summary>

- [1. Explain `cat /etc/os-release`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20cat%20%2Fetc%2Fos-release)
- [2. Explain `uname -r`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20uname%20-r)
- [3. Explain `hostnamectl`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20hostnamectl)
- [4. Explain `timedatectl status`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20timedatectl%20status)
- [5. Explain `id`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20id)
- [6. Explain `whoami`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20whoami)
- [7. Explain `ip -br addr`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20ip%20-br%20addr)
- [8. Explain `ip route`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20ip%20route)
- [9. Explain `lsblk -f`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20lsblk%20-f)
- [10. Explain `findmnt /`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20findmnt%20%2F)

</details>

## Packages and updates

🟠 **CHANGE:** `apt-get update` updates package metadata; install commands modify the host. Only use the package-manager family matching the OS. Review packages before any production OS upgrade or reboot.

```bash
sudo apt-get update
apt list --upgradable
sudo dnf check-update
sudo apt-get install -y curl jq vim
sudo dnf install -y curl jq vim
```

<details>
<summary>🧠 Explain every command in ChatGPT</summary>

- [1. Explain `sudo apt-get update`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20sudo%20apt-get%20update)
- [2. Explain `apt list --upgradable`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20apt%20list%20--upgradable)
- [3. Explain `sudo dnf check-update`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20sudo%20dnf%20check-update)
- [4. Explain `sudo apt-get install -y curl jq vim`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20sudo%20apt-get%20install%20-y%20curl%20jq%20vim)
- [5. Explain `sudo dnf install -y curl jq vim`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20sudo%20dnf%20install%20-y%20curl%20jq%20vim)

</details>

## Services and logs

🟠 **CHANGE:** restart can interrupt service; choose ssh vs sshd as used by the distro.

```bash
systemctl --failed
systemctl status ssh --no-pager
systemctl status sshd --no-pager
journalctl -p err -b --no-pager
journalctl -u YOUR_SERVICE --since '1 hour ago' --no-pager
sudo systemctl restart YOUR_SERVICE
```

<details>
<summary>🧠 Explain every command in ChatGPT</summary>

- [1. Explain `systemctl --failed`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20systemctl%20--failed)
- [2. Explain `systemctl status ssh --no-pager`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20systemctl%20status%20ssh%20--no-pager)
- [3. Explain `systemctl status sshd --no-pager`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20systemctl%20status%20sshd%20--no-pager)
- [4. Explain `journalctl -p err -b --no-pager`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20journalctl%20-p%20err%20-b%20--no-pager)
- [5. Explain `journalctl -u YOUR_SERVICE --since '1 hour ago' --no-pager`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20journalctl%20-u%20YOUR_SERVICE%20--since%20'1%20hour%20ago'%20--no-pager)
- [6. Explain `sudo systemctl restart YOUR_SERVICE`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20sudo%20systemctl%20restart%20YOUR_SERVICE)

</details>

## Disk, memory and process

Avoid running uncontrolled scans or unreviewed cleanup.

```bash
df -hT
df -i
free -h
vmstat 1 5
top -b -n1 | head -45
ps aux --sort=-%mem | head -15
ss -tulpen
lsof -iTCP -sTCP:LISTEN
```

<details>
<summary>🧠 Explain every command in ChatGPT</summary>

- [1. Explain `df -hT`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20df%20-hT)
- [2. Explain `df -i`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20df%20-i)
- [3. Explain `free -h`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20free%20-h)
- [4. Explain `vmstat 1 5`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20vmstat%201%205)
- [5. Explain `top -b -n1 | head -45`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20top%20-b%20-n1%20%7C%20head%20-45)
- [6. Explain `ps aux --sort=-%mem | head -15`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20ps%20aux%20--sort%3D-%25mem%20%7C%20head%20-15)
- [7. Explain `ss -tulpen`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20ss%20-tulpen)
- [8. Explain `lsof -iTCP -sTCP:LISTEN`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20lsof%20-iTCP%20-sTCP%3ALISTEN)

</details>

## Users, SSH and ACL

🟢 checks only; validate sshd config before remotely restarting SSH.

```bash
getent passwd YOUR_USER
sudo visudo -c
sudo sshd -t
sudo getfacl /srv/data
sudo journalctl -u sshd -n 50 --no-pager
```

<details>
<summary>🧠 Explain every command in ChatGPT</summary>

- [1. Explain `getent passwd YOUR_USER`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20getent%20passwd%20YOUR_USER)
- [2. Explain `sudo visudo -c`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20sudo%20visudo%20-c)
- [3. Explain `sudo sshd -t`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20sudo%20sshd%20-t)
- [4. Explain `sudo getfacl /srv/data`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20sudo%20getfacl%20%2Fsrv%2Fdata)
- [5. Explain `sudo journalctl -u sshd -n 50 --no-pager`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20sudo%20journalctl%20-u%20sshd%20-n%2050%20--no-pager)

</details>

