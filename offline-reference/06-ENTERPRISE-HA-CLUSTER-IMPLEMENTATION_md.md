# Offline explanations: 06-ENTERPRISE-HA-CLUSTER-IMPLEMENTATION.md

Source: [06-ENTERPRISE-HA-CLUSTER-IMPLEMENTATION.md](../06-ENTERPRISE-HA-CLUSTER-IMPLEMENTATION.md). This is a **local, internet-independent** explanation of every terminal example in the runbook, with syntax, prerequisites and operational risk. Validate against actual installed releases.

## 1. sudo pcs status --full

```bash
sudo pcs status --full
```

**What it does:** Inspect Pacemaker cluster, resource, quorum or fencing state.

**Complete command form:** `pcs` is the executable; the remaining words are targets/subcommands and options. Options: `--full` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Inspect Pacemaker cluster, resource, quorum or fencing state. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 2. sudo pcs quorum status

```bash
sudo pcs quorum status
```

**What it does:** Inspect Pacemaker cluster, resource, quorum or fencing state.

**Complete command form:** `pcs` is the executable; the remaining words are targets/subcommands and options. No named options.. Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Inspect Pacemaker cluster, resource, quorum or fencing state. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 3. sudo pcs stonith config

```bash
sudo pcs stonith config
```

**What it does:** Inspect Pacemaker cluster, resource, quorum or fencing state.

**Complete command form:** `pcs` is the executable; the remaining words are targets/subcommands and options. No named options.. Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Inspect Pacemaker cluster, resource, quorum or fencing state. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 4. sudo pcs resource status

```bash
sudo pcs resource status
```

**What it does:** Inspect Pacemaker cluster, resource, quorum or fencing state.

**Complete command form:** `pcs` is the executable; the remaining words are targets/subcommands and options. No named options.. Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Inspect Pacemaker cluster, resource, quorum or fencing state. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 5. sudo pcs constraint config

```bash
sudo pcs constraint config
```

**What it does:** Inspect Pacemaker cluster, resource, quorum or fencing state.

**Complete command form:** `pcs` is the executable; the remaining words are targets/subcommands and options. No named options.. Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Inspect Pacemaker cluster, resource, quorum or fencing state. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 6. uptime

```bash
uptime
```

**What it does:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics.

**Complete command form:** `uptime` is the executable; the remaining words are targets/subcommands and options. No named options.. Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 7. free -h

```bash
free -h
```

**What it does:** Read physical memory and swap statistics.

**Complete command form:** `free` is the executable; the remaining words are targets/subcommands and options. Options: `-h` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Read physical memory and swap statistics. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 8. df -hT

```bash
df -hT
```

**What it does:** Report available disk blocks/inodes.

**Complete command form:** `df` is the executable; the remaining words are targets/subcommands and options. Options: `-hT` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Report available disk blocks/inodes. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 9. sudo dnf install -y pcs pacemaker corosync fence-agents-all

```bash
sudo dnf install -y pcs pacemaker corosync fence-agents-all
```

**What it does:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics.

**Complete command form:** `dnf` is the executable; the remaining words are targets/subcommands and options. Options: `-y` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟠 Action may modify host, credentials or allocate batch resources; require approval and rollback.

## 10. sudo systemctl enable --now pcsd

```bash
sudo systemctl enable --now pcsd
```

**What it does:** Inspect/change systemd unit state.

**Complete command form:** `systemctl` is the executable; the remaining words are targets/subcommands and options. Options: `--now` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Inspect/change systemd unit state. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 11. sudo pcs status

```bash
sudo pcs status
```

**What it does:** Inspect Pacemaker cluster, resource, quorum or fencing state.

**Complete command form:** `pcs` is the executable; the remaining words are targets/subcommands and options. No named options.. Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Inspect Pacemaker cluster, resource, quorum or fencing state. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 12. sudo apt-get update

```bash
sudo apt-get update
```

**What it does:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics.

**Complete command form:** `apt-get` is the executable; the remaining words are targets/subcommands and options. No named options.. Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 13. sudo apt-get install -y pacemaker corosync pcs resource-agents fence-agents

```bash
sudo apt-get install -y pacemaker corosync pcs resource-agents fence-agents
```

**What it does:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics.

**Complete command form:** `apt-get` is the executable; the remaining words are targets/subcommands and options. Options: `-y` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟠 Action may modify host, credentials or allocate batch resources; require approval and rollback.

## 14. sudo systemctl enable --now pcsd

```bash
sudo systemctl enable --now pcsd
```

**What it does:** Inspect/change systemd unit state.

**Complete command form:** `systemctl` is the executable; the remaining words are targets/subcommands and options. Options: `--now` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Inspect/change systemd unit state. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 15. sudo pcs status

```bash
sudo pcs status
```

**What it does:** Inspect Pacemaker cluster, resource, quorum or fencing state.

**Complete command form:** `pcs` is the executable; the remaining words are targets/subcommands and options. No named options.. Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Inspect Pacemaker cluster, resource, quorum or fencing state. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 16. sudo pcs quorum status

```bash
sudo pcs quorum status
```

**What it does:** Inspect Pacemaker cluster, resource, quorum or fencing state.

**Complete command form:** `pcs` is the executable; the remaining words are targets/subcommands and options. No named options.. Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Inspect Pacemaker cluster, resource, quorum or fencing state. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 17. sudo pcs stonith config

```bash
sudo pcs stonith config
```

**What it does:** Inspect Pacemaker cluster, resource, quorum or fencing state.

**Complete command form:** `pcs` is the executable; the remaining words are targets/subcommands and options. No named options.. Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Inspect Pacemaker cluster, resource, quorum or fencing state. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 18. sudo pcs status --full

```bash
sudo pcs status --full
```

**What it does:** Inspect Pacemaker cluster, resource, quorum or fencing state.

**Complete command form:** `pcs` is the executable; the remaining words are targets/subcommands and options. Options: `--full` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Inspect Pacemaker cluster, resource, quorum or fencing state. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 19. sudo pcs constraint config

```bash
sudo pcs constraint config
```

**What it does:** Inspect Pacemaker cluster, resource, quorum or fencing state.

**Complete command form:** `pcs` is the executable; the remaining words are targets/subcommands and options. No named options.. Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Inspect Pacemaker cluster, resource, quorum or fencing state. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 20. sudo journalctl -u corosync -n 150 --no-pager

```bash
sudo journalctl -u corosync -n 150 --no-pager
```

**What it does:** Read service/kernel journal logs filtered by arguments.

**Complete command form:** `journalctl` is the executable; the remaining words are targets/subcommands and options. Options: `-u` (confirm tool-specific help); `-n` (confirm tool-specific help); `--no-pager` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Read service/kernel journal logs filtered by arguments. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 21. sudo journalctl -u pacemaker -n 150 --no-pager

```bash
sudo journalctl -u pacemaker -n 150 --no-pager
```

**What it does:** Read service/kernel journal logs filtered by arguments.

**Complete command form:** `journalctl` is the executable; the remaining words are targets/subcommands and options. Options: `-u` (confirm tool-specific help); `-n` (confirm tool-specific help); `--no-pager` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Read service/kernel journal logs filtered by arguments. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 22. sudo pcs cluster status

```bash
sudo pcs cluster status
```

**What it does:** Inspect Pacemaker cluster, resource, quorum or fencing state.

**Complete command form:** `pcs` is the executable; the remaining words are targets/subcommands and options. No named options.. Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Inspect Pacemaker cluster, resource, quorum or fencing state. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 23. sudo pcs node status

```bash
sudo pcs node status
```

**What it does:** Inspect Pacemaker cluster, resource, quorum or fencing state.

**Complete command form:** `pcs` is the executable; the remaining words are targets/subcommands and options. No named options.. Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Inspect Pacemaker cluster, resource, quorum or fencing state. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 24. sudo pcs resource status

```bash
sudo pcs resource status
```

**What it does:** Inspect Pacemaker cluster, resource, quorum or fencing state.

**Complete command form:** `pcs` is the executable; the remaining words are targets/subcommands and options. No named options.. Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Inspect Pacemaker cluster, resource, quorum or fencing state. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 25. sudo pcs resource config

```bash
sudo pcs resource config
```

**What it does:** Inspect Pacemaker cluster, resource, quorum or fencing state.

**Complete command form:** `pcs` is the executable; the remaining words are targets/subcommands and options. No named options.. Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Inspect Pacemaker cluster, resource, quorum or fencing state. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 26. sudo crm_verify -L -V

```bash
sudo crm_verify -L -V
```

**What it does:** Check Pacemaker cluster configuration constraints and integrity.

**Complete command form:** `crm_verify` is the executable; the remaining words are targets/subcommands and options. Options: `-L` (confirm tool-specific help); `-V` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Check Pacemaker cluster configuration constraints and integrity. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

