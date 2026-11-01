# Offline command / configuration reference: `06-ENTERPRISE-HA-CLUSTER-IMPLEMENTATION.md`

Generated from repository source by `tools/build_offline_reference.py`. **26 items**. This copy works offline. No commands were executed.

⚠️ **Version-aware reference, not a substitute for vendor docs.** Every individual command is preserved with purpose, flags, placeholders, expected output and risk. Ambiguous flags are marked as command-specific. Always verify flags against your installed CLI.

**Original file:** [`06-ENTERPRISE-HA-CLUSTER-IMPLEMENTATION.md`](../06-ENTERPRISE-HA-CLUSTER-IMPLEMENTATION.md)

### 1. `sudo pcs status --full`

**Source line:** 131  |  **Tool/purpose:** Pacemaker HA manager  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
sudo pcs status --full
```

**What it does:** Inspect or alter cluster membership, quorum, fencing and resource placement.

**Syntax:** sudo pcs status --full. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `--full` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Inspect or alter cluster membership, quorum, fencing and resource placement. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `Pacemaker HA manager` vendor manual or installed `--help`; [online vendor reference](https://clusterlabs.org/).

### 2. `sudo pcs quorum status`

**Source line:** 132  |  **Tool/purpose:** Pacemaker HA manager  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
sudo pcs quorum status
```

**What it does:** Inspect or alter cluster membership, quorum, fencing and resource placement.

**Syntax:** sudo pcs quorum status. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Inspect or alter cluster membership, quorum, fencing and resource placement. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `Pacemaker HA manager` vendor manual or installed `--help`; [online vendor reference](https://clusterlabs.org/).

### 3. `sudo pcs stonith config`

**Source line:** 133  |  **Tool/purpose:** Pacemaker HA manager  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
sudo pcs stonith config
```

**What it does:** Inspect or alter cluster membership, quorum, fencing and resource placement.

**Syntax:** sudo pcs stonith config. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Inspect or alter cluster membership, quorum, fencing and resource placement. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `Pacemaker HA manager` vendor manual or installed `--help`; [online vendor reference](https://clusterlabs.org/).

### 4. `sudo pcs resource status`

**Source line:** 134  |  **Tool/purpose:** Pacemaker HA manager  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
sudo pcs resource status
```

**What it does:** Inspect or alter cluster membership, quorum, fencing and resource placement.

**Syntax:** sudo pcs resource status. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Inspect or alter cluster membership, quorum, fencing and resource placement. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `Pacemaker HA manager` vendor manual or installed `--help`; [online vendor reference](https://clusterlabs.org/).

### 5. `sudo pcs constraint config`

**Source line:** 135  |  **Tool/purpose:** Pacemaker HA manager  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
sudo pcs constraint config
```

**What it does:** Inspect or alter cluster membership, quorum, fencing and resource placement.

**Syntax:** sudo pcs constraint config. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Inspect or alter cluster membership, quorum, fencing and resource placement. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `Pacemaker HA manager` vendor manual or installed `--help`; [online vendor reference](https://clusterlabs.org/).

### 6. `uptime`

**Source line:** 136  |  **Tool/purpose:** uptime operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
uptime
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** uptime. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `uptime operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 7. `free -h`

**Source line:** 137  |  **Tool/purpose:** free operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
free -h
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** free -h. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-h` — Human-readable units for storage tools; help in other commands.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `free operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 8. `df -hT`

**Source line:** 138  |  **Tool/purpose:** Filesystem capacity  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
df -hT
```

**What it does:** Display filesystem usage; bytes with -h or inodes with -i.

**Syntax:** df -hT. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-hT` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Display filesystem usage; bytes with -h or inodes with -i. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `Filesystem capacity` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/man1/df.1.html).

### 9. `sudo dnf install -y pcs pacemaker corosync fence-agents-all`

**Source line:** 173  |  **Tool/purpose:** RHEL-family package manager  |  **Impact:** **CHANGE / POSSIBLY MUTATING**

**Exact command:**

```bash
sudo dnf install -y pcs pacemaker corosync fence-agents-all
```

**What it does:** Install/update/query packages using configured RPM repositories.

**Syntax:** sudo dnf install -y pcs. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-y` — Automatically accept package manager prompts; risky on production.
**Safety/rollback:** Check subcommand and flags; requires change review and appropriate access.
**Expected result:** Install/update/query packages using configured RPM repositories. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `RHEL-family package manager` vendor manual or installed `--help`; [online vendor reference](https://dnf.readthedocs.io/).

### 10. `sudo systemctl enable --now pcsd`

**Source line:** 174  |  **Tool/purpose:** systemd unit manager  |  **Impact:** **CHANGE / POSSIBLY MUTATING**

**Exact command:**

```bash
sudo systemctl enable --now pcsd
```

**What it does:** Inspect or modify systemd-managed services and units.

**Syntax:** sudo systemctl enable --now pcsd. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `--now` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Safety/rollback:** Check subcommand and flags; requires change review and appropriate access.
**Expected result:** Inspect or modify systemd-managed services and units. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `systemd unit manager` vendor manual or installed `--help`; [online vendor reference](https://www.freedesktop.org/software/systemd/man/latest/systemctl.html).

### 11. `sudo pcs status`

**Source line:** 175  |  **Tool/purpose:** Pacemaker HA manager  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
sudo pcs status
```

**What it does:** Inspect or alter cluster membership, quorum, fencing and resource placement.

**Syntax:** sudo pcs status. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Inspect or alter cluster membership, quorum, fencing and resource placement. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `Pacemaker HA manager` vendor manual or installed `--help`; [online vendor reference](https://clusterlabs.org/).

### 12. `sudo apt-get update`

**Source line:** 191  |  **Tool/purpose:** Debian/Ubuntu package manager  |  **Impact:** **CHANGE / POSSIBLY MUTATING**

**Exact command:**

```bash
sudo apt-get update
```

**What it does:** Update package indexes or install/upgrade/remove packages depending on subcommand.

**Syntax:** sudo apt-get update. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Check subcommand and flags; requires change review and appropriate access.
**Expected result:** Update package indexes or install/upgrade/remove packages depending on subcommand. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `Debian/Ubuntu package manager` vendor manual or installed `--help`; [online vendor reference](https://manpages.debian.org/).

### 13. `sudo apt-get install -y pacemaker corosync pcs resource-agents fence-agents`

**Source line:** 192  |  **Tool/purpose:** Debian/Ubuntu package manager  |  **Impact:** **CHANGE / POSSIBLY MUTATING**

**Exact command:**

```bash
sudo apt-get install -y pacemaker corosync pcs resource-agents fence-agents
```

**What it does:** Update package indexes or install/upgrade/remove packages depending on subcommand.

**Syntax:** sudo apt-get install -y pacemaker. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-y` — Automatically accept package manager prompts; risky on production.
**Safety/rollback:** Check subcommand and flags; requires change review and appropriate access.
**Expected result:** Update package indexes or install/upgrade/remove packages depending on subcommand. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `Debian/Ubuntu package manager` vendor manual or installed `--help`; [online vendor reference](https://manpages.debian.org/).

### 14. `sudo systemctl enable --now pcsd`

**Source line:** 193  |  **Tool/purpose:** systemd unit manager  |  **Impact:** **CHANGE / POSSIBLY MUTATING**

**Exact command:**

```bash
sudo systemctl enable --now pcsd
```

**What it does:** Inspect or modify systemd-managed services and units.

**Syntax:** sudo systemctl enable --now pcsd. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `--now` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Safety/rollback:** Check subcommand and flags; requires change review and appropriate access.
**Expected result:** Inspect or modify systemd-managed services and units. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `systemd unit manager` vendor manual or installed `--help`; [online vendor reference](https://www.freedesktop.org/software/systemd/man/latest/systemctl.html).

### 15. `sudo pcs status`

**Source line:** 194  |  **Tool/purpose:** Pacemaker HA manager  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
sudo pcs status
```

**What it does:** Inspect or alter cluster membership, quorum, fencing and resource placement.

**Syntax:** sudo pcs status. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Inspect or alter cluster membership, quorum, fencing and resource placement. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `Pacemaker HA manager` vendor manual or installed `--help`; [online vendor reference](https://clusterlabs.org/).

### 16. `sudo pcs quorum status`

**Source line:** 211  |  **Tool/purpose:** Pacemaker HA manager  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
sudo pcs quorum status
```

**What it does:** Inspect or alter cluster membership, quorum, fencing and resource placement.

**Syntax:** sudo pcs quorum status. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Inspect or alter cluster membership, quorum, fencing and resource placement. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `Pacemaker HA manager` vendor manual or installed `--help`; [online vendor reference](https://clusterlabs.org/).

### 17. `sudo pcs stonith config`

**Source line:** 212  |  **Tool/purpose:** Pacemaker HA manager  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
sudo pcs stonith config
```

**What it does:** Inspect or alter cluster membership, quorum, fencing and resource placement.

**Syntax:** sudo pcs stonith config. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Inspect or alter cluster membership, quorum, fencing and resource placement. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `Pacemaker HA manager` vendor manual or installed `--help`; [online vendor reference](https://clusterlabs.org/).

### 18. `sudo pcs status --full`

**Source line:** 213  |  **Tool/purpose:** Pacemaker HA manager  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
sudo pcs status --full
```

**What it does:** Inspect or alter cluster membership, quorum, fencing and resource placement.

**Syntax:** sudo pcs status --full. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `--full` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Inspect or alter cluster membership, quorum, fencing and resource placement. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `Pacemaker HA manager` vendor manual or installed `--help`; [online vendor reference](https://clusterlabs.org/).

### 19. `sudo pcs constraint config`

**Source line:** 214  |  **Tool/purpose:** Pacemaker HA manager  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
sudo pcs constraint config
```

**What it does:** Inspect or alter cluster membership, quorum, fencing and resource placement.

**Syntax:** sudo pcs constraint config. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Inspect or alter cluster membership, quorum, fencing and resource placement. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `Pacemaker HA manager` vendor manual or installed `--help`; [online vendor reference](https://clusterlabs.org/).

### 20. `sudo journalctl -u corosync -n 150 --no-pager`

**Source line:** 215  |  **Tool/purpose:** systemd journal inspection  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
sudo journalctl -u corosync -n 150 --no-pager
```

**What it does:** Filter systemd logs for the specified unit.

**Syntax:** sudo journalctl -u corosync -n. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-u` — Filter journal by systemd unit; in other tools may mean user.
**Option:** `-n` — Namespace for kubectl/oc, number of lines for journalctl/tail, or another command-specific argument.
**Option:** `--no-pager` — Print output directly rather than opening an interactive pager.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Filter systemd logs for the specified unit. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `systemd journal inspection` vendor manual or installed `--help`; [online vendor reference](https://www.freedesktop.org/software/systemd/man/latest/journalctl.html).

### 21. `sudo journalctl -u pacemaker -n 150 --no-pager`

**Source line:** 216  |  **Tool/purpose:** systemd journal inspection  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
sudo journalctl -u pacemaker -n 150 --no-pager
```

**What it does:** Filter systemd logs for the specified unit.

**Syntax:** sudo journalctl -u pacemaker -n. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-u` — Filter journal by systemd unit; in other tools may mean user.
**Option:** `-n` — Namespace for kubectl/oc, number of lines for journalctl/tail, or another command-specific argument.
**Option:** `--no-pager` — Print output directly rather than opening an interactive pager.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Filter systemd logs for the specified unit. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `systemd journal inspection` vendor manual or installed `--help`; [online vendor reference](https://www.freedesktop.org/software/systemd/man/latest/journalctl.html).

### 22. `sudo pcs cluster status`

**Source line:** 235  |  **Tool/purpose:** Pacemaker HA manager  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
sudo pcs cluster status
```

**What it does:** Inspect or alter cluster membership, quorum, fencing and resource placement.

**Syntax:** sudo pcs cluster status. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Inspect or alter cluster membership, quorum, fencing and resource placement. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `Pacemaker HA manager` vendor manual or installed `--help`; [online vendor reference](https://clusterlabs.org/).

### 23. `sudo pcs node status`

**Source line:** 236  |  **Tool/purpose:** Pacemaker HA manager  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
sudo pcs node status
```

**What it does:** Inspect or alter cluster membership, quorum, fencing and resource placement.

**Syntax:** sudo pcs node status. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Inspect or alter cluster membership, quorum, fencing and resource placement. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `Pacemaker HA manager` vendor manual or installed `--help`; [online vendor reference](https://clusterlabs.org/).

### 24. `sudo pcs resource status`

**Source line:** 237  |  **Tool/purpose:** Pacemaker HA manager  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
sudo pcs resource status
```

**What it does:** Inspect or alter cluster membership, quorum, fencing and resource placement.

**Syntax:** sudo pcs resource status. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Inspect or alter cluster membership, quorum, fencing and resource placement. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `Pacemaker HA manager` vendor manual or installed `--help`; [online vendor reference](https://clusterlabs.org/).

### 25. `sudo pcs resource config`

**Source line:** 238  |  **Tool/purpose:** Pacemaker HA manager  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
sudo pcs resource config
```

**What it does:** Inspect or alter cluster membership, quorum, fencing and resource placement.

**Syntax:** sudo pcs resource config. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Inspect or alter cluster membership, quorum, fencing and resource placement. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `Pacemaker HA manager` vendor manual or installed `--help`; [online vendor reference](https://clusterlabs.org/).

### 26. `sudo crm_verify -L -V`

**Source line:** 239  |  **Tool/purpose:** crm_verify operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
sudo crm_verify -L -V
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** sudo crm_verify -L -V. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-L` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Option:** `-V` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `crm_verify operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

