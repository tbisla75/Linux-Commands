# Offline command / configuration reference: `offline-simple/04-LINUX-HA-CLUSTER-PACEMAKER_md.md`

Generated from repository source by `tools/build_offline_reference.py`. **19 items**. This copy works offline. No commands were executed.

⚠️ **Version-aware reference, not a substitute for vendor docs.** Every individual command is preserved with purpose, flags, placeholders, expected output and risk. Ambiguous flags are marked as command-specific. Always verify flags against your installed CLI.

**Original file:** [`offline-simple/04-LINUX-HA-CLUSTER-PACEMAKER_md.md`](../offline-simple/04-LINUX-HA-CLUSTER-PACEMAKER_md.md)

### 1. `hostnamectl`

**Source line:** 8  |  **Tool/purpose:** hostnamectl operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
hostnamectl
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** hostnamectl. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `hostnamectl operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 2. `timedatectl status`

**Source line:** 24  |  **Tool/purpose:** timedatectl operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
timedatectl status
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** timedatectl status. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `timedatectl operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 3. `ip route`

**Source line:** 40  |  **Tool/purpose:** Linux network configuration  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
ip route
```

**What it does:** Read or change Linux addresses, links, routes and neighbor information.

**Syntax:** ip route. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Read or change Linux addresses, links, routes and neighbor information. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `Linux network configuration` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/man8/ip.8.html).

### 4. `ss -tulpn`

**Source line:** 56  |  **Tool/purpose:** Socket inspection  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
ss -tulpn
```

**What it does:** Show listening and active network sockets, protocols and owning processes when permitted.

**Syntax:** ss -tulpn. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-tulpn` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Show listening and active network sockets, protocols and owning processes when permitted. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `Socket inspection` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/man8/ss.8.html).

### 5. `sudo pcs status`

**Source line:** 72  |  **Tool/purpose:** Pacemaker HA manager  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
sudo pcs status
```

**What it does:** Inspect or alter cluster membership, quorum, fencing and resource placement.

**Syntax:** sudo pcs status. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Inspect or alter cluster membership, quorum, fencing and resource placement. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `Pacemaker HA manager` vendor manual or installed `--help`; [online vendor reference](https://clusterlabs.org/).

### 6. `sudo pcs quorum status`

**Source line:** 88  |  **Tool/purpose:** Pacemaker HA manager  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
sudo pcs quorum status
```

**What it does:** Inspect or alter cluster membership, quorum, fencing and resource placement.

**Syntax:** sudo pcs quorum status. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Inspect or alter cluster membership, quorum, fencing and resource placement. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `Pacemaker HA manager` vendor manual or installed `--help`; [online vendor reference](https://clusterlabs.org/).

### 7. `sudo crm_mon -1`

**Source line:** 104  |  **Tool/purpose:** crm_mon operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
sudo crm_mon -1
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** sudo crm_mon -1. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-1` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `crm_mon operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 8. `sudo pcs cluster status`

**Source line:** 120  |  **Tool/purpose:** Pacemaker HA manager  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
sudo pcs cluster status
```

**What it does:** Inspect or alter cluster membership, quorum, fencing and resource placement.

**Syntax:** sudo pcs cluster status. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Inspect or alter cluster membership, quorum, fencing and resource placement. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `Pacemaker HA manager` vendor manual or installed `--help`; [online vendor reference](https://clusterlabs.org/).

### 9. `sudo pcs status --full`

**Source line:** 136  |  **Tool/purpose:** Pacemaker HA manager  |  **Impact:** **DIAGNOSTIC / REVIEW**

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

### 10. `sudo pcs resource status`

**Source line:** 152  |  **Tool/purpose:** Pacemaker HA manager  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
sudo pcs resource status
```

**What it does:** Inspect or alter cluster membership, quorum, fencing and resource placement.

**Syntax:** sudo pcs resource status. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Inspect or alter cluster membership, quorum, fencing and resource placement. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `Pacemaker HA manager` vendor manual or installed `--help`; [online vendor reference](https://clusterlabs.org/).

### 11. `sudo pcs resource config`

**Source line:** 168  |  **Tool/purpose:** Pacemaker HA manager  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
sudo pcs resource config
```

**What it does:** Inspect or alter cluster membership, quorum, fencing and resource placement.

**Syntax:** sudo pcs resource config. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Inspect or alter cluster membership, quorum, fencing and resource placement. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `Pacemaker HA manager` vendor manual or installed `--help`; [online vendor reference](https://clusterlabs.org/).

### 12. `sudo pcs stonith config`

**Source line:** 184  |  **Tool/purpose:** Pacemaker HA manager  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
sudo pcs stonith config
```

**What it does:** Inspect or alter cluster membership, quorum, fencing and resource placement.

**Syntax:** sudo pcs stonith config. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Inspect or alter cluster membership, quorum, fencing and resource placement. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `Pacemaker HA manager` vendor manual or installed `--help`; [online vendor reference](https://clusterlabs.org/).

### 13. `sudo pcs quorum status`

**Source line:** 200  |  **Tool/purpose:** Pacemaker HA manager  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
sudo pcs quorum status
```

**What it does:** Inspect or alter cluster membership, quorum, fencing and resource placement.

**Syntax:** sudo pcs quorum status. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Inspect or alter cluster membership, quorum, fencing and resource placement. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `Pacemaker HA manager` vendor manual or installed `--help`; [online vendor reference](https://clusterlabs.org/).

### 14. `sudo journalctl -u pacemaker -n 100 --no-pager`

**Source line:** 216  |  **Tool/purpose:** systemd journal inspection  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
sudo journalctl -u pacemaker -n 100 --no-pager
```

**What it does:** Filter systemd logs for the specified unit.

**Syntax:** sudo journalctl -u pacemaker -n. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-u` — Filter journal by systemd unit; in other tools may mean user.
**Option:** `-n` — Namespace for kubectl/oc, number of lines for journalctl/tail, or another command-specific argument.
**Option:** `--no-pager` — Print output directly rather than opening an interactive pager.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Filter systemd logs for the specified unit. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `systemd journal inspection` vendor manual or installed `--help`; [online vendor reference](https://www.freedesktop.org/software/systemd/man/latest/journalctl.html).

### 15. `sudo journalctl -u corosync -n 100 --no-pager`

**Source line:** 232  |  **Tool/purpose:** systemd journal inspection  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
sudo journalctl -u corosync -n 100 --no-pager
```

**What it does:** Filter systemd logs for the specified unit.

**Syntax:** sudo journalctl -u corosync -n. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-u` — Filter journal by systemd unit; in other tools may mean user.
**Option:** `-n` — Namespace for kubectl/oc, number of lines for journalctl/tail, or another command-specific argument.
**Option:** `--no-pager` — Print output directly rather than opening an interactive pager.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Filter systemd logs for the specified unit. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `systemd journal inspection` vendor manual or installed `--help`; [online vendor reference](https://www.freedesktop.org/software/systemd/man/latest/journalctl.html).

### 16. `sudo pcs resource relations`

**Source line:** 248  |  **Tool/purpose:** Pacemaker HA manager  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
sudo pcs resource relations
```

**What it does:** Inspect or alter cluster membership, quorum, fencing and resource placement.

**Syntax:** sudo pcs resource relations. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Inspect or alter cluster membership, quorum, fencing and resource placement. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `Pacemaker HA manager` vendor manual or installed `--help`; [online vendor reference](https://clusterlabs.org/).

### 17. `sudo pcs constraint config`

**Source line:** 264  |  **Tool/purpose:** Pacemaker HA manager  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
sudo pcs constraint config
```

**What it does:** Inspect or alter cluster membership, quorum, fencing and resource placement.

**Syntax:** sudo pcs constraint config. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Inspect or alter cluster membership, quorum, fencing and resource placement. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `Pacemaker HA manager` vendor manual or installed `--help`; [online vendor reference](https://clusterlabs.org/).

### 18. `sudo pcs node status`

**Source line:** 280  |  **Tool/purpose:** Pacemaker HA manager  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
sudo pcs node status
```

**What it does:** Inspect or alter cluster membership, quorum, fencing and resource placement.

**Syntax:** sudo pcs node status. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Inspect or alter cluster membership, quorum, fencing and resource placement. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `Pacemaker HA manager` vendor manual or installed `--help`; [online vendor reference](https://clusterlabs.org/).

### 19. `sudo crm_verify -L -V`

**Source line:** 296  |  **Tool/purpose:** crm_verify operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

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

