# Offline command / configuration reference: `offline-simple/11-CERN-STYLE-HPC-HTC-PARALLEL-COMPUTING_md.md`

Generated from repository source by `tools/build_offline_reference.py`. **63 items**. This copy works offline. No commands were executed.

⚠️ **Version-aware reference, not a substitute for vendor docs.** Every individual command is preserved with purpose, flags, placeholders, expected output and risk. Ambiguous flags are marked as command-specific. Always verify flags against your installed CLI.

**Original file:** [`offline-simple/11-CERN-STYLE-HPC-HTC-PARALLEL-COMPUTING_md.md`](../offline-simple/11-CERN-STYLE-HPC-HTC-PARALLEL-COMPUTING_md.md)

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

### 2. `lscpu`

**Source line:** 24  |  **Tool/purpose:** lscpu operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
lscpu
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** lscpu. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `lscpu operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 3. `numactl --hardware`

**Source line:** 40  |  **Tool/purpose:** numactl operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
numactl --hardware
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** numactl --hardware. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `--hardware` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `numactl operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 4. `free -h`

**Source line:** 56  |  **Tool/purpose:** free operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

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

### 5. `lsblk -o NAME,TYPE,SIZE,FSTYPE,MOUNTPOINTS`

**Source line:** 72  |  **Tool/purpose:** lsblk operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
lsblk -o NAME,TYPE,SIZE,FSTYPE,MOUNTPOINTS
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** lsblk -o NAME,TYPE,SIZE,FSTYPE,MOUNTPOINTS. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-o` — Output format for kubectl/oc, filename for some tools; command-specific.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `lsblk operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 6. `ip -br link`

**Source line:** 88  |  **Tool/purpose:** Linux network configuration  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
ip -br link
```

**What it does:** Read or change Linux addresses, links, routes and neighbor information.

**Syntax:** ip -br link. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-br` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Read or change Linux addresses, links, routes and neighbor information. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `Linux network configuration` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/man8/ip.8.html).

### 7. `lspci \| grep -Ei 'Mellanox\|NVIDIA\|AMD\|network\|infiniband'`

**Source line:** 104  |  **Tool/purpose:** lspci operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
lspci | grep -Ei 'Mellanox|NVIDIA|AMD|network|infiniband'
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** lspci | grep -Ei Mellanox|NVIDIA|AMD|network|infiniband. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-Ei` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Shell syntax:** `|` pipes stdout into the next process; check pipeline exit codes (pipefail where appropriate).
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `lspci operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 8. `uptime`

**Source line:** 120  |  **Tool/purpose:** uptime operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
uptime
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** uptime. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `uptime operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 9. `sinfo -Nel`

**Source line:** 136  |  **Tool/purpose:** Slurm partition/node information  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
sinfo -Nel
```

**What it does:** Display scheduler partition and compute node status.

**Syntax:** sinfo -Nel. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-Nel` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Display scheduler partition and compute node status. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `Slurm partition/node information` vendor manual or installed `--help`; [online vendor reference](https://slurm.schedmd.com/sinfo.html).

### 10. `squeue -o '%.18i %.9P %.22j %.8u %.2t %.10M %.6D %R'`

**Source line:** 152  |  **Tool/purpose:** Slurm queue status  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
squeue -o '%.18i %.9P %.22j %.8u %.2t %.10M %.6D %R'
```

**What it does:** Show queued/running jobs and placement reasons.

**Syntax:** squeue -o %.18i %.9P %.22j %.8u %.2t %.10M %.6D %R. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-o` — Output format for kubectl/oc, filename for some tools; command-specific.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Show queued/running jobs and placement reasons. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `Slurm queue status` vendor manual or installed `--help`; [online vendor reference](https://slurm.schedmd.com/squeue.html).

### 11. `scontrol ping`

**Source line:** 168  |  **Tool/purpose:** Slurm control inspection  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
scontrol ping
```

**What it does:** Inspect or administer scheduler nodes, partitions and jobs; read/write depends on subcommand.

**Syntax:** scontrol ping. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Inspect or administer scheduler nodes, partitions and jobs; read/write depends on subcommand. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `Slurm control inspection` vendor manual or installed `--help`; [online vendor reference](https://slurm.schedmd.com/scontrol.html).

### 12. `scontrol show partition`

**Source line:** 184  |  **Tool/purpose:** Slurm control inspection  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
scontrol show partition
```

**What it does:** Inspect or administer scheduler nodes, partitions and jobs; read/write depends on subcommand.

**Syntax:** scontrol show partition. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Inspect or administer scheduler nodes, partitions and jobs; read/write depends on subcommand. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `Slurm control inspection` vendor manual or installed `--help`; [online vendor reference](https://slurm.schedmd.com/scontrol.html).

### 13. `scontrol show nodes`

**Source line:** 200  |  **Tool/purpose:** Slurm control inspection  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
scontrol show nodes
```

**What it does:** Inspect or administer scheduler nodes, partitions and jobs; read/write depends on subcommand.

**Syntax:** scontrol show nodes. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Inspect or administer scheduler nodes, partitions and jobs; read/write depends on subcommand. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `Slurm control inspection` vendor manual or installed `--help`; [online vendor reference](https://slurm.schedmd.com/scontrol.html).

### 14. `sdiag`

**Source line:** 216  |  **Tool/purpose:** sdiag operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
sdiag
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** sdiag. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `sdiag operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 15. `sacct -S today --format=JobID,JobName,State,Elapsed,AllocCPUS,MaxRSS -n`

**Source line:** 232  |  **Tool/purpose:** Slurm accounting inspection  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
sacct -S today --format=JobID,JobName,State,Elapsed,AllocCPUS,MaxRSS -n
```

**What it does:** List historical job resources, states and timing.

**Syntax:** sacct -S today --format=JobID,JobName,State,Elapsed,AllocCPUS,MaxRSS -n. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-S` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Option:** `--format=JobID,JobName,State,Elapsed,AllocCPUS,MaxRSS` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Option:** `-n` — Namespace for kubectl/oc, number of lines for journalctl/tail, or another command-specific argument.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** List historical job resources, states and timing. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `Slurm accounting inspection` vendor manual or installed `--help`; [online vendor reference](https://slurm.schedmd.com/sacct.html).

### 16. `condor_version`

**Source line:** 248  |  **Tool/purpose:** condor_version operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
condor_version
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** condor_version. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `condor_version operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 17. `condor_status -total`

**Source line:** 264  |  **Tool/purpose:** HTCondor worker status  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
condor_status -total
```

**What it does:** Display resource pool advertisements and availability.

**Syntax:** condor_status -total. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-total` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Display resource pool advertisements and availability. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `HTCondor worker status` vendor manual or installed `--help`; [online vendor reference](https://htcondor.readthedocs.io/).

### 18. `condor_status -schedd`

**Source line:** 280  |  **Tool/purpose:** HTCondor worker status  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
condor_status -schedd
```

**What it does:** Display resource pool advertisements and availability.

**Syntax:** condor_status -schedd. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-schedd` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Display resource pool advertisements and availability. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `HTCondor worker status` vendor manual or installed `--help`; [online vendor reference](https://htcondor.readthedocs.io/).

### 19. `condor_q`

**Source line:** 296  |  **Tool/purpose:** HTCondor job queue  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
condor_q
```

**What it does:** Inspect current queued, running or held jobs.

**Syntax:** condor_q. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Inspect current queued, running or held jobs. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `HTCondor job queue` vendor manual or installed `--help`; [online vendor reference](https://htcondor.readthedocs.io/).

### 20. `condor_q -better-analyze JOB_ID`

**Source line:** 312  |  **Tool/purpose:** HTCondor job queue  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
condor_q -better-analyze JOB_ID
```

**What it does:** Inspect current queued, running or held jobs.

**Syntax:** condor_q -better-analyze JOB_ID. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-better-analyze` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Substitute before running:** `JOB_ID`. Never assume an example target is the current cluster.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Inspect current queued, running or held jobs. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `HTCondor job queue` vendor manual or installed `--help`; [online vendor reference](https://htcondor.readthedocs.io/).

### 21. `condor_history -limit 20`

**Source line:** 328  |  **Tool/purpose:** condor_history operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
condor_history -limit 20
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** condor_history -limit 20. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-limit` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `condor_history operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 22. `condor_status -af Name State Activity`

**Source line:** 344  |  **Tool/purpose:** HTCondor worker status  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
condor_status -af Name State Activity
```

**What it does:** Display resource pool advertisements and availability.

**Syntax:** condor_status -af Name State Activity. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-af` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Display resource pool advertisements and availability. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `HTCondor worker status` vendor manual or installed `--help`; [online vendor reference](https://htcondor.readthedocs.io/).

### 23. `mpirun --version`

**Source line:** 360  |  **Tool/purpose:** mpirun operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
mpirun --version
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** mpirun --version. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `--version` — Display tool version.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `mpirun operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 24. `mpicc --version`

**Source line:** 376  |  **Tool/purpose:** mpicc operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
mpicc --version
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** mpicc --version. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `--version` — Display tool version.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `mpicc operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 25. `module avail`

**Source line:** 392  |  **Tool/purpose:** module operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
module avail
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** module avail. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `module operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 26. `module list`

**Source line:** 408  |  **Tool/purpose:** module operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
module list
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** module list. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `module operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 27. `ulimit -a`

**Source line:** 424  |  **Tool/purpose:** ulimit operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
ulimit -a
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** ulimit -a. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-a` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `ulimit operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 28. `numactl --show`

**Source line:** 440  |  **Tool/purpose:** numactl operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
numactl --show
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** numactl --show. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `--show` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `numactl operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 29. `taskset -pc YOUR_PID`

**Source line:** 456  |  **Tool/purpose:** taskset operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
taskset -pc YOUR_PID
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** taskset -pc YOUR_PID. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-pc` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Substitute before running:** `YOUR_PID`. Never assume an example target is the current cluster.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `taskset operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 30. `mpirun --help \| head -40`

**Source line:** 472  |  **Tool/purpose:** mpirun operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
mpirun --help | head -40
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** mpirun --help | head -40. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `--help` — Display supported syntax and options for this installed tool version.
**Option:** `-40` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Shell syntax:** `|` pipes stdout into the next process; check pipeline exit codes (pipefail where appropriate).
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `mpirun operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 31. `nvidia-smi -L`

**Source line:** 488  |  **Tool/purpose:** NVIDIA GPU diagnostics  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
nvidia-smi -L
```

**What it does:** Inspect GPU inventory, utilization, memory, temperatures and errors.

**Syntax:** nvidia-smi -L. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-L` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Inspect GPU inventory, utilization, memory, temperatures and errors. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `NVIDIA GPU diagnostics` vendor manual or installed `--help`; [online vendor reference](https://docs.nvidia.com/deploy/nvidia-smi/).

### 32. `nvidia-smi --query-gpu=index,name,uuid,memory.total,utilization.gpu,temperature.gpu --format=csv`

**Source line:** 504  |  **Tool/purpose:** NVIDIA GPU diagnostics  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
nvidia-smi --query-gpu=index,name,uuid,memory.total,utilization.gpu,temperature.gpu --format=csv
```

**What it does:** Inspect GPU inventory, utilization, memory, temperatures and errors.

**Syntax:** nvidia-smi --query-gpu=index,name,uuid,memory.total,utilization.gpu,temperature.gpu --format=csv. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `--query-gpu=index,name,uuid,memory.total,utilization.gpu,temperature.gpu` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Option:** `--format=csv` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Inspect GPU inventory, utilization, memory, temperatures and errors. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `NVIDIA GPU diagnostics` vendor manual or installed `--help`; [online vendor reference](https://docs.nvidia.com/deploy/nvidia-smi/).

### 33. `ibstat`

**Source line:** 520  |  **Tool/purpose:** InfiniBand link inspection  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
ibstat
```

**What it does:** Display InfiniBand adapter, port state, link speed and identifiers.

**Syntax:** ibstat. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Display InfiniBand adapter, port state, link speed and identifiers. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `InfiniBand link inspection` vendor manual or installed `--help`; [online vendor reference](https://github.com/linux-rdma/rdma-core).

### 34. `ibv_devices`

**Source line:** 536  |  **Tool/purpose:** ibv_devices operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
ibv_devices
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** ibv_devices. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `ibv_devices operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 35. `ibv_devinfo`

**Source line:** 552  |  **Tool/purpose:** ibv_devinfo operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
ibv_devinfo
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** ibv_devinfo. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `ibv_devinfo operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 36. `rdma link show`

**Source line:** 568  |  **Tool/purpose:** rdma operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
rdma link show
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** rdma link show. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `rdma operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 37. `ethtool -S YOUR_INTERFACE \| head -70`

**Source line:** 584  |  **Tool/purpose:** ethtool operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
ethtool -S YOUR_INTERFACE | head -70
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** ethtool -S YOUR_INTERFACE | head. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-S` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Option:** `-70` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Substitute before running:** `YOUR_INTERFACE`. Never assume an example target is the current cluster.
**Shell syntax:** `|` pipes stdout into the next process; check pipeline exit codes (pipefail where appropriate).
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `ethtool operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 38. `journalctl -k -b --since '1 hour ago' \| grep -Ei 'mlx5\|infiniband\|rdma\|nvlink\|xid\|aer\|pcie\|timeout' \| tail -100`

**Source line:** 600  |  **Tool/purpose:** systemd journal inspection  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
journalctl -k -b --since '1 hour ago' | grep -Ei 'mlx5|infiniband|rdma|nvlink|xid|aer|pcie|timeout' | tail -100
```

**What it does:** Query system and service journal messages with boot, unit, time and priority filters.

**Syntax:** journalctl -k -b --since 1 hour ago. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-k` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Option:** `-b` — Filter journal to specified boot; otherwise command-specific.
**Option:** `--since` — Select entries newer than a given time or duration.
**Option:** `-Ei` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Option:** `-100` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Shell syntax:** `|` pipes stdout into the next process; check pipeline exit codes (pipefail where appropriate).
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Query system and service journal messages with boot, unit, time and priority filters. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `systemd journal inspection` vendor manual or installed `--help`; [online vendor reference](https://www.freedesktop.org/software/systemd/man/latest/journalctl.html).

### 39. `findmnt -T /scratch`

**Source line:** 616  |  **Tool/purpose:** findmnt operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
findmnt -T /scratch
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** findmnt -T /scratch. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-T` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `findmnt operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 40. `df -hT`

**Source line:** 632  |  **Tool/purpose:** Filesystem capacity  |  **Impact:** **DIAGNOSTIC / REVIEW**

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

### 41. `df -i`

**Source line:** 648  |  **Tool/purpose:** Filesystem capacity  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
df -i
```

**What it does:** Display filesystem usage; bytes with -h or inodes with -i.

**Syntax:** df -i. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-i` — Inode usage in df, interactive or interface depending on command.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Display filesystem usage; bytes with -h or inodes with -i. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `Filesystem capacity` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/man1/df.1.html).

### 42. `iostat -xz 1 5`

**Source line:** 664  |  **Tool/purpose:** iostat operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
iostat -xz 1 5
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** iostat -xz 1 5. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-xz` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `iostat operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 43. `mount \| grep -Ei 'lustre\|beegfs\|nfs\|ceph\|gpfs\|cvmfs'`

**Source line:** 680  |  **Tool/purpose:** mount operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
mount | grep -Ei 'lustre|beegfs|nfs|ceph|gpfs|cvmfs'
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** mount | grep -Ei lustre|beegfs|nfs|ceph|gpfs|cvmfs. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-Ei` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Shell syntax:** `|` pipes stdout into the next process; check pipeline exit codes (pipefail where appropriate).
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `mount operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 44. `journalctl -k -b --since '1 hour ago' \| grep -Ei 'I/O error\|nfs\|lustre\|beegfs\|cvmfs\|ceph\|timeout\|reset' \| tail -100`

**Source line:** 696  |  **Tool/purpose:** systemd journal inspection  |  **Impact:** **CHANGE / POSSIBLY MUTATING**

**Exact command:**

```bash
journalctl -k -b --since '1 hour ago' | grep -Ei 'I/O error|nfs|lustre|beegfs|cvmfs|ceph|timeout|reset' | tail -100
```

**What it does:** Query system and service journal messages with boot, unit, time and priority filters.

**Syntax:** journalctl -k -b --since 1 hour ago. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-k` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Option:** `-b` — Filter journal to specified boot; otherwise command-specific.
**Option:** `--since` — Select entries newer than a given time or duration.
**Option:** `-Ei` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Option:** `-100` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Shell syntax:** `|` pipes stdout into the next process; check pipeline exit codes (pipefail where appropriate).
**Safety/rollback:** Check subcommand and flags; requires change review and appropriate access.
**Expected result:** Query system and service journal messages with boot, unit, time and priority filters. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `systemd journal inspection` vendor manual or installed `--help`; [online vendor reference](https://www.freedesktop.org/software/systemd/man/latest/journalctl.html).

### 45. `sbatch hello-slurm.sbatch`

**Source line:** 712  |  **Tool/purpose:** Slurm job submission  |  **Impact:** **CHANGE / POSSIBLY MUTATING**

**Exact command:**

```bash
sbatch hello-slurm.sbatch
```

**What it does:** Submit a batch job, consuming compute allocation subject to scheduler policy.

**Syntax:** sbatch hello-slurm.sbatch. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Check subcommand and flags; requires change review and appropriate access.
**Expected result:** Submit a batch job, consuming compute allocation subject to scheduler policy. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `Slurm job submission` vendor manual or installed `--help`; [online vendor reference](https://slurm.schedmd.com/sbatch.html).

### 46. `mkdir -p logs`

**Source line:** 728  |  **Tool/purpose:** mkdir operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
mkdir -p logs
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** mkdir -p logs. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-p` — Priority filter in journalctl; other meanings in other CLIs.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `mkdir operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 47. `condor_submit hello.sub`

**Source line:** 744  |  **Tool/purpose:** HTCondor job submission  |  **Impact:** **CHANGE / POSSIBLY MUTATING**

**Exact command:**

```bash
condor_submit hello.sub
```

**What it does:** Queue workload through HTCondor; consumes scheduled resources.

**Syntax:** condor_submit hello.sub. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Check subcommand and flags; requires change review and appropriate access.
**Expected result:** Queue workload through HTCondor; consumes scheduled resources. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `HTCondor job submission` vendor manual or installed `--help`; [online vendor reference](https://htcondor.readthedocs.io/).

### 48. `condor_q`

**Source line:** 760  |  **Tool/purpose:** HTCondor job queue  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
condor_q
```

**What it does:** Inspect current queued, running or held jobs.

**Syntax:** condor_q. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Inspect current queued, running or held jobs. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `HTCondor job queue` vendor manual or installed `--help`; [online vendor reference](https://htcondor.readthedocs.io/).

### 49. `condor_history -limit 10`

**Source line:** 776  |  **Tool/purpose:** condor_history operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
condor_history -limit 10
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** condor_history -limit 10. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-limit` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `condor_history operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 50. `srun --nodes=1 --ntasks=2 --time=00:02:00 hostname`

**Source line:** 792  |  **Tool/purpose:** Slurm parallel task launch  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
srun --nodes=1 --ntasks=2 --time=00:02:00 hostname
```

**What it does:** Start tasks in an authorized scheduler allocation.

**Syntax:** srun --nodes=1 --ntasks=2 --time=00:02:00 hostname. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `--nodes=1` — Specify allocated Slurm nodes for a job.
**Option:** `--ntasks=2` — Specify number of scheduler tasks.
**Option:** `--time=00:02:00` — Specify time limit for a scheduled workload.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Start tasks in an authorized scheduler allocation. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `Slurm parallel task launch` vendor manual or installed `--help`; [online vendor reference](https://slurm.schedmd.com/srun.html).

### 51. `sinfo -R`

**Source line:** 808  |  **Tool/purpose:** Slurm partition/node information  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
sinfo -R
```

**What it does:** Display scheduler partition and compute node status.

**Syntax:** sinfo -R. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-R` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Display scheduler partition and compute node status. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `Slurm partition/node information` vendor manual or installed `--help`; [online vendor reference](https://slurm.schedmd.com/sinfo.html).

### 52. `scontrol show job JOB_ID`

**Source line:** 824  |  **Tool/purpose:** Slurm control inspection  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
scontrol show job JOB_ID
```

**What it does:** Inspect or administer scheduler nodes, partitions and jobs; read/write depends on subcommand.

**Syntax:** scontrol show job JOB_ID. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Substitute before running:** `JOB_ID`. Never assume an example target is the current cluster.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Inspect or administer scheduler nodes, partitions and jobs; read/write depends on subcommand. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `Slurm control inspection` vendor manual or installed `--help`; [online vendor reference](https://slurm.schedmd.com/scontrol.html).

### 53. `scontrol show node NODE_NAME`

**Source line:** 840  |  **Tool/purpose:** Slurm control inspection  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
scontrol show node NODE_NAME
```

**What it does:** Inspect or administer scheduler nodes, partitions and jobs; read/write depends on subcommand.

**Syntax:** scontrol show node NODE_NAME. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Substitute before running:** `NODE_NAME`. Never assume an example target is the current cluster.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Inspect or administer scheduler nodes, partitions and jobs; read/write depends on subcommand. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `Slurm control inspection` vendor manual or installed `--help`; [online vendor reference](https://slurm.schedmd.com/scontrol.html).

### 54. `sacct -j JOB_ID --format=JobID,JobName,State,ExitCode,Elapsed,MaxRSS`

**Source line:** 856  |  **Tool/purpose:** Slurm accounting inspection  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
sacct -j JOB_ID --format=JobID,JobName,State,ExitCode,Elapsed,MaxRSS
```

**What it does:** List historical job resources, states and timing.

**Syntax:** sacct -j JOB_ID --format=JobID,JobName,State,ExitCode,Elapsed,MaxRSS. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-j` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Option:** `--format=JobID,JobName,State,ExitCode,Elapsed,MaxRSS` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Substitute before running:** `JOB_ID`. Never assume an example target is the current cluster.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** List historical job resources, states and timing. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `Slurm accounting inspection` vendor manual or installed `--help`; [online vendor reference](https://slurm.schedmd.com/sacct.html).

### 55. `sstat -j JOB_ID --format=AveCPU,AveRSS,MaxRSS`

**Source line:** 872  |  **Tool/purpose:** sstat operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
sstat -j JOB_ID --format=AveCPU,AveRSS,MaxRSS
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** sstat -j JOB_ID --format=AveCPU,AveRSS,MaxRSS. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-j` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Option:** `--format=AveCPU,AveRSS,MaxRSS` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Substitute before running:** `JOB_ID`. Never assume an example target is the current cluster.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `sstat operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 56. `journalctl -u slurmd -b --no-pager -n 120`

**Source line:** 888  |  **Tool/purpose:** systemd journal inspection  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
journalctl -u slurmd -b --no-pager -n 120
```

**What it does:** Filter systemd logs for the specified unit.

**Syntax:** journalctl -u slurmd -b --no-pager. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-u` — Filter journal by systemd unit; in other tools may mean user.
**Option:** `-b` — Filter journal to specified boot; otherwise command-specific.
**Option:** `--no-pager` — Print output directly rather than opening an interactive pager.
**Option:** `-n` — Namespace for kubectl/oc, number of lines for journalctl/tail, or another command-specific argument.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Filter systemd logs for the specified unit. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `systemd journal inspection` vendor manual or installed `--help`; [online vendor reference](https://www.freedesktop.org/software/systemd/man/latest/journalctl.html).

### 57. `journalctl -u slurmctld -b --no-pager -n 120`

**Source line:** 904  |  **Tool/purpose:** systemd journal inspection  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
journalctl -u slurmctld -b --no-pager -n 120
```

**What it does:** Filter systemd logs for the specified unit.

**Syntax:** journalctl -u slurmctld -b --no-pager. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-u` — Filter journal by systemd unit; in other tools may mean user.
**Option:** `-b` — Filter journal to specified boot; otherwise command-specific.
**Option:** `--no-pager` — Print output directly rather than opening an interactive pager.
**Option:** `-n` — Namespace for kubectl/oc, number of lines for journalctl/tail, or another command-specific argument.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Filter systemd logs for the specified unit. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `systemd journal inspection` vendor manual or installed `--help`; [online vendor reference](https://www.freedesktop.org/software/systemd/man/latest/journalctl.html).

### 58. `condor_q -hold`

**Source line:** 920  |  **Tool/purpose:** HTCondor job queue  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
condor_q -hold
```

**What it does:** Inspect current queued, running or held jobs.

**Syntax:** condor_q -hold. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-hold` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Inspect current queued, running or held jobs. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `HTCondor job queue` vendor manual or installed `--help`; [online vendor reference](https://htcondor.readthedocs.io/).

### 59. `condor_q -better-analyze JOB_ID`

**Source line:** 936  |  **Tool/purpose:** HTCondor job queue  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
condor_q -better-analyze JOB_ID
```

**What it does:** Inspect current queued, running or held jobs.

**Syntax:** condor_q -better-analyze JOB_ID. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-better-analyze` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Substitute before running:** `JOB_ID`. Never assume an example target is the current cluster.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Inspect current queued, running or held jobs. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `HTCondor job queue` vendor manual or installed `--help`; [online vendor reference](https://htcondor.readthedocs.io/).

### 60. `condor_q -long JOB_ID \| head -80`

**Source line:** 952  |  **Tool/purpose:** HTCondor job queue  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
condor_q -long JOB_ID | head -80
```

**What it does:** Inspect current queued, running or held jobs.

**Syntax:** condor_q -long JOB_ID | head. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-long` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Option:** `-80` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Substitute before running:** `JOB_ID`. Never assume an example target is the current cluster.
**Shell syntax:** `|` pipes stdout into the next process; check pipeline exit codes (pipefail where appropriate).
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Inspect current queued, running or held jobs. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `HTCondor job queue` vendor manual or installed `--help`; [online vendor reference](https://htcondor.readthedocs.io/).

### 61. `condor_status -total`

**Source line:** 968  |  **Tool/purpose:** HTCondor worker status  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
condor_status -total
```

**What it does:** Display resource pool advertisements and availability.

**Syntax:** condor_status -total. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-total` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Display resource pool advertisements and availability. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `HTCondor worker status` vendor manual or installed `--help`; [online vendor reference](https://htcondor.readthedocs.io/).

### 62. `condor_history -limit 25`

**Source line:** 984  |  **Tool/purpose:** condor_history operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
condor_history -limit 25
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** condor_history -limit 25. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-limit` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `condor_history operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 63. `condor_ping -type SCHEDD READ`

**Source line:** 1000  |  **Tool/purpose:** condor_ping operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
condor_ping -type SCHEDD READ
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** condor_ping -type SCHEDD READ. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-type` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `condor_ping operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

