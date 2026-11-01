# 09 — Forgotten Linux password: authorized enterprise account recovery

> **Authorized administrators only.** Perform account recovery only for systems you own or are explicitly assigned to administer. Record the change ticket and use approved out-of-band console/BMC/cloud rescue access; recovery often requires an outage. Do not use emergency boot methods to circumvent customer access policy. Full-disk encryption, secure boot policies and management safeguards may require existing recovery keys or vendor support. Never publish passwords or hashes.

## Fast decision table

| Situation | Safest route |
|---|---|
| You still have a working sudo/root administrator | Standard `passwd USER` with authorization, then test |
| Account is managed by AD/LDAP/FreeIPA/SSSD | Reset at the **identity provider**, not the local shadow file |
| Ubuntu/Debian local account, no login | Authorized GRUB recovery/rescue or installer live rescue console |
| RHEL/Rocky/Alma local account, no login | Authorized RHEL rescue/initramfs recovery sequence and SELinux relabel |
| AWS/Azure/GCP VM | Use provider-supported VM access/password recovery or serial console; verify cloud-init and IAM access |
| Root filesystem encrypted and unlock key unavailable | Use documented key escrow/recovery; password reset does not decrypt LUKS |
| Kubernetes/OpenShift node | Prefer declarative node replacement/vendor-specific break-glass; avoid ad-hoc OS changes on managed immutable nodes |

## 1. If a privileged administrator can still log in

## Inspect target identity (READ ONLY)

Verify the intended **local** account first. An account named in LDAP might not be stored in /etc/shadow.

```bash
whoami
id YOUR_USER
getent passwd YOUR_USER
sudo passwd -S YOUR_USER
getent group sudo
getent group wheel
```

<details>
<summary>🧠 Explain each command in ChatGPT (6)</summary>

- [1. Explain `whoami`](https://chatgpt.com/?q=Explain%20this%20Linux%20command%20exactly%2C%20token%20by%20token%20including%20syntax%2C%20flags%2C%20variables%2C%20required%20privileges%2C%20expected%20output%2C%20version%2Fdistro%20caveats%2C%20production%20risks%2C%20errors%20and%20safer%20alternatives.%20Do%20not%20execute%20it.%20Command%3A%20whoami)
- [2. Explain `id YOUR_USER`](https://chatgpt.com/?q=Explain%20this%20Linux%20command%20exactly%2C%20token%20by%20token%20including%20syntax%2C%20flags%2C%20variables%2C%20required%20privileges%2C%20expected%20output%2C%20version%2Fdistro%20caveats%2C%20production%20risks%2C%20errors%20and%20safer%20alternatives.%20Do%20not%20execute%20it.%20Command%3A%20id%20YOUR_USER)
- [3. Explain `getent passwd YOUR_USER`](https://chatgpt.com/?q=Explain%20this%20Linux%20command%20exactly%2C%20token%20by%20token%20including%20syntax%2C%20flags%2C%20variables%2C%20required%20privileges%2C%20expected%20output%2C%20version%2Fdistro%20caveats%2C%20production%20risks%2C%20errors%20and%20safer%20alternatives.%20Do%20not%20execute%20it.%20Command%3A%20getent%20passwd%20YOUR_USER)
- [4. Explain `sudo passwd -S YOUR_USER`](https://chatgpt.com/?q=Explain%20this%20Linux%20command%20exactly%2C%20token%20by%20token%20including%20syntax%2C%20flags%2C%20variables%2C%20required%20privileges%2C%20expected%20output%2C%20version%2Fdistro%20caveats%2C%20production%20risks%2C%20errors%20and%20safer%20alternatives.%20Do%20not%20execute%20it.%20Command%3A%20sudo%20passwd%20-S%20YOUR_USER)
- [5. Explain `getent group sudo`](https://chatgpt.com/?q=Explain%20this%20Linux%20command%20exactly%2C%20token%20by%20token%20including%20syntax%2C%20flags%2C%20variables%2C%20required%20privileges%2C%20expected%20output%2C%20version%2Fdistro%20caveats%2C%20production%20risks%2C%20errors%20and%20safer%20alternatives.%20Do%20not%20execute%20it.%20Command%3A%20getent%20group%20sudo)
- [6. Explain `getent group wheel`](https://chatgpt.com/?q=Explain%20this%20Linux%20command%20exactly%2C%20token%20by%20token%20including%20syntax%2C%20flags%2C%20variables%2C%20required%20privileges%2C%20expected%20output%2C%20version%2Fdistro%20caveats%2C%20production%20risks%2C%20errors%20and%20safer%20alternatives.%20Do%20not%20execute%20it.%20Command%3A%20getent%20group%20wheel)

</details>

## Reset local password (CHANGE)

Use an authorized privileged session. `passwd` prompts securely for the new value; it is not embedded in shell history.

> 🟠 Changing authentication may impact scheduled jobs, PAM integration and existing sessions. Avoid changing an external IdP user's local password to 'fix' SSO.

```bash
sudo passwd YOUR_USER
sudo chage -l YOUR_USER
```

<details>
<summary>🧠 Explain each command in ChatGPT (2)</summary>

- [1. Explain `sudo passwd YOUR_USER`](https://chatgpt.com/?q=Explain%20this%20Linux%20command%20exactly%2C%20token%20by%20token%20including%20syntax%2C%20flags%2C%20variables%2C%20required%20privileges%2C%20expected%20output%2C%20version%2Fdistro%20caveats%2C%20production%20risks%2C%20errors%20and%20safer%20alternatives.%20Do%20not%20execute%20it.%20Command%3A%20sudo%20passwd%20YOUR_USER)
- [2. Explain `sudo chage -l YOUR_USER`](https://chatgpt.com/?q=Explain%20this%20Linux%20command%20exactly%2C%20token%20by%20token%20including%20syntax%2C%20flags%2C%20variables%2C%20required%20privileges%2C%20expected%20output%2C%20version%2Fdistro%20caveats%2C%20production%20risks%2C%20errors%20and%20safer%20alternatives.%20Do%20not%20execute%20it.%20Command%3A%20sudo%20chage%20-l%20YOUR_USER)

</details>

## 2. Ubuntu / Debian: local console GRUB recovery

1. Schedule the restart and confirm snapshot/backup, LUKS key and **hypervisor/physical console** access.
2. Select the installed kernel's **recovery mode** in GRUB if available; enter the documented authorized root maintenance shell. GRUB menus and root authentication differ across images/releases.
3. Confirm the actual root filesystem is mounted and writable. Do not blindly reset a read-only or wrong device.
4. Change the local account password and reboot normally.
5. Verify PAM, SSH policy, account status and audit events after login.

## Recovery shell commands (CHANGE)

**Only inside an authorized Ubuntu/Debian rescue/root maintenance shell** after identifying the real mounted root filesystem.

> 🔴 Mount operations and reboot are system changes. Recovery environments may use a different mount layout, LVM or LUKS. If the target filesystem is mounted under /mnt, chroot the correct root according to the distro rescue guide rather than running passwd against the installer OS.

```bash
mount | grep ' on / '
mount -o remount,rw /
getent passwd YOUR_USER
passwd YOUR_USER
sync
reboot
```

<details>
<summary>🧠 Explain each command in ChatGPT (6)</summary>

- [1. Explain `mount | grep ' on / '`](https://chatgpt.com/?q=Explain%20this%20Linux%20command%20exactly%2C%20token%20by%20token%20including%20syntax%2C%20flags%2C%20variables%2C%20required%20privileges%2C%20expected%20output%2C%20version%2Fdistro%20caveats%2C%20production%20risks%2C%20errors%20and%20safer%20alternatives.%20Do%20not%20execute%20it.%20Command%3A%20mount%20%7C%20grep%20'%20on%20%2F%20')
- [2. Explain `mount -o remount,rw /`](https://chatgpt.com/?q=Explain%20this%20Linux%20command%20exactly%2C%20token%20by%20token%20including%20syntax%2C%20flags%2C%20variables%2C%20required%20privileges%2C%20expected%20output%2C%20version%2Fdistro%20caveats%2C%20production%20risks%2C%20errors%20and%20safer%20alternatives.%20Do%20not%20execute%20it.%20Command%3A%20mount%20-o%20remount%2Crw%20%2F)
- [3. Explain `getent passwd YOUR_USER`](https://chatgpt.com/?q=Explain%20this%20Linux%20command%20exactly%2C%20token%20by%20token%20including%20syntax%2C%20flags%2C%20variables%2C%20required%20privileges%2C%20expected%20output%2C%20version%2Fdistro%20caveats%2C%20production%20risks%2C%20errors%20and%20safer%20alternatives.%20Do%20not%20execute%20it.%20Command%3A%20getent%20passwd%20YOUR_USER)
- [4. Explain `passwd YOUR_USER`](https://chatgpt.com/?q=Explain%20this%20Linux%20command%20exactly%2C%20token%20by%20token%20including%20syntax%2C%20flags%2C%20variables%2C%20required%20privileges%2C%20expected%20output%2C%20version%2Fdistro%20caveats%2C%20production%20risks%2C%20errors%20and%20safer%20alternatives.%20Do%20not%20execute%20it.%20Command%3A%20passwd%20YOUR_USER)
- [5. Explain `sync`](https://chatgpt.com/?q=Explain%20this%20Linux%20command%20exactly%2C%20token%20by%20token%20including%20syntax%2C%20flags%2C%20variables%2C%20required%20privileges%2C%20expected%20output%2C%20version%2Fdistro%20caveats%2C%20production%20risks%2C%20errors%20and%20safer%20alternatives.%20Do%20not%20execute%20it.%20Command%3A%20sync)
- [6. Explain `reboot`](https://chatgpt.com/?q=Explain%20this%20Linux%20command%20exactly%2C%20token%20by%20token%20including%20syntax%2C%20flags%2C%20variables%2C%20required%20privileges%2C%20expected%20output%2C%20version%2Fdistro%20caveats%2C%20production%20risks%2C%20errors%20and%20safer%20alternatives.%20Do%20not%20execute%20it.%20Command%3A%20reboot)

</details>

## 3. RHEL / Rocky / Alma: console-based emergency recovery

Use the release-specific approved RHEL GRUB/initramfs **`rd.break`** workflow when normal administrative access is unavailable:

1. Access the VM's hypervisor console or physical BMC; verify the correct system and change authorization.
2. At the kernel boot entry, append `rd.break` using the vendor-documented GRUB method. This interrupts normal boot in initramfs.
3. In the emergency shell, identify the installed root under `/sysroot`, remount it read/write if applicable and `chroot` into it.
4. Reset the intended **local** account. For SELinux-enforcing hosts, ensure affected files receive appropriate labels before the next normal boot.
5. Exit cleanly and continue/reboot following the supported release procedure; expect a potentially long SELinux relabel and downtime.

## Typical RHEL initramfs recovery commands (CHANGE)

Run only **after** launching authorized `rd.break` on the affected machine. Commands assume a standard installed root at `/sysroot` and must be verified first.

> 🔴 `touch /.autorelabel` schedules an SELinux relabel (may be lengthy); emergency boot behavior differs by release, LUKS configuration and security policy. The final exits return from chroot and initramfs. Don't reboot prematurely during relabel.

```bash
mount | grep sysroot
mount -o remount,rw /sysroot
chroot /sysroot
passwd YOUR_USER
touch /.autorelabel
exit
exit
```

<details>
<summary>🧠 Explain each command in ChatGPT (7)</summary>

- [1. Explain `mount | grep sysroot`](https://chatgpt.com/?q=Explain%20this%20Linux%20command%20exactly%2C%20token%20by%20token%20including%20syntax%2C%20flags%2C%20variables%2C%20required%20privileges%2C%20expected%20output%2C%20version%2Fdistro%20caveats%2C%20production%20risks%2C%20errors%20and%20safer%20alternatives.%20Do%20not%20execute%20it.%20Command%3A%20mount%20%7C%20grep%20sysroot)
- [2. Explain `mount -o remount,rw /sysroot`](https://chatgpt.com/?q=Explain%20this%20Linux%20command%20exactly%2C%20token%20by%20token%20including%20syntax%2C%20flags%2C%20variables%2C%20required%20privileges%2C%20expected%20output%2C%20version%2Fdistro%20caveats%2C%20production%20risks%2C%20errors%20and%20safer%20alternatives.%20Do%20not%20execute%20it.%20Command%3A%20mount%20-o%20remount%2Crw%20%2Fsysroot)
- [3. Explain `chroot /sysroot`](https://chatgpt.com/?q=Explain%20this%20Linux%20command%20exactly%2C%20token%20by%20token%20including%20syntax%2C%20flags%2C%20variables%2C%20required%20privileges%2C%20expected%20output%2C%20version%2Fdistro%20caveats%2C%20production%20risks%2C%20errors%20and%20safer%20alternatives.%20Do%20not%20execute%20it.%20Command%3A%20chroot%20%2Fsysroot)
- [4. Explain `passwd YOUR_USER`](https://chatgpt.com/?q=Explain%20this%20Linux%20command%20exactly%2C%20token%20by%20token%20including%20syntax%2C%20flags%2C%20variables%2C%20required%20privileges%2C%20expected%20output%2C%20version%2Fdistro%20caveats%2C%20production%20risks%2C%20errors%20and%20safer%20alternatives.%20Do%20not%20execute%20it.%20Command%3A%20passwd%20YOUR_USER)
- [5. Explain `touch /.autorelabel`](https://chatgpt.com/?q=Explain%20this%20Linux%20command%20exactly%2C%20token%20by%20token%20including%20syntax%2C%20flags%2C%20variables%2C%20required%20privileges%2C%20expected%20output%2C%20version%2Fdistro%20caveats%2C%20production%20risks%2C%20errors%20and%20safer%20alternatives.%20Do%20not%20execute%20it.%20Command%3A%20touch%20%2F.autorelabel)
- [6. Explain `exit`](https://chatgpt.com/?q=Explain%20this%20Linux%20command%20exactly%2C%20token%20by%20token%20including%20syntax%2C%20flags%2C%20variables%2C%20required%20privileges%2C%20expected%20output%2C%20version%2Fdistro%20caveats%2C%20production%20risks%2C%20errors%20and%20safer%20alternatives.%20Do%20not%20execute%20it.%20Command%3A%20exit)
- [7. Explain `exit`](https://chatgpt.com/?q=Explain%20this%20Linux%20command%20exactly%2C%20token%20by%20token%20including%20syntax%2C%20flags%2C%20variables%2C%20required%20privileges%2C%20expected%20output%2C%20version%2Fdistro%20caveats%2C%20production%20risks%2C%20errors%20and%20safer%20alternatives.%20Do%20not%20execute%20it.%20Command%3A%20exit)

</details>

## 4. Account login still fails after password recovery

## Check account, PAM and SSH policy (READ ONLY)

A successful local password reset does not guarantee SSH password authentication is allowed.

> If `faillock` is unavailable or a different PAM module is used, consult the local identity management stack. Do not disable security controls as a shortcut.

```bash
sudo passwd -S YOUR_USER
sudo chage -l YOUR_USER
sudo faillock --user YOUR_USER
sudo sshd -t
sudo sshd -T | grep -Ei 'passwordauthentication|permitrootlogin|pubkeyauthentication|usepam'
sudo journalctl -b --since '30 minutes ago' | grep -Ei 'sshd|pam|authentication|faillock' | tail -80
```

<details>
<summary>🧠 Explain each command in ChatGPT (6)</summary>

- [1. Explain `sudo passwd -S YOUR_USER`](https://chatgpt.com/?q=Explain%20this%20Linux%20command%20exactly%2C%20token%20by%20token%20including%20syntax%2C%20flags%2C%20variables%2C%20required%20privileges%2C%20expected%20output%2C%20version%2Fdistro%20caveats%2C%20production%20risks%2C%20errors%20and%20safer%20alternatives.%20Do%20not%20execute%20it.%20Command%3A%20sudo%20passwd%20-S%20YOUR_USER)
- [2. Explain `sudo chage -l YOUR_USER`](https://chatgpt.com/?q=Explain%20this%20Linux%20command%20exactly%2C%20token%20by%20token%20including%20syntax%2C%20flags%2C%20variables%2C%20required%20privileges%2C%20expected%20output%2C%20version%2Fdistro%20caveats%2C%20production%20risks%2C%20errors%20and%20safer%20alternatives.%20Do%20not%20execute%20it.%20Command%3A%20sudo%20chage%20-l%20YOUR_USER)
- [3. Explain `sudo faillock --user YOUR_USER`](https://chatgpt.com/?q=Explain%20this%20Linux%20command%20exactly%2C%20token%20by%20token%20including%20syntax%2C%20flags%2C%20variables%2C%20required%20privileges%2C%20expected%20output%2C%20version%2Fdistro%20caveats%2C%20production%20risks%2C%20errors%20and%20safer%20alternatives.%20Do%20not%20execute%20it.%20Command%3A%20sudo%20faillock%20--user%20YOUR_USER)
- [4. Explain `sudo sshd -t`](https://chatgpt.com/?q=Explain%20this%20Linux%20command%20exactly%2C%20token%20by%20token%20including%20syntax%2C%20flags%2C%20variables%2C%20required%20privileges%2C%20expected%20output%2C%20version%2Fdistro%20caveats%2C%20production%20risks%2C%20errors%20and%20safer%20alternatives.%20Do%20not%20execute%20it.%20Command%3A%20sudo%20sshd%20-t)
- [5. Explain `sudo sshd -T | grep -Ei 'passwordauthentication|permitrootlogin|pubkeyauthentication|usepam'`](https://chatgpt.com/?q=Explain%20this%20Linux%20command%20exactly%2C%20token%20by%20token%20including%20syntax%2C%20flags%2C%20variables%2C%20required%20privileges%2C%20expected%20output%2C%20version%2Fdistro%20caveats%2C%20production%20risks%2C%20errors%20and%20safer%20alternatives.%20Do%20not%20execute%20it.%20Command%3A%20sudo%20sshd%20-T%20%7C%20grep%20-Ei%20'passwordauthentication%7Cpermitrootlogin%7Cpubkeyauthentication%7Cusepam')
- [6. Explain `sudo journalctl -b --since '30 minutes ago' | grep -Ei 'sshd|pam|authentication|faillock' | tai`](https://chatgpt.com/?q=Explain%20this%20Linux%20command%20exactly%2C%20token%20by%20token%20including%20syntax%2C%20flags%2C%20variables%2C%20required%20privileges%2C%20expected%20output%2C%20version%2Fdistro%20caveats%2C%20production%20risks%2C%20errors%20and%20safer%20alternatives.%20Do%20not%20execute%20it.%20Command%3A%20sudo%20journalctl%20-b%20--since%20'30%20minutes%20ago'%20%7C%20grep%20-Ei%20'sshd%7Cpam%7Cauthentication%7Cfaillock'%20%7C%20tail%20-80)

</details>

## 5. Cloud, VMs and protected infrastructure

- **AWS EC2:** use AWS Systems Manager Session Manager/Run Command if already authorized and supported; otherwise the official EC2 recovery guide for the image and EBS root volume. A Linux EC2 instance commonly uses SSH keys, not a default root password. Avoid exposing instance credentials or detaching customer volumes without approval.
- **Azure VM:** use the supported VMAccess/password reset extension or serial console with VM identity and change authorization. Microsoft Entra/SSH access may have separate policy.
- **Google Compute Engine:** OS Login/IAM or approved metadata-based SSH key method is preferred; use supported serial console/rescue for recovery only when required.
- **VMware vSphere:** access the VM console through vCenter/ESXi privileges; take an **application-consistent backup** when possible and confirm snapshot policy before reboot. Hypervisor console access does not bypass LUKS encryption.
- **Kubernetes:** a forgotten OS password on a worker is often best handled by rebuilding the node from IaC. A kubeadm control-plane replacement requires etcd/quorum and PKI precautions.
- **OpenShift:** RHCOS uses managed node configuration; follow Red Hat-supported recovery methods instead of arbitrary GRUB password resetting.

## 6. Closure checklist

- [ ] Ticket, business owner and authorization recorded
- [ ] Correct local vs directory-managed identity confirmed
- [ ] Backup/key escrow and console access verified
- [ ] New credential set without pasting it into terminal logs or tickets
- [ ] Login tested and temporary rescue access removed
- [ ] SELinux labels, SSH/PAM, MFA and audit trails checked
- [ ] Monitoring and applications confirmed healthy after restart

References: [Red Hat RHEL docs](https://docs.redhat.com/en/documentation/red_hat_enterprise_linux/9), [Ubuntu Server documentation](https://documentation.ubuntu.com/server/), [Debian Administrator's Handbook](https://debian-handbook.info/), [AWS EC2 user guide](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/), [Azure VM access](https://learn.microsoft.com/en-us/troubleshoot/azure/virtual-machines/linux/).
