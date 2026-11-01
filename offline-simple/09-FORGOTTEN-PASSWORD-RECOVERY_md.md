# Linux commands explained in plain English: 09-FORGOTTEN-PASSWORD-RECOVERY.md

**Offline incident reference.** Find the exact command, see what it does, why to run it, how to interpret the results, and whether it can change your host. Some commands need optional packages or root permissions. Original: [09-FORGOTTEN-PASSWORD-RECOVERY.md](../09-FORGOTTEN-PASSWORD-RECOVERY.md).

## 1. whoami

```bash
whoami
```

**What it does:** Runs the installed Linux utility `whoami` with the following arguments. This action depends on the specific tool and environment.

**How to read the command:** `whoami` is the utility. Remaining words specify the file, service, device, user, host or action.

**Expected output:** Program output or error; inspect the original runbook and `man whoami` if available.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 2. id YOUR_USER

```bash
id YOUR_USER
```

**What it does:** Runs the installed Linux utility `id` with the following arguments. This action depends on the specific tool and environment.

**How to read the command:** `id` is the utility. Remaining words specify the file, service, device, user, host or action.

**Expected output:** Program output or error; inspect the original runbook and `man id` if available.

**Before running:** Replace `YOUR_USER` with real approved values. Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 3. getent passwd YOUR_USER

```bash
getent passwd YOUR_USER
```

**What it does:** Runs the installed Linux utility `getent` with the following arguments. This action depends on the specific tool and environment.

**How to read the command:** `getent` is the utility. Remaining words specify the file, service, device, user, host or action.

**Expected output:** Program output or error; inspect the original runbook and `man getent` if available.

**Before running:** Replace `YOUR_USER` with real approved values. Check that you're on the correct Linux server/distribution. ⚠️ This may change the OS, accounts, services or submitted workloads; have approval/rollback.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 4. sudo passwd -S YOUR_USER

```bash
sudo passwd -S YOUR_USER
```

**What it does:** Changes the password of the specified LOCAL Linux user. It prompts interactively rather than putting the new password in the command.

**How to read the command:** `passwd` is the utility. Options: `-S` means a program-specific setting; check its local `--help`.

**Expected output:** Password update confirmation or PAM/account-policy error.

**Before running:** Replace `YOUR_USER` with real approved values. Check that you're on the correct Linux server/distribution. ⚠️ This may change the OS, accounts, services or submitted workloads; have approval/rollback.

**When it helps:** Do not change directory-managed AD/LDAP passwords this way.

## 5. getent group sudo

```bash
getent group sudo
```

**What it does:** Runs the installed Linux utility `getent` with the following arguments. This action depends on the specific tool and environment.

**How to read the command:** `getent` is the utility. Remaining words specify the file, service, device, user, host or action.

**Expected output:** Program output or error; inspect the original runbook and `man getent` if available.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 6. getent group wheel

```bash
getent group wheel
```

**What it does:** Runs the installed Linux utility `getent` with the following arguments. This action depends on the specific tool and environment.

**How to read the command:** `getent` is the utility. Remaining words specify the file, service, device, user, host or action.

**Expected output:** Program output or error; inspect the original runbook and `man getent` if available.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 7. sudo passwd YOUR_USER

```bash
sudo passwd YOUR_USER
```

**What it does:** Changes the password of the specified LOCAL Linux user. It prompts interactively rather than putting the new password in the command.

**How to read the command:** `passwd` is the utility. Remaining words specify the file, service, device, user, host or action.

**Expected output:** Password update confirmation or PAM/account-policy error.

**Before running:** Replace `YOUR_USER` with real approved values. Check that you're on the correct Linux server/distribution. ⚠️ This may change the OS, accounts, services or submitted workloads; have approval/rollback.

**When it helps:** Do not change directory-managed AD/LDAP passwords this way.

## 8. sudo chage -l YOUR_USER

```bash
sudo chage -l YOUR_USER
```

**What it does:** Runs the installed Linux utility `chage` with the following arguments. This action depends on the specific tool and environment.

**How to read the command:** `chage` is the utility. Options: `-l` means show long full status lines for systemctl; otherwise tool-specific.

**Expected output:** Program output or error; inspect the original runbook and `man chage` if available.

**Before running:** Replace `YOUR_USER` with real approved values. Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 9. mount | grep ' on / '

```bash
mount | grep ' on / '
```

**What it does:** Lists or changes filesystem mounts, depending on arguments.

**How to read the command:** `mount` is the utility. Remaining words specify the file, service, device, user, host or action. `|` filters the output through another utility.

**Expected output:** Mount listing, or silent success/error after a remount.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 10. mount -o remount,rw /

```bash
mount -o remount,rw /
```

**What it does:** Remounts the named filesystem read-write during authorized rescue; this is a real system change.

**How to read the command:** `mount` is the utility. Options: `-o` means a program-specific setting; check its local `--help`.

**Expected output:** Mount listing, or silent success/error after a remount.

**Before running:** Check that you're on the correct Linux server/distribution. ⚠️ This may change the OS, accounts, services or submitted workloads; have approval/rollback.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 11. getent passwd YOUR_USER

```bash
getent passwd YOUR_USER
```

**What it does:** Runs the installed Linux utility `getent` with the following arguments. This action depends on the specific tool and environment.

**How to read the command:** `getent` is the utility. Remaining words specify the file, service, device, user, host or action.

**Expected output:** Program output or error; inspect the original runbook and `man getent` if available.

**Before running:** Replace `YOUR_USER` with real approved values. Check that you're on the correct Linux server/distribution. ⚠️ This may change the OS, accounts, services or submitted workloads; have approval/rollback.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 12. passwd YOUR_USER

```bash
passwd YOUR_USER
```

**What it does:** Changes the password of the specified LOCAL Linux user. It prompts interactively rather than putting the new password in the command.

**How to read the command:** `passwd` is the utility. Remaining words specify the file, service, device, user, host or action.

**Expected output:** Password update confirmation or PAM/account-policy error.

**Before running:** Replace `YOUR_USER` with real approved values. Check that you're on the correct Linux server/distribution. ⚠️ This may change the OS, accounts, services or submitted workloads; have approval/rollback.

**When it helps:** Do not change directory-managed AD/LDAP passwords this way.

## 13. sync

```bash
sync
```

**What it does:** Runs the installed Linux utility `sync` with the following arguments. This action depends on the specific tool and environment.

**How to read the command:** `sync` is the utility. Remaining words specify the file, service, device, user, host or action.

**Expected output:** Program output or error; inspect the original runbook and `man sync` if available.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 14. reboot

```bash
reboot
```

**What it does:** Runs the installed Linux utility `reboot` with the following arguments. This action depends on the specific tool and environment.

**How to read the command:** `reboot` is the utility. Remaining words specify the file, service, device, user, host or action.

**Expected output:** Program output or error; inspect the original runbook and `man reboot` if available.

**Before running:** Check that you're on the correct Linux server/distribution. ⚠️ This may change the OS, accounts, services or submitted workloads; have approval/rollback.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 15. mount | grep sysroot

```bash
mount | grep sysroot
```

**What it does:** Lists or changes filesystem mounts, depending on arguments.

**How to read the command:** `mount` is the utility. Remaining words specify the file, service, device, user, host or action. `|` filters the output through another utility.

**Expected output:** Mount listing, or silent success/error after a remount.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 16. mount -o remount,rw /sysroot

```bash
mount -o remount,rw /sysroot
```

**What it does:** Remounts the named filesystem read-write during authorized rescue; this is a real system change.

**How to read the command:** `mount` is the utility. Options: `-o` means a program-specific setting; check its local `--help`.

**Expected output:** Mount listing, or silent success/error after a remount.

**Before running:** Check that you're on the correct Linux server/distribution. ⚠️ This may change the OS, accounts, services or submitted workloads; have approval/rollback.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 17. chroot /sysroot

```bash
chroot /sysroot
```

**What it does:** Starts a shell/program as though the selected installed filesystem were `/`, commonly used to recover an OS from rescue media.

**How to read the command:** `chroot` is the utility. Remaining words specify the file, service, device, user, host or action.

**Expected output:** New root shell context; subsequent `passwd` affects that root, not the rescue environment.

**Before running:** Check that you're on the correct Linux server/distribution. ⚠️ This may change the OS, accounts, services or submitted workloads; have approval/rollback.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 18. passwd YOUR_USER

```bash
passwd YOUR_USER
```

**What it does:** Changes the password of the specified LOCAL Linux user. It prompts interactively rather than putting the new password in the command.

**How to read the command:** `passwd` is the utility. Remaining words specify the file, service, device, user, host or action.

**Expected output:** Password update confirmation or PAM/account-policy error.

**Before running:** Replace `YOUR_USER` with real approved values. Check that you're on the correct Linux server/distribution. ⚠️ This may change the OS, accounts, services or submitted workloads; have approval/rollback.

**When it helps:** Do not change directory-managed AD/LDAP passwords this way.

## 19. touch /.autorelabel

```bash
touch /.autorelabel
```

**What it does:** Runs the installed Linux utility `touch` with the following arguments. This action depends on the specific tool and environment.

**How to read the command:** `touch` is the utility. Remaining words specify the file, service, device, user, host or action.

**Expected output:** Program output or error; inspect the original runbook and `man touch` if available.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 20. exit

```bash
exit
```

**What it does:** Runs the installed Linux utility `exit` with the following arguments. This action depends on the specific tool and environment.

**How to read the command:** `exit` is the utility. Remaining words specify the file, service, device, user, host or action.

**Expected output:** Program output or error; inspect the original runbook and `man exit` if available.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 21. exit

```bash
exit
```

**What it does:** Runs the installed Linux utility `exit` with the following arguments. This action depends on the specific tool and environment.

**How to read the command:** `exit` is the utility. Remaining words specify the file, service, device, user, host or action.

**Expected output:** Program output or error; inspect the original runbook and `man exit` if available.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 22. sudo passwd -S YOUR_USER

```bash
sudo passwd -S YOUR_USER
```

**What it does:** Changes the password of the specified LOCAL Linux user. It prompts interactively rather than putting the new password in the command.

**How to read the command:** `passwd` is the utility. Options: `-S` means a program-specific setting; check its local `--help`.

**Expected output:** Password update confirmation or PAM/account-policy error.

**Before running:** Replace `YOUR_USER` with real approved values. Check that you're on the correct Linux server/distribution. ⚠️ This may change the OS, accounts, services or submitted workloads; have approval/rollback.

**When it helps:** Do not change directory-managed AD/LDAP passwords this way.

## 23. sudo chage -l YOUR_USER

```bash
sudo chage -l YOUR_USER
```

**What it does:** Runs the installed Linux utility `chage` with the following arguments. This action depends on the specific tool and environment.

**How to read the command:** `chage` is the utility. Options: `-l` means show long full status lines for systemctl; otherwise tool-specific.

**Expected output:** Program output or error; inspect the original runbook and `man chage` if available.

**Before running:** Replace `YOUR_USER` with real approved values. Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 24. sudo faillock --user YOUR_USER

```bash
sudo faillock --user YOUR_USER
```

**What it does:** Runs the installed Linux utility `faillock` with the following arguments. This action depends on the specific tool and environment.

**How to read the command:** `faillock` is the utility. Options: `--user` means filter by account.

**Expected output:** Program output or error; inspect the original runbook and `man faillock` if available.

**Before running:** Replace `YOUR_USER` with real approved values. Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 25. sudo sshd -t

```bash
sudo sshd -t
```

**What it does:** Runs an SSH client/server diagnostic or validates SSH server configuration, depending on subcommand.

**How to read the command:** `sshd` is the utility. Options: `-t` means TCP filter for ss or tool-specific option.

**Expected output:** Connection/validation output or syntax/configuration errors.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 26. sudo sshd -T | grep -Ei 'passwordauthentication|permitrootlogin|pubkeyauthentication|usepam'

```bash
sudo sshd -T | grep -Ei 'passwordauthentication|permitrootlogin|pubkeyauthentication|usepam'
```

**What it does:** Runs an SSH client/server diagnostic or validates SSH server configuration, depending on subcommand.

**How to read the command:** `sshd` is the utility. Options: `-T` means show filesystem type (df), or tool-specific detail; `-Ei` means a program-specific setting; check its local `--help`. `|` filters the output through another utility.

**Expected output:** Connection/validation output or syntax/configuration errors.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 27. sudo journalctl -b --since '30 minutes ago' | grep -Ei 'sshd|pam|authentication|faillock' | tail -80

```bash
sudo journalctl -b --since '30 minutes ago' | grep -Ei 'sshd|pam|authentication|faillock' | tail -80
```

**What it does:** Opens the systemd journal (Linux's central log database). It only reads logs; it does not restart or fix anything.

**How to read the command:** `journalctl` is the utility. Options: `-b` means this boot's logs (journalctl), otherwise tool-specific; `--since` means only messages from this time; `-Ei` means a program-specific setting; check its local `--help`; `-80` means a program-specific setting; check its local `--help`. `|` filters the output through another utility.

**Expected output:** Lines with timestamps, hostname, component and message. Find the first ERROR around the incident time, then read lines immediately before it.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Use `journalctl --list-boots` if the problem happened before a reboot.

