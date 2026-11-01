# Offline Linux command explanations: 02-SECURITY-HARDENING.md

Fully local searchable catalog sourced from [02-SECURITY-HARDENING.md](../02-SECURITY-HARDENING.md). Every command includes syntax, purpose, options, output and safety. Verify ambiguous flags with installed `--help` / manual pages.

## 1. sudo ss -tulpen

```bash
sudo ss -tulpen
```

**Purpose:** Displays listening/established network sockets.

**Full syntax:** executable `ss`; following words identify subcommands and target, followed by options `-tulpen` (verify exact option in this CLI). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** Displays listening/established network sockets. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 2. sudo systemctl --type=service --state=running

```bash
sudo systemctl --type=service --state=running
```

**Purpose:** Reads or changes state of systemd-managed services.

**Full syntax:** executable `systemctl`; following words identify subcommands and target, followed by options `--type=service` (verify exact option in this CLI), `--state=running` (verify exact option in this CLI). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** Reads or changes state of systemd-managed services. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 3. sudo find /etc/ssh -maxdepth 2 -type f -ls

```bash
sudo find /etc/ssh -maxdepth 2 -type f -ls
```

**Purpose:** Searches files by provided path and predicates.

**Full syntax:** executable `find`; following words identify subcommands and target, followed by options `-maxdepth` (verify exact option in this CLI), `-type` (verify exact option in this CLI), `-ls` (verify exact option in this CLI). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** Searches files by provided path and predicates. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 4. sudo sshd -T | grep -E '^(permitrootlogin|passwordauthentication|pubkeyauthentication)'

```bash
sudo sshd -T | grep -E '^(permitrootlogin|passwordauthentication|pubkeyauthentication)'
```

**Purpose:** Runs the named command with supplied target arguments; consult its exact local manual for detailed semantics.

**Full syntax:** executable `sshd`; following words identify subcommands and target, followed by options `-T` (verify exact option in this CLI), `-E` (verify exact option in this CLI). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** Runs the named command with supplied target arguments; consult its exact local manual for detailed semantics. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 5. sudo auditctl -s

```bash
sudo auditctl -s
```

**Purpose:** Runs the named command with supplied target arguments; consult its exact local manual for detailed semantics.

**Full syntax:** executable `auditctl`; following words identify subcommands and target, followed by options `-s` (verify exact option in this CLI). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** Runs the named command with supplied target arguments; consult its exact local manual for detailed semantics. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 6. getenforce

```bash
getenforce
```

**Purpose:** Reads SELinux enforcing mode.

**Full syntax:** executable `getenforce`; following words identify subcommands and target, followed by options (none). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** Reads SELinux enforcing mode. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 7. sudo aa-status

```bash
sudo aa-status
```

**Purpose:** Lists AppArmor profiles and enforcement mode.

**Full syntax:** executable `aa-status`; following words identify subcommands and target, followed by options (none). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** Lists AppArmor profiles and enforcement mode. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 8. sudo nft list ruleset

```bash
sudo nft list ruleset
```

**Purpose:** Inspects or changes nftables firewall rules.

**Full syntax:** executable `nft`; following words identify subcommands and target, followed by options (none). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** Inspects or changes nftables firewall rules. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 9. sudo firewall-cmd --state

```bash
sudo firewall-cmd --state
```

**Purpose:** Firewalld status and policy query or change.

**Full syntax:** executable `firewall-cmd`; following words identify subcommands and target, followed by options `--state` (verify exact option in this CLI). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** Firewalld status and policy query or change. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 10. sudo firewall-cmd --list-all

```bash
sudo firewall-cmd --list-all
```

**Purpose:** Firewalld status and policy query or change.

**Full syntax:** executable `firewall-cmd`; following words identify subcommands and target, followed by options `--list-all` (verify exact option in this CLI). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** Firewalld status and policy query or change. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 11. sudo ufw status verbose

```bash
sudo ufw status verbose
```

**Purpose:** Ubuntu uncomplicated firewall inspection/configuration.

**Full syntax:** executable `ufw`; following words identify subcommands and target, followed by options (none). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** Ubuntu uncomplicated firewall inspection/configuration. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 12. getent group sudo

```bash
getent group sudo
```

**Purpose:** Resolves NSS users, groups and hostnames.

**Full syntax:** executable `getent`; following words identify subcommands and target, followed by options (none). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** Resolves NSS users, groups and hostnames. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 13. getent group wheel

```bash
getent group wheel
```

**Purpose:** Resolves NSS users, groups and hostnames.

**Full syntax:** executable `getent`; following words identify subcommands and target, followed by options (none). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** Resolves NSS users, groups and hostnames. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 14. sudo last -n 20

```bash
sudo last -n 20
```

**Purpose:** Runs the named command with supplied target arguments; consult its exact local manual for detailed semantics.

**Full syntax:** executable `last`; following words identify subcommands and target, followed by options `-n` (verify exact option in this CLI). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** Runs the named command with supplied target arguments; consult its exact local manual for detailed semantics. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 15. sudo journalctl -u sshd --since yesterday

```bash
sudo journalctl -u sshd --since yesterday
```

**Purpose:** Reads systemd journal messages (unit, boot, time and priority filters).

**Full syntax:** executable `journalctl`; following words identify subcommands and target, followed by options `-u` (verify exact option in this CLI), `--since` (verify exact option in this CLI). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** Reads systemd journal messages (unit, boot, time and priority filters). Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 16. sudo apt list --upgradable

```bash
sudo apt list --upgradable
```

**Purpose:** Ubuntu/Debian package administration.

**Full syntax:** executable `apt`; following words identify subcommands and target, followed by options `--upgradable` (verify exact option in this CLI). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** Ubuntu/Debian package administration. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 17. sudo dnf updateinfo list security

```bash
sudo dnf updateinfo list security
```

**Purpose:** RHEL-family package manager.

**Full syntax:** executable `dnf`; following words identify subcommands and target, followed by options (none). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** RHEL-family package manager. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 18. sudo openssl version -a

```bash
sudo openssl version -a
```

**Purpose:** SSL/TLS handshake and certificate diagnostics.

**Full syntax:** executable `openssl`; following words identify subcommands and target, followed by options `-a` (verify exact option in this CLI). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** SSL/TLS handshake and certificate diagnostics. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 19. sudo find / -xdev -perm -4000 -type f 2>/dev/null

```bash
sudo find / -xdev -perm -4000 -type f 2>/dev/null
```

**Purpose:** Searches files by provided path and predicates.

**Full syntax:** executable `find`; following words identify subcommands and target, followed by options `-xdev` (verify exact option in this CLI), `-perm` (verify exact option in this CLI), `-4000` (verify exact option in this CLI), `-type` (verify exact option in this CLI). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** Searches files by provided path and predicates. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 20. sudo find /etc -xdev -type f -perm /022 -ls 2>/dev/null

```bash
sudo find /etc -xdev -type f -perm /022 -ls 2>/dev/null
```

**Purpose:** Searches files by provided path and predicates.

**Full syntax:** executable `find`; following words identify subcommands and target, followed by options `-xdev` (verify exact option in this CLI), `-type` (verify exact option in this CLI), `-perm` (verify exact option in this CLI), `-ls` (verify exact option in this CLI). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** Searches files by provided path and predicates. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 21. timedatectl status

```bash
timedatectl status
```

**Purpose:** Time synchronization, timezone and clock status.

**Full syntax:** executable `timedatectl`; following words identify subcommands and target, followed by options (none). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** Time synchronization, timezone and clock status. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 22. openssl s_client -connect YOUR_HOST:443 -servername YOUR_HOST </dev/null

```bash
openssl s_client -connect YOUR_HOST:443 -servername YOUR_HOST </dev/null
```

**Purpose:** SSL/TLS handshake and certificate diagnostics.

**Full syntax:** executable `openssl`; following words identify subcommands and target, followed by options `-connect` (verify exact option in this CLI), `-servername` (verify exact option in this CLI). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** YOUR_HOST, YOUR_HOST.

**Expected outcome:** SSL/TLS handshake and certificate diagnostics. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 23. sudo journalctl -u chronyd -n 50 --no-pager

```bash
sudo journalctl -u chronyd -n 50 --no-pager
```

**Purpose:** Reads systemd journal messages (unit, boot, time and priority filters).

**Full syntax:** executable `journalctl`; following words identify subcommands and target, followed by options `-u` (verify exact option in this CLI), `-n` (verify exact option in this CLI), `--no-pager` (verify exact option in this CLI). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** Reads systemd journal messages (unit, boot, time and priority filters). Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 24. sudo journalctl -u systemd-timesyncd -n 50 --no-pager

```bash
sudo journalctl -u systemd-timesyncd -n 50 --no-pager
```

**Purpose:** Reads systemd journal messages (unit, boot, time and priority filters).

**Full syntax:** executable `journalctl`; following words identify subcommands and target, followed by options `-u` (verify exact option in this CLI), `-n` (verify exact option in this CLI), `--no-pager` (verify exact option in this CLI). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** Reads systemd journal messages (unit, boot, time and priority filters). Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

