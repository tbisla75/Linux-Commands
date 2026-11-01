# Enterprise Linux security and hardening

> 🟢 Diagnostics are read-only unless marked **CHANGE**. Check production scope, privileges and change approvals. Each command has a ChatGPT syntax explanation link; never submit secrets.

## Security baseline inspection

Tools may not exist on every distribution. Follow a compatible CIS/STIG/company baseline, not blind lockdown.

```bash
sudo ss -tulpen
sudo systemctl --type=service --state=running
sudo find /etc/ssh -maxdepth 2 -type f -ls
sudo sshd -T | grep -E '^(permitrootlogin|passwordauthentication|pubkeyauthentication)'
sudo auditctl -s
getenforce
sudo aa-status
```

<details>
<summary>🧠 Explain every command in ChatGPT</summary>

- [1. Explain `sudo ss -tulpen`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20sudo%20ss%20-tulpen)
- [2. Explain `sudo systemctl --type=service --state=running`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20sudo%20systemctl%20--type%3Dservice%20--state%3Drunning)
- [3. Explain `sudo find /etc/ssh -maxdepth 2 -type f -ls`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20sudo%20find%20%2Fetc%2Fssh%20-maxdepth%202%20-type%20f%20-ls)
- [4. Explain `sudo sshd -T | grep -E '^(permitrootlogin|passwordauthentication|pubkeyauthentication`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20sudo%20sshd%20-T%20%7C%20grep%20-E%20'%5E(permitrootlogin%7Cpasswordauthentication%7Cpubkeyauthentication)')
- [5. Explain `sudo auditctl -s`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20sudo%20auditctl%20-s)
- [6. Explain `getenforce`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20getenforce)
- [7. Explain `sudo aa-status`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20sudo%20aa-status)

</details>

## Firewall, identities and auth

Do not change firewall or SSH access until out-of-band console, backup and rollback are confirmed.

```bash
sudo nft list ruleset
sudo firewall-cmd --state
sudo firewall-cmd --list-all
sudo ufw status verbose
getent group sudo
getent group wheel
sudo last -n 20
sudo journalctl -u sshd --since yesterday
```

<details>
<summary>🧠 Explain every command in ChatGPT</summary>

- [1. Explain `sudo nft list ruleset`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20sudo%20nft%20list%20ruleset)
- [2. Explain `sudo firewall-cmd --state`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20sudo%20firewall-cmd%20--state)
- [3. Explain `sudo firewall-cmd --list-all`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20sudo%20firewall-cmd%20--list-all)
- [4. Explain `sudo ufw status verbose`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20sudo%20ufw%20status%20verbose)
- [5. Explain `getent group sudo`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20getent%20group%20sudo)
- [6. Explain `getent group wheel`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20getent%20group%20wheel)
- [7. Explain `sudo last -n 20`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20sudo%20last%20-n%2020)
- [8. Explain `sudo journalctl -u sshd --since yesterday`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20sudo%20journalctl%20-u%20sshd%20--since%20yesterday)

</details>

## Updates and exposure

Treat findings as evidence requiring validation; do not mass-chmod files.

```bash
sudo apt list --upgradable
sudo dnf updateinfo list security
sudo openssl version -a
sudo find / -xdev -perm -4000 -type f 2>/dev/null
sudo find /etc -xdev -type f -perm /022 -ls 2>/dev/null
```

<details>
<summary>🧠 Explain every command in ChatGPT</summary>

- [1. Explain `sudo apt list --upgradable`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20sudo%20apt%20list%20--upgradable)
- [2. Explain `sudo dnf updateinfo list security`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20sudo%20dnf%20updateinfo%20list%20security)
- [3. Explain `sudo openssl version -a`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20sudo%20openssl%20version%20-a)
- [4. Explain `sudo find / -xdev -perm -4000 -type f 2>/dev/null`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20sudo%20find%20%2F%20-xdev%20-perm%20-4000%20-type%20f%202%3E%2Fdev%2Fnull)
- [5. Explain `sudo find /etc -xdev -type f -perm /022 -ls 2>/dev/null`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20sudo%20find%20%2Fetc%20-xdev%20-type%20f%20-perm%20%2F022%20-ls%202%3E%2Fdev%2Fnull)

</details>

## TLS and time

Certificate issues often involve incorrect DNS names, intermediate CA trust or time drift.

```bash
timedatectl status
openssl s_client -connect YOUR_HOST:443 -servername YOUR_HOST </dev/null
sudo journalctl -u chronyd -n 50 --no-pager
sudo journalctl -u systemd-timesyncd -n 50 --no-pager
```

<details>
<summary>🧠 Explain every command in ChatGPT</summary>

- [1. Explain `timedatectl status`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20timedatectl%20status)
- [2. Explain `openssl s_client -connect YOUR_HOST:443 -servername YOUR_HOST </dev/null`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20openssl%20s_client%20-connect%20YOUR_HOST%3A443%20-servername%20YOUR_HOST%20%3C%2Fdev%2Fnull)
- [3. Explain `sudo journalctl -u chronyd -n 50 --no-pager`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20sudo%20journalctl%20-u%20chronyd%20-n%2050%20--no-pager)
- [4. Explain `sudo journalctl -u systemd-timesyncd -n 50 --no-pager`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20sudo%20journalctl%20-u%20systemd-timesyncd%20-n%2050%20--no-pager)

</details>

