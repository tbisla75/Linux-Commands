# Linux commands explained in plain English: 06-ENTERPRISE-HA-CLUSTER-IMPLEMENTATION.md

**Offline incident reference.** Find the exact command, see what it does, why to run it, how to interpret the results, and whether it can change your host. Some commands need optional packages or root permissions. Original: [06-ENTERPRISE-HA-CLUSTER-IMPLEMENTATION.md](../06-ENTERPRISE-HA-CLUSTER-IMPLEMENTATION.md).

## 1. sudo pcs status --full

```bash
sudo pcs status --full
```

**What it does:** Shows Pacemaker HA nodes, active resources, fail counts and fencing summary.

**How to read the command:** `pcs` is the utility. Options: `--full` means a program-specific setting; check its local `--help`.

**Expected output:** Which node owns each service and whether any nodes/resources are failed.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 2. sudo pcs quorum status

```bash
sudo pcs quorum status
```

**What it does:** Asks Corosync/Pacemaker whether enough voting members are online to safely operate the HA cluster.

**How to read the command:** `pcs` is the utility. Remaining words specify the file, service, device, user, host or action.

**Expected output:** Expected votes, present votes and whether quorum exists.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 3. sudo pcs stonith config

```bash
sudo pcs stonith config
```

**What it does:** Shows configured fencing devices that can safely isolate a failed HA node to prevent split brain.

**How to read the command:** `pcs` is the utility. Remaining words specify the file, service, device, user, host or action.

**Expected output:** Fencing agent names and target mappings; verify they actually work.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 4. sudo pcs resource status

```bash
sudo pcs resource status
```

**What it does:** Inspects Pacemaker cluster resources, quorum and constraints, or changes HA state depending on verb.

**How to read the command:** `pcs` is the utility. Remaining words specify the file, service, device, user, host or action.

**Expected output:** Cluster nodes/resource state, constraints or confirmation of changes.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 5. sudo pcs constraint config

```bash
sudo pcs constraint config
```

**What it does:** Inspects Pacemaker cluster resources, quorum and constraints, or changes HA state depending on verb.

**How to read the command:** `pcs` is the utility. Remaining words specify the file, service, device, user, host or action.

**Expected output:** Cluster nodes/resource state, constraints or confirmation of changes.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 6. uptime

```bash
uptime
```

**What it does:** Shows how long the host has been running and its load averages over 1, 5 and 15 minutes.

**How to read the command:** `uptime` is the utility. Remaining words specify the file, service, device, user, host or action.

**Expected output:** Uptime, active users and three load averages.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 7. free -h

```bash
free -h
```

**What it does:** Shows available RAM and swap, helping distinguish memory pressure from disk or CPU issues.

**How to read the command:** `free` is the utility. Options: `-h` means show numbers in easy-to-read units (for df/du/free); may mean help elsewhere.

**Expected output:** Total/used/available memory and swap figures.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 8. df -hT

```bash
df -hT
```

**What it does:** Checks whether mounted filesystems have enough free storage. With `-i`, it checks free file entries (inodes) instead of bytes.

**How to read the command:** `df` is the utility. Options: `-hT` means a program-specific setting; check its local `--help`.

**Expected output:** Filesystem/mountpoint, size, used space and percent used; look for 100%.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 9. sudo dnf install -y pcs pacemaker corosync fence-agents-all

```bash
sudo dnf install -y pcs pacemaker corosync fence-agents-all
```

**What it does:** Uses the distro's package manager to install selected packages. This can modify a production server.

**How to read the command:** `dnf` is the utility. Options: `-y` means a program-specific setting; check its local `--help`.

**Expected output:** Package versions, dependency plan, downloads or installed/updated packages.

**Before running:** Check that you're on the correct Linux server/distribution. ⚠️ This may change the OS, accounts, services or submitted workloads; have approval/rollback.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 10. sudo systemctl enable --now pcsd

```bash
sudo systemctl enable --now pcsd
```

**What it does:** Uses systemd to enable the selected service or inspect its state.

**How to read the command:** `systemctl` is the utility. Options: `--now` means a program-specific setting; check its local `--help`.

**Expected output:** The service's state or an operation acknowledgment.

**Before running:** Check that you're on the correct Linux server/distribution. ⚠️ This may change the OS, accounts, services or submitted workloads; have approval/rollback.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 11. sudo pcs status

```bash
sudo pcs status
```

**What it does:** Shows Pacemaker HA nodes, active resources, fail counts and fencing summary.

**How to read the command:** `pcs` is the utility. Remaining words specify the file, service, device, user, host or action.

**Expected output:** Which node owns each service and whether any nodes/resources are failed.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 12. sudo apt-get update

```bash
sudo apt-get update
```

**What it does:** Uses the distro's package manager to upgrade package indexes or system packages (tool-specific). This can modify a production server.

**How to read the command:** `apt-get` is the utility. Remaining words specify the file, service, device, user, host or action.

**Expected output:** Package versions, dependency plan, downloads or installed/updated packages.

**Before running:** Check that you're on the correct Linux server/distribution. ⚠️ This may change the OS, accounts, services or submitted workloads; have approval/rollback.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 13. sudo apt-get install -y pacemaker corosync pcs resource-agents fence-agents

```bash
sudo apt-get install -y pacemaker corosync pcs resource-agents fence-agents
```

**What it does:** Uses the distro's package manager to install selected packages. This can modify a production server.

**How to read the command:** `apt-get` is the utility. Options: `-y` means a program-specific setting; check its local `--help`.

**Expected output:** Package versions, dependency plan, downloads or installed/updated packages.

**Before running:** Check that you're on the correct Linux server/distribution. ⚠️ This may change the OS, accounts, services or submitted workloads; have approval/rollback.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 14. sudo systemctl enable --now pcsd

```bash
sudo systemctl enable --now pcsd
```

**What it does:** Uses systemd to enable the selected service or inspect its state.

**How to read the command:** `systemctl` is the utility. Options: `--now` means a program-specific setting; check its local `--help`.

**Expected output:** The service's state or an operation acknowledgment.

**Before running:** Check that you're on the correct Linux server/distribution. ⚠️ This may change the OS, accounts, services or submitted workloads; have approval/rollback.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 15. sudo pcs status

```bash
sudo pcs status
```

**What it does:** Shows Pacemaker HA nodes, active resources, fail counts and fencing summary.

**How to read the command:** `pcs` is the utility. Remaining words specify the file, service, device, user, host or action.

**Expected output:** Which node owns each service and whether any nodes/resources are failed.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 16. sudo pcs quorum status

```bash
sudo pcs quorum status
```

**What it does:** Asks Corosync/Pacemaker whether enough voting members are online to safely operate the HA cluster.

**How to read the command:** `pcs` is the utility. Remaining words specify the file, service, device, user, host or action.

**Expected output:** Expected votes, present votes and whether quorum exists.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 17. sudo pcs stonith config

```bash
sudo pcs stonith config
```

**What it does:** Shows configured fencing devices that can safely isolate a failed HA node to prevent split brain.

**How to read the command:** `pcs` is the utility. Remaining words specify the file, service, device, user, host or action.

**Expected output:** Fencing agent names and target mappings; verify they actually work.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 18. sudo pcs status --full

```bash
sudo pcs status --full
```

**What it does:** Shows Pacemaker HA nodes, active resources, fail counts and fencing summary.

**How to read the command:** `pcs` is the utility. Options: `--full` means a program-specific setting; check its local `--help`.

**Expected output:** Which node owns each service and whether any nodes/resources are failed.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 19. sudo pcs constraint config

```bash
sudo pcs constraint config
```

**What it does:** Inspects Pacemaker cluster resources, quorum and constraints, or changes HA state depending on verb.

**How to read the command:** `pcs` is the utility. Remaining words specify the file, service, device, user, host or action.

**Expected output:** Cluster nodes/resource state, constraints or confirmation of changes.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 20. sudo journalctl -u corosync -n 150 --no-pager

```bash
sudo journalctl -u corosync -n 150 --no-pager
```

**What it does:** Opens the systemd journal (Linux's central log database) and displays messages from service `corosync`. It only reads logs; it does not restart or fix anything.

**How to read the command:** `journalctl` is the utility. Options: `-u` means filter logs to this systemd service (journalctl); `-n` means display only N lines; namespace in kubectl; `--no-pager` means write directly to terminal instead of using pager.

**Expected output:** Lines with timestamps, hostname, component and message. Find the first ERROR around the incident time, then read lines immediately before it.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Use `journalctl --list-boots` if the problem happened before a reboot.

## 21. sudo journalctl -u pacemaker -n 150 --no-pager

```bash
sudo journalctl -u pacemaker -n 150 --no-pager
```

**What it does:** Opens the systemd journal (Linux's central log database) and displays messages from service `pacemaker`. It only reads logs; it does not restart or fix anything.

**How to read the command:** `journalctl` is the utility. Options: `-u` means filter logs to this systemd service (journalctl); `-n` means display only N lines; namespace in kubectl; `--no-pager` means write directly to terminal instead of using pager.

**Expected output:** Lines with timestamps, hostname, component and message. Find the first ERROR around the incident time, then read lines immediately before it.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Use `journalctl --list-boots` if the problem happened before a reboot.

## 22. sudo pcs cluster status

```bash
sudo pcs cluster status
```

**What it does:** Inspects Pacemaker cluster resources, quorum and constraints, or changes HA state depending on verb.

**How to read the command:** `pcs` is the utility. Remaining words specify the file, service, device, user, host or action.

**Expected output:** Cluster nodes/resource state, constraints or confirmation of changes.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 23. sudo pcs node status

```bash
sudo pcs node status
```

**What it does:** Inspects Pacemaker cluster resources, quorum and constraints, or changes HA state depending on verb.

**How to read the command:** `pcs` is the utility. Remaining words specify the file, service, device, user, host or action.

**Expected output:** Cluster nodes/resource state, constraints or confirmation of changes.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 24. sudo pcs resource status

```bash
sudo pcs resource status
```

**What it does:** Inspects Pacemaker cluster resources, quorum and constraints, or changes HA state depending on verb.

**How to read the command:** `pcs` is the utility. Remaining words specify the file, service, device, user, host or action.

**Expected output:** Cluster nodes/resource state, constraints or confirmation of changes.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 25. sudo pcs resource config

```bash
sudo pcs resource config
```

**What it does:** Inspects Pacemaker cluster resources, quorum and constraints, or changes HA state depending on verb.

**How to read the command:** `pcs` is the utility. Remaining words specify the file, service, device, user, host or action.

**Expected output:** Cluster nodes/resource state, constraints or confirmation of changes.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 26. sudo crm_verify -L -V

```bash
sudo crm_verify -L -V
```

**What it does:** Checks HA cluster configuration for syntax and logical consistency.

**How to read the command:** `crm_verify` is the utility. Options: `-L` means a program-specific setting; check its local `--help`; `-V` means a program-specific setting; check its local `--help`.

**Expected output:** Cluster health summary or warnings about invalid/failing resources.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

