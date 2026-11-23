# Offline command / configuration reference: `09-FORGOTTEN-PASSWORD-RECOVERY.md`

Generated from repository source by `tools/build_offline_reference.py`. **27 items**. This copy works offline. No commands were executed.

⚠️ **Version-aware reference, not a substitute for vendor docs.** Every individual command is preserved with purpose, flags, placeholders, expected output and risk. Ambiguous flags are marked as command-specific. Always verify flags against your installed CLI.

**Original file:** [`09-FORGOTTEN-PASSWORD-RECOVERY.md`](../09-FORGOTTEN-PASSWORD-RECOVERY.md)

### 1. `whoami`

**Source line:** 24  |  **Tool/purpose:** whoami operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
whoami
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** whoami. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `whoami operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 2. `id YOUR_USER`

**Source line:** 25  |  **Tool/purpose:** id operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
id YOUR_USER
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** id YOUR_USER. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Substitute before running:** `YOUR_USER`. Never assume an example target is the current cluster.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `id operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 3. `getent passwd YOUR_USER`

**Source line:** 26  |  **Tool/purpose:** NSS lookup  |  **Impact:** **CHANGE / POSSIBLY MUTATING**

**Exact command:**

```bash
getent passwd YOUR_USER
```

**What it does:** Resolve users, groups and hosts through the operating system's NSS configuration.

**Syntax:** getent passwd YOUR_USER. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Substitute before running:** `YOUR_USER`. Never assume an example target is the current cluster.
**Safety/rollback:** Check subcommand and flags; requires change review and appropriate access. **Credential caution:** command may reference credentials or identity; do not upload raw outputs.
**Expected result:** Resolve users, groups and hosts through the operating system's NSS configuration. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `NSS lookup` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/man1/getent.1.html).

### 4. `sudo passwd -S YOUR_USER`

**Source line:** 27  |  **Tool/purpose:** passwd operation  |  **Impact:** **CHANGE / POSSIBLY MUTATING**

**Exact command:**

```bash
sudo passwd -S YOUR_USER
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** sudo passwd -S YOUR_USER. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-S` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Substitute before running:** `YOUR_USER`. Never assume an example target is the current cluster.
**Safety/rollback:** Check subcommand and flags; requires change review and appropriate access. **Credential caution:** command may reference credentials or identity; do not upload raw outputs.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `passwd operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 5. `getent group sudo`

**Source line:** 28  |  **Tool/purpose:** NSS lookup  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
getent group sudo
```

**What it does:** Resolve users, groups and hosts through the operating system's NSS configuration.

**Syntax:** getent group sudo. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Resolve users, groups and hosts through the operating system's NSS configuration. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `NSS lookup` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/man1/getent.1.html).

### 6. `getent group wheel`

**Source line:** 29  |  **Tool/purpose:** NSS lookup  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
getent group wheel
```

**What it does:** Resolve users, groups and hosts through the operating system's NSS configuration.

**Syntax:** getent group wheel. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Resolve users, groups and hosts through the operating system's NSS configuration. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `NSS lookup` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/man1/getent.1.html).

### 7. `sudo passwd YOUR_USER`

**Source line:** 51  |  **Tool/purpose:** passwd operation  |  **Impact:** **CHANGE / POSSIBLY MUTATING**

**Exact command:**

```bash
sudo passwd YOUR_USER
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** sudo passwd YOUR_USER. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Substitute before running:** `YOUR_USER`. Never assume an example target is the current cluster.
**Safety/rollback:** Check subcommand and flags; requires change review and appropriate access. **Credential caution:** command may reference credentials or identity; do not upload raw outputs.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `passwd operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 8. `sudo chage -l YOUR_USER`

**Source line:** 52  |  **Tool/purpose:** chage operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
sudo chage -l YOUR_USER
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** sudo chage -l YOUR_USER. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-l` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Substitute before running:** `YOUR_USER`. Never assume an example target is the current cluster.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `chage operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 9. `mount \| grep ' on / '`

**Source line:** 78  |  **Tool/purpose:** mount operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
mount | grep ' on / '
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** mount | grep  on / . The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Shell syntax:** `|` pipes stdout into the next process; check pipeline exit codes (pipefail where appropriate).
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `mount operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 10. `mount -o remount,rw /`

**Source line:** 79  |  **Tool/purpose:** mount operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
mount -o remount,rw /
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** mount -o remount,rw /. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-o` — Output format for kubectl/oc, filename for some tools; command-specific.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `mount operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 11. `getent passwd YOUR_USER`

**Source line:** 80  |  **Tool/purpose:** NSS lookup  |  **Impact:** **CHANGE / POSSIBLY MUTATING**

**Exact command:**

```bash
getent passwd YOUR_USER
```

**What it does:** Resolve users, groups and hosts through the operating system's NSS configuration.

**Syntax:** getent passwd YOUR_USER. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Substitute before running:** `YOUR_USER`. Never assume an example target is the current cluster.
**Safety/rollback:** Check subcommand and flags; requires change review and appropriate access. **Credential caution:** command may reference credentials or identity; do not upload raw outputs.
**Expected result:** Resolve users, groups and hosts through the operating system's NSS configuration. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `NSS lookup` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/man1/getent.1.html).

### 12. `passwd YOUR_USER`

**Source line:** 81  |  **Tool/purpose:** passwd operation  |  **Impact:** **CHANGE / POSSIBLY MUTATING**

**Exact command:**

```bash
passwd YOUR_USER
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** passwd YOUR_USER. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Substitute before running:** `YOUR_USER`. Never assume an example target is the current cluster.
**Safety/rollback:** Check subcommand and flags; requires change review and appropriate access. **Credential caution:** command may reference credentials or identity; do not upload raw outputs.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `passwd operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 13. `sync`

**Source line:** 82  |  **Tool/purpose:** sync operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
sync
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** sync. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `sync operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 14. `reboot`

**Source line:** 83  |  **Tool/purpose:** reboot operation  |  **Impact:** **CHANGE / POSSIBLY MUTATING**

**Exact command:**

```bash
reboot
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** reboot. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Check subcommand and flags; requires change review and appropriate access.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `reboot operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 15. `mount \| grep sysroot`

**Source line:** 115  |  **Tool/purpose:** mount operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
mount | grep sysroot
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** mount | grep sysroot. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Shell syntax:** `|` pipes stdout into the next process; check pipeline exit codes (pipefail where appropriate).
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `mount operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 16. `mount -o remount,rw /sysroot`

**Source line:** 116  |  **Tool/purpose:** mount operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
mount -o remount,rw /sysroot
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** mount -o remount,rw /sysroot. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-o` — Output format for kubectl/oc, filename for some tools; command-specific.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `mount operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 17. `chroot /sysroot`

**Source line:** 117  |  **Tool/purpose:** chroot operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
chroot /sysroot
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** chroot /sysroot. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `chroot operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 18. `passwd YOUR_USER`

**Source line:** 118  |  **Tool/purpose:** passwd operation  |  **Impact:** **CHANGE / POSSIBLY MUTATING**

**Exact command:**

```bash
passwd YOUR_USER
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** passwd YOUR_USER. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Substitute before running:** `YOUR_USER`. Never assume an example target is the current cluster.
**Safety/rollback:** Check subcommand and flags; requires change review and appropriate access. **Credential caution:** command may reference credentials or identity; do not upload raw outputs.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `passwd operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 19. `touch /.autorelabel`

**Source line:** 119  |  **Tool/purpose:** touch operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
touch /.autorelabel
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** touch /.autorelabel. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `touch operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 20. `exit`

**Source line:** 120  |  **Tool/purpose:** exit operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
exit
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** exit. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `exit operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 21. `exit`

**Source line:** 121  |  **Tool/purpose:** exit operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
exit
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** exit. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `exit operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 22. `sudo passwd -S YOUR_USER`

**Source line:** 146  |  **Tool/purpose:** passwd operation  |  **Impact:** **CHANGE / POSSIBLY MUTATING**

**Exact command:**

```bash
sudo passwd -S YOUR_USER
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** sudo passwd -S YOUR_USER. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-S` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Substitute before running:** `YOUR_USER`. Never assume an example target is the current cluster.
**Safety/rollback:** Check subcommand and flags; requires change review and appropriate access. **Credential caution:** command may reference credentials or identity; do not upload raw outputs.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `passwd operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 23. `sudo chage -l YOUR_USER`

**Source line:** 147  |  **Tool/purpose:** chage operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
sudo chage -l YOUR_USER
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** sudo chage -l YOUR_USER. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-l` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Substitute before running:** `YOUR_USER`. Never assume an example target is the current cluster.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `chage operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 24. `sudo faillock --user YOUR_USER`

**Source line:** 148  |  **Tool/purpose:** faillock operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
sudo faillock --user YOUR_USER
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** sudo faillock --user YOUR_USER. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `--user` — Select or specify user identity; semantics depend on tool.
**Substitute before running:** `YOUR_USER`. Never assume an example target is the current cluster.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `faillock operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 25. `sudo sshd -t`

**Source line:** 149  |  **Tool/purpose:** sshd operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
sudo sshd -t
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** sudo sshd -t. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-t` — Type/timeout/terminal mode depending on command.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `sshd operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 26. `sudo sshd -T \| grep -Ei 'passwordauthentication\|permitrootlogin\|pubkeyauthentication\|usepam'`

**Source line:** 150  |  **Tool/purpose:** sshd operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
sudo sshd -T | grep -Ei 'passwordauthentication|permitrootlogin|pubkeyauthentication|usepam'
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** sudo sshd -T | grep. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-T` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Option:** `-Ei` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Shell syntax:** `|` pipes stdout into the next process; check pipeline exit codes (pipefail where appropriate).
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information. **Credential caution:** command may reference credentials or identity; do not upload raw outputs.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `sshd operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 27. `sudo journalctl -b --since '30 minutes ago' \| grep -Ei 'sshd\|pam\|authentication\|faillock' \| tail -80`

**Source line:** 151  |  **Tool/purpose:** systemd journal inspection  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
sudo journalctl -b --since '30 minutes ago' | grep -Ei 'sshd|pam|authentication|faillock' | tail -80
```

**What it does:** Query system and service journal messages with boot, unit, time and priority filters.

**Syntax:** sudo journalctl -b --since 30 minutes ago. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-b` — Filter journal to specified boot; otherwise command-specific.
**Option:** `--since` — Select entries newer than a given time or duration.
**Option:** `-Ei` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Option:** `-80` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Shell syntax:** `|` pipes stdout into the next process; check pipeline exit codes (pipefail where appropriate).
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information. **Credential caution:** command may reference credentials or identity; do not upload raw outputs.
**Expected result:** Query system and service journal messages with boot, unit, time and priority filters. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `systemd journal inspection` vendor manual or installed `--help`; [online vendor reference](https://www.freedesktop.org/software/systemd/man/latest/journalctl.html).

