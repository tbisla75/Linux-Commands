# Offline explanations: 09-FORGOTTEN-PASSWORD-RECOVERY.md

Source: [09-FORGOTTEN-PASSWORD-RECOVERY.md](../09-FORGOTTEN-PASSWORD-RECOVERY.md). This is a **local, internet-independent** explanation of every terminal example in the runbook, with syntax, prerequisites and operational risk. Validate against actual installed releases.

## 1. whoami

```bash
whoami
```

**What it does:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics.

**Complete command form:** `whoami` is the executable; the remaining words are targets/subcommands and options. No named options.. Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 2. id YOUR_USER

```bash
id YOUR_USER
```

**What it does:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics.

**Complete command form:** `id` is the executable; the remaining words are targets/subcommands and options. No named options.. Shell pipes forward output, while redirects can write local files.

**Environment and variables:** YOUR_USER. Replace only with authorized target values.

**Expected output:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 3. getent passwd YOUR_USER

```bash
getent passwd YOUR_USER
```

**What it does:** Resolve NSS hosts or user/group database.

**Complete command form:** `getent` is the executable; the remaining words are targets/subcommands and options. No named options.. Shell pipes forward output, while redirects can write local files.

**Environment and variables:** YOUR_USER. Replace only with authorized target values.

**Expected output:** Resolve NSS hosts or user/group database. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟠 Action may modify host, credentials or allocate batch resources; require approval and rollback.

## 4. sudo passwd -S YOUR_USER

```bash
sudo passwd -S YOUR_USER
```

**What it does:** Interactive local account password change requiring authorized privilege.

**Complete command form:** `passwd` is the executable; the remaining words are targets/subcommands and options. Options: `-S` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** YOUR_USER. Replace only with authorized target values.

**Expected output:** Interactive local account password change requiring authorized privilege. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟠 Action may modify host, credentials or allocate batch resources; require approval and rollback.

## 5. getent group sudo

```bash
getent group sudo
```

**What it does:** Resolve NSS hosts or user/group database.

**Complete command form:** `getent` is the executable; the remaining words are targets/subcommands and options. No named options.. Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Resolve NSS hosts or user/group database. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 6. getent group wheel

```bash
getent group wheel
```

**What it does:** Resolve NSS hosts or user/group database.

**Complete command form:** `getent` is the executable; the remaining words are targets/subcommands and options. No named options.. Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Resolve NSS hosts or user/group database. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 7. sudo passwd YOUR_USER

```bash
sudo passwd YOUR_USER
```

**What it does:** Interactive local account password change requiring authorized privilege.

**Complete command form:** `passwd` is the executable; the remaining words are targets/subcommands and options. No named options.. Shell pipes forward output, while redirects can write local files.

**Environment and variables:** YOUR_USER. Replace only with authorized target values.

**Expected output:** Interactive local account password change requiring authorized privilege. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟠 Action may modify host, credentials or allocate batch resources; require approval and rollback.

## 8. sudo chage -l YOUR_USER

```bash
sudo chage -l YOUR_USER
```

**What it does:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics.

**Complete command form:** `chage` is the executable; the remaining words are targets/subcommands and options. Options: `-l` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** YOUR_USER. Replace only with authorized target values.

**Expected output:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 9. mount | grep ' on / '

```bash
mount | grep ' on / '
```

**What it does:** Show or alter filesystem mounts.

**Complete command form:** `mount` is the executable; the remaining words are targets/subcommands and options. No named options.. Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Show or alter filesystem mounts. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 10. mount -o remount,rw /

```bash
mount -o remount,rw /
```

**What it does:** Show or alter filesystem mounts.

**Complete command form:** `mount` is the executable; the remaining words are targets/subcommands and options. Options: `-o` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Show or alter filesystem mounts. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟠 Action may modify host, credentials or allocate batch resources; require approval and rollback.

## 11. getent passwd YOUR_USER

```bash
getent passwd YOUR_USER
```

**What it does:** Resolve NSS hosts or user/group database.

**Complete command form:** `getent` is the executable; the remaining words are targets/subcommands and options. No named options.. Shell pipes forward output, while redirects can write local files.

**Environment and variables:** YOUR_USER. Replace only with authorized target values.

**Expected output:** Resolve NSS hosts or user/group database. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟠 Action may modify host, credentials or allocate batch resources; require approval and rollback.

## 12. passwd YOUR_USER

```bash
passwd YOUR_USER
```

**What it does:** Interactive local account password change requiring authorized privilege.

**Complete command form:** `passwd` is the executable; the remaining words are targets/subcommands and options. No named options.. Shell pipes forward output, while redirects can write local files.

**Environment and variables:** YOUR_USER. Replace only with authorized target values.

**Expected output:** Interactive local account password change requiring authorized privilege. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟠 Action may modify host, credentials or allocate batch resources; require approval and rollback.

## 13. sync

```bash
sync
```

**What it does:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics.

**Complete command form:** `sync` is the executable; the remaining words are targets/subcommands and options. No named options.. Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 14. reboot

```bash
reboot
```

**What it does:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics.

**Complete command form:** `reboot` is the executable; the remaining words are targets/subcommands and options. No named options.. Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟠 Action may modify host, credentials or allocate batch resources; require approval and rollback.

## 15. mount | grep sysroot

```bash
mount | grep sysroot
```

**What it does:** Show or alter filesystem mounts.

**Complete command form:** `mount` is the executable; the remaining words are targets/subcommands and options. No named options.. Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Show or alter filesystem mounts. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 16. mount -o remount,rw /sysroot

```bash
mount -o remount,rw /sysroot
```

**What it does:** Show or alter filesystem mounts.

**Complete command form:** `mount` is the executable; the remaining words are targets/subcommands and options. Options: `-o` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Show or alter filesystem mounts. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟠 Action may modify host, credentials or allocate batch resources; require approval and rollback.

## 17. chroot /sysroot

```bash
chroot /sysroot
```

**What it does:** Change process root to installed filesystem during approved rescue.

**Complete command form:** `chroot` is the executable; the remaining words are targets/subcommands and options. No named options.. Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Change process root to installed filesystem during approved rescue. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟠 Action may modify host, credentials or allocate batch resources; require approval and rollback.

## 18. passwd YOUR_USER

```bash
passwd YOUR_USER
```

**What it does:** Interactive local account password change requiring authorized privilege.

**Complete command form:** `passwd` is the executable; the remaining words are targets/subcommands and options. No named options.. Shell pipes forward output, while redirects can write local files.

**Environment and variables:** YOUR_USER. Replace only with authorized target values.

**Expected output:** Interactive local account password change requiring authorized privilege. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟠 Action may modify host, credentials or allocate batch resources; require approval and rollback.

## 19. touch /.autorelabel

```bash
touch /.autorelabel
```

**What it does:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics.

**Complete command form:** `touch` is the executable; the remaining words are targets/subcommands and options. No named options.. Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 20. exit

```bash
exit
```

**What it does:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics.

**Complete command form:** `exit` is the executable; the remaining words are targets/subcommands and options. No named options.. Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 21. exit

```bash
exit
```

**What it does:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics.

**Complete command form:** `exit` is the executable; the remaining words are targets/subcommands and options. No named options.. Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 22. sudo passwd -S YOUR_USER

```bash
sudo passwd -S YOUR_USER
```

**What it does:** Interactive local account password change requiring authorized privilege.

**Complete command form:** `passwd` is the executable; the remaining words are targets/subcommands and options. Options: `-S` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** YOUR_USER. Replace only with authorized target values.

**Expected output:** Interactive local account password change requiring authorized privilege. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟠 Action may modify host, credentials or allocate batch resources; require approval and rollback.

## 23. sudo chage -l YOUR_USER

```bash
sudo chage -l YOUR_USER
```

**What it does:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics.

**Complete command form:** `chage` is the executable; the remaining words are targets/subcommands and options. Options: `-l` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** YOUR_USER. Replace only with authorized target values.

**Expected output:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 24. sudo faillock --user YOUR_USER

```bash
sudo faillock --user YOUR_USER
```

**What it does:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics.

**Complete command form:** `faillock` is the executable; the remaining words are targets/subcommands and options. Options: `--user` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** YOUR_USER. Replace only with authorized target values.

**Expected output:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 25. sudo sshd -t

```bash
sudo sshd -t
```

**What it does:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics.

**Complete command form:** `sshd` is the executable; the remaining words are targets/subcommands and options. Options: `-t` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 26. sudo sshd -T | grep -Ei 'passwordauthentication|permitrootlogin|pubkeyauthentication|usepam'

```bash
sudo sshd -T | grep -Ei 'passwordauthentication|permitrootlogin|pubkeyauthentication|usepam'
```

**What it does:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics.

**Complete command form:** `sshd` is the executable; the remaining words are targets/subcommands and options. Options: `-T` (confirm tool-specific help); `-Ei` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 27. sudo journalctl -b --since '30 minutes ago' | grep -Ei 'sshd|pam|authentication|faillock' | tail -80

```bash
sudo journalctl -b --since '30 minutes ago' | grep -Ei 'sshd|pam|authentication|faillock' | tail -80
```

**What it does:** Read service/kernel journal logs filtered by arguments.

**Complete command form:** `journalctl` is the executable; the remaining words are targets/subcommands and options. Options: `-b` (confirm tool-specific help); `--since` (confirm tool-specific help); `-Ei` (confirm tool-specific help); `-80` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Read service/kernel journal logs filtered by arguments. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

