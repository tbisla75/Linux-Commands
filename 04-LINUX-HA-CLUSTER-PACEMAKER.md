# Enterprise Linux HA: Corosync, Pacemaker, fencing, storage

> 🟢 Diagnostics are read-only unless marked **CHANGE**. Check production scope, privileges and change approvals. Each command has a ChatGPT syntax explanation link; never submit secrets.

## HA architecture preflight

Pacemaker commands require installed packages and appropriate cluster credentials. **Never create a production cluster without tested STONITH/fencing and split-brain controls.**

```bash
hostnamectl
timedatectl status
ip route
ss -tulpn
sudo pcs status
sudo pcs quorum status
sudo crm_mon -1
```

<details>
<summary>🧠 Explain every command in ChatGPT</summary>

- [1. Explain `hostnamectl`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20hostnamectl)
- [2. Explain `timedatectl status`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20timedatectl%20status)
- [3. Explain `ip route`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20ip%20route)
- [4. Explain `ss -tulpn`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20ss%20-tulpn)
- [5. Explain `sudo pcs status`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20sudo%20pcs%20status)
- [6. Explain `sudo pcs quorum status`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20sudo%20pcs%20quorum%20status)
- [7. Explain `sudo crm_mon -1`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20sudo%20crm_mon%20-1)

</details>

## Pacemaker health / placement

Inspect quorum, votes, fencing, resource stickiness, constraints, virtual IP, failover and storage consistency.

```bash
sudo pcs cluster status
sudo pcs status --full
sudo pcs resource status
sudo pcs resource config
sudo pcs stonith config
sudo pcs quorum status
sudo journalctl -u pacemaker -n 100 --no-pager
sudo journalctl -u corosync -n 100 --no-pager
```

<details>
<summary>🧠 Explain every command in ChatGPT</summary>

- [1. Explain `sudo pcs cluster status`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20sudo%20pcs%20cluster%20status)
- [2. Explain `sudo pcs status --full`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20sudo%20pcs%20status%20--full)
- [3. Explain `sudo pcs resource status`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20sudo%20pcs%20resource%20status)
- [4. Explain `sudo pcs resource config`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20sudo%20pcs%20resource%20config)
- [5. Explain `sudo pcs stonith config`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20sudo%20pcs%20stonith%20config)
- [6. Explain `sudo pcs quorum status`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20sudo%20pcs%20quorum%20status)
- [7. Explain `sudo journalctl -u pacemaker -n 100 --no-pager`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20sudo%20journalctl%20-u%20pacemaker%20-n%20100%20--no-pager)
- [8. Explain `sudo journalctl -u corosync -n 100 --no-pager`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20sudo%20journalctl%20-u%20corosync%20-n%20100%20--no-pager)

</details>

## HA operational safety

🟠 Changes such as `pcs node standby`, resource relocation and fencing are deliberately excluded from blind paste-to-run commands. See dedicated procedure below.

```bash
sudo pcs resource relations
sudo pcs constraint config
sudo pcs node status
sudo crm_verify -L -V
```

<details>
<summary>🧠 Explain every command in ChatGPT</summary>

- [1. Explain `sudo pcs resource relations`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20sudo%20pcs%20resource%20relations)
- [2. Explain `sudo pcs constraint config`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20sudo%20pcs%20constraint%20config)
- [3. Explain `sudo pcs node status`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20sudo%20pcs%20node%20status)
- [4. Explain `sudo crm_verify -L -V`](https://chatgpt.com/?q=Explain%20the%20exact%20Linux%20command%20syntax%2C%20all%20flags%2C%20placeholders%2C%20expected%20output%2C%20permissions%2C%20safe%20production%20impact%2C%20common%20failure%20and%20alternatives.%20Do%20not%20execute.%20Command%3A%20sudo%20crm_verify%20-L%20-V)

</details>

## Production HA architecture checklist

- Two nodes are not automatically a safe quorum architecture: use quorum device/witness where supported; ensure fencing can definitively power off the failed node.
- Confirm shared-storage access patterns and filesystem locking. Use supported cluster-aware filesystems or active/passive mount resources; never mount ordinary ext4/XFS read-write simultaneously on two nodes.
- Deploy redundant NIC/switch, STONITH agent/credentials, monitored virtual IP, tested rollback and maintenance mode.
- Validate failover/failback, resource dependencies, transient network loss, storage path loss, disk-full and clock drift.
- See [RHEL HA documentation](https://docs.redhat.com/en/documentation/red_hat_enterprise_linux/9/html/configuring_and_managing_high_availability_clusters/).
