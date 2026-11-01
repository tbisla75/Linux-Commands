# Linux commands explained in plain English: 04-LINUX-HA-CLUSTER-PACEMAKER.md

**Offline incident reference.** Find the exact command, see what it does, why to run it, how to interpret the results, and whether it can change your host. Some commands need optional packages or root permissions. Original: [04-LINUX-HA-CLUSTER-PACEMAKER.md](../04-LINUX-HA-CLUSTER-PACEMAKER.md).

## 1. hostnamectl

```bash
hostnamectl
```

**What it does:** Shows the hostname, operating system, CPU architecture and kernel running on this machine.

**How to read the command:** `hostnamectl` is the utility. Remaining words specify the file, service, device, user, host or action.

**Expected output:** A summary showing the host name, OS, kernel and virtualization platform.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 2. timedatectl status

```bash
timedatectl status
```

**What it does:** Checks time, timezone and whether system time is synchronized. Time drift can break TLS, authentication and cluster quorum.

**How to read the command:** `timedatectl` is the utility. Remaining words specify the file, service, device, user, host or action.

**Expected output:** Local/UTC time, timezone and NTP synchronization status.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 3. ip route

```bash
ip route
```

**What it does:** Displays the Linux routing table or the path the kernel would choose to reach an IP.

**How to read the command:** `ip` is the utility. Remaining words specify the file, service, device, user, host or action.

**Expected output:** Interfaces/IPs, link state or selected gateway and route.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 4. ss -tulpn

```bash
ss -tulpn
```

**What it does:** Shows network connections and which ports services are listening on.

**How to read the command:** `ss` is the utility. Options: `-tulpn` means a program-specific setting; check its local `--help`.

**Expected output:** Protocol, local address/port, peer and optionally PID/process owner.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 5. sudo pcs status

```bash
sudo pcs status
```

**What it does:** Shows Pacemaker HA nodes, active resources, fail counts and fencing summary.

**How to read the command:** `pcs` is the utility. Remaining words specify the file, service, device, user, host or action.

**Expected output:** Which node owns each service and whether any nodes/resources are failed.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 6. sudo pcs quorum status

```bash
sudo pcs quorum status
```

**What it does:** Asks Corosync/Pacemaker whether enough voting members are online to safely operate the HA cluster.

**How to read the command:** `pcs` is the utility. Remaining words specify the file, service, device, user, host or action.

**Expected output:** Expected votes, present votes and whether quorum exists.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 7. sudo crm_mon -1

```bash
sudo crm_mon -1
```

**What it does:** Displays a Pacemaker cluster health snapshot.

**How to read the command:** `crm_mon` is the utility. Options: `-1` means a program-specific setting; check its local `--help`.

**Expected output:** Cluster health summary or warnings about invalid/failing resources.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 8. sudo pcs cluster status

```bash
sudo pcs cluster status
```

**What it does:** Inspects Pacemaker cluster resources, quorum and constraints, or changes HA state depending on verb.

**How to read the command:** `pcs` is the utility. Remaining words specify the file, service, device, user, host or action.

**Expected output:** Cluster nodes/resource state, constraints or confirmation of changes.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 9. sudo pcs status --full

```bash
sudo pcs status --full
```

**What it does:** Shows Pacemaker HA nodes, active resources, fail counts and fencing summary.

**How to read the command:** `pcs` is the utility. Options: `--full` means a program-specific setting; check its local `--help`.

**Expected output:** Which node owns each service and whether any nodes/resources are failed.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 10. sudo pcs resource status

```bash
sudo pcs resource status
```

**What it does:** Inspects Pacemaker cluster resources, quorum and constraints, or changes HA state depending on verb.

**How to read the command:** `pcs` is the utility. Remaining words specify the file, service, device, user, host or action.

**Expected output:** Cluster nodes/resource state, constraints or confirmation of changes.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 11. sudo pcs resource config

```bash
sudo pcs resource config
```

**What it does:** Inspects Pacemaker cluster resources, quorum and constraints, or changes HA state depending on verb.

**How to read the command:** `pcs` is the utility. Remaining words specify the file, service, device, user, host or action.

**Expected output:** Cluster nodes/resource state, constraints or confirmation of changes.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 12. sudo pcs stonith config

```bash
sudo pcs stonith config
```

**What it does:** Shows configured fencing devices that can safely isolate a failed HA node to prevent split brain.

**How to read the command:** `pcs` is the utility. Remaining words specify the file, service, device, user, host or action.

**Expected output:** Fencing agent names and target mappings; verify they actually work.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 13. sudo pcs quorum status

```bash
sudo pcs quorum status
```

**What it does:** Asks Corosync/Pacemaker whether enough voting members are online to safely operate the HA cluster.

**How to read the command:** `pcs` is the utility. Remaining words specify the file, service, device, user, host or action.

**Expected output:** Expected votes, present votes and whether quorum exists.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 14. sudo journalctl -u pacemaker -n 100 --no-pager

```bash
sudo journalctl -u pacemaker -n 100 --no-pager
```

**What it does:** Opens the systemd journal (Linux's central log database) and displays messages from service `pacemaker`. It only reads logs; it does not restart or fix anything.

**How to read the command:** `journalctl` is the utility. Options: `-u` means filter logs to this systemd service (journalctl); `-n` means display only N lines; namespace in kubectl; `--no-pager` means write directly to terminal instead of using pager.

**Expected output:** Lines with timestamps, hostname, component and message. Find the first ERROR around the incident time, then read lines immediately before it.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Use `journalctl --list-boots` if the problem happened before a reboot.

## 15. sudo journalctl -u corosync -n 100 --no-pager

```bash
sudo journalctl -u corosync -n 100 --no-pager
```

**What it does:** Opens the systemd journal (Linux's central log database) and displays messages from service `corosync`. It only reads logs; it does not restart or fix anything.

**How to read the command:** `journalctl` is the utility. Options: `-u` means filter logs to this systemd service (journalctl); `-n` means display only N lines; namespace in kubectl; `--no-pager` means write directly to terminal instead of using pager.

**Expected output:** Lines with timestamps, hostname, component and message. Find the first ERROR around the incident time, then read lines immediately before it.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Use `journalctl --list-boots` if the problem happened before a reboot.

## 16. sudo pcs resource relations

```bash
sudo pcs resource relations
```

**What it does:** Inspects Pacemaker cluster resources, quorum and constraints, or changes HA state depending on verb.

**How to read the command:** `pcs` is the utility. Remaining words specify the file, service, device, user, host or action.

**Expected output:** Cluster nodes/resource state, constraints or confirmation of changes.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 17. sudo pcs constraint config

```bash
sudo pcs constraint config
```

**What it does:** Inspects Pacemaker cluster resources, quorum and constraints, or changes HA state depending on verb.

**How to read the command:** `pcs` is the utility. Remaining words specify the file, service, device, user, host or action.

**Expected output:** Cluster nodes/resource state, constraints or confirmation of changes.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 18. sudo pcs node status

```bash
sudo pcs node status
```

**What it does:** Inspects Pacemaker cluster resources, quorum and constraints, or changes HA state depending on verb.

**How to read the command:** `pcs` is the utility. Remaining words specify the file, service, device, user, host or action.

**Expected output:** Cluster nodes/resource state, constraints or confirmation of changes.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 19. sudo crm_verify -L -V

```bash
sudo crm_verify -L -V
```

**What it does:** Checks HA cluster configuration for syntax and logical consistency.

**How to read the command:** `crm_verify` is the utility. Options: `-L` means a program-specific setting; check its local `--help`; `-V` means a program-specific setting; check its local `--help`.

**Expected output:** Cluster health summary or warnings about invalid/failing resources.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

