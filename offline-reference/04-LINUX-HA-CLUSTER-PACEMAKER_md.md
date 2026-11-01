# Offline Linux command explanations: 04-LINUX-HA-CLUSTER-PACEMAKER.md

Fully local searchable catalog sourced from [04-LINUX-HA-CLUSTER-PACEMAKER.md](../04-LINUX-HA-CLUSTER-PACEMAKER.md). Every command includes syntax, purpose, options, output and safety. Verify ambiguous flags with installed `--help` / manual pages.

## 1. hostnamectl

```bash
hostnamectl
```

**Purpose:** Shows or changes hostname and host identity.

**Full syntax:** executable `hostnamectl`; following words identify subcommands and target, followed by options (none). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** Shows or changes hostname and host identity. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 2. timedatectl status

```bash
timedatectl status
```

**Purpose:** Time synchronization, timezone and clock status.

**Full syntax:** executable `timedatectl`; following words identify subcommands and target, followed by options (none). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** Time synchronization, timezone and clock status. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 3. ip route

```bash
ip route
```

**Purpose:** Displays or modifies Linux link/address/route state.

**Full syntax:** executable `ip`; following words identify subcommands and target, followed by options (none). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** Displays or modifies Linux link/address/route state. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 4. ss -tulpn

```bash
ss -tulpn
```

**Purpose:** Displays listening/established network sockets.

**Full syntax:** executable `ss`; following words identify subcommands and target, followed by options `-tulpn` (verify exact option in this CLI). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** Displays listening/established network sockets. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 5. sudo pcs status

```bash
sudo pcs status
```

**Purpose:** Pacemaker cluster quorum/fencing/resource management.

**Full syntax:** executable `pcs`; following words identify subcommands and target, followed by options (none). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** Pacemaker cluster quorum/fencing/resource management. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 6. sudo pcs quorum status

```bash
sudo pcs quorum status
```

**Purpose:** Pacemaker cluster quorum/fencing/resource management.

**Full syntax:** executable `pcs`; following words identify subcommands and target, followed by options (none). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** Pacemaker cluster quorum/fencing/resource management. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 7. sudo crm_mon -1

```bash
sudo crm_mon -1
```

**Purpose:** Summarizes Pacemaker cluster status.

**Full syntax:** executable `crm_mon`; following words identify subcommands and target, followed by options `-1` (verify exact option in this CLI). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** Summarizes Pacemaker cluster status. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 8. sudo pcs cluster status

```bash
sudo pcs cluster status
```

**Purpose:** Pacemaker cluster quorum/fencing/resource management.

**Full syntax:** executable `pcs`; following words identify subcommands and target, followed by options (none). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** Pacemaker cluster quorum/fencing/resource management. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 9. sudo pcs status --full

```bash
sudo pcs status --full
```

**Purpose:** Pacemaker cluster quorum/fencing/resource management.

**Full syntax:** executable `pcs`; following words identify subcommands and target, followed by options `--full` (verify exact option in this CLI). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** Pacemaker cluster quorum/fencing/resource management. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 10. sudo pcs resource status

```bash
sudo pcs resource status
```

**Purpose:** Pacemaker cluster quorum/fencing/resource management.

**Full syntax:** executable `pcs`; following words identify subcommands and target, followed by options (none). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** Pacemaker cluster quorum/fencing/resource management. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 11. sudo pcs resource config

```bash
sudo pcs resource config
```

**Purpose:** Pacemaker cluster quorum/fencing/resource management.

**Full syntax:** executable `pcs`; following words identify subcommands and target, followed by options (none). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** Pacemaker cluster quorum/fencing/resource management. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 12. sudo pcs stonith config

```bash
sudo pcs stonith config
```

**Purpose:** Pacemaker cluster quorum/fencing/resource management.

**Full syntax:** executable `pcs`; following words identify subcommands and target, followed by options (none). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** Pacemaker cluster quorum/fencing/resource management. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 13. sudo pcs quorum status

```bash
sudo pcs quorum status
```

**Purpose:** Pacemaker cluster quorum/fencing/resource management.

**Full syntax:** executable `pcs`; following words identify subcommands and target, followed by options (none). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** Pacemaker cluster quorum/fencing/resource management. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 14. sudo journalctl -u pacemaker -n 100 --no-pager

```bash
sudo journalctl -u pacemaker -n 100 --no-pager
```

**Purpose:** Reads systemd journal messages (unit, boot, time and priority filters).

**Full syntax:** executable `journalctl`; following words identify subcommands and target, followed by options `-u` (verify exact option in this CLI), `-n` (verify exact option in this CLI), `--no-pager` (verify exact option in this CLI). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** Reads systemd journal messages (unit, boot, time and priority filters). Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 15. sudo journalctl -u corosync -n 100 --no-pager

```bash
sudo journalctl -u corosync -n 100 --no-pager
```

**Purpose:** Reads systemd journal messages (unit, boot, time and priority filters).

**Full syntax:** executable `journalctl`; following words identify subcommands and target, followed by options `-u` (verify exact option in this CLI), `-n` (verify exact option in this CLI), `--no-pager` (verify exact option in this CLI). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** Reads systemd journal messages (unit, boot, time and priority filters). Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 16. sudo pcs resource relations

```bash
sudo pcs resource relations
```

**Purpose:** Pacemaker cluster quorum/fencing/resource management.

**Full syntax:** executable `pcs`; following words identify subcommands and target, followed by options (none). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** Pacemaker cluster quorum/fencing/resource management. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 17. sudo pcs constraint config

```bash
sudo pcs constraint config
```

**Purpose:** Pacemaker cluster quorum/fencing/resource management.

**Full syntax:** executable `pcs`; following words identify subcommands and target, followed by options (none). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** Pacemaker cluster quorum/fencing/resource management. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 18. sudo pcs node status

```bash
sudo pcs node status
```

**Purpose:** Pacemaker cluster quorum/fencing/resource management.

**Full syntax:** executable `pcs`; following words identify subcommands and target, followed by options (none). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** Pacemaker cluster quorum/fencing/resource management. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 19. sudo crm_verify -L -V

```bash
sudo crm_verify -L -V
```

**Purpose:** Validates Pacemaker CIB configuration.

**Full syntax:** executable `crm_verify`; following words identify subcommands and target, followed by options `-L` (verify exact option in this CLI), `-V` (verify exact option in this CLI). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** Validates Pacemaker CIB configuration. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

