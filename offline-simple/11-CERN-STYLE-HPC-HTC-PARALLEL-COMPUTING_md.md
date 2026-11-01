# Linux commands — simple detailed offline explanation: 11-CERN-STYLE-HPC-HTC-PARALLEL-COMPUTING.md

Read this locally without internet. The exact original command and a plain-English explanation are together. Check the installed Linux distribution, optional tools, account privileges and change approval.

## 1. hostnamectl

```bash
hostnamectl
```

**What it does:** This runs `hostnamectl` on the current server, acting on the files, services or targets named after it.

**Syntax made simple:** `hostnamectl` is the program. Other words choose a user, service, device, filename or action.

**Output you should expect:** The program's result or error; check its `--help` for version-specific output.

**Production check:** Usually read-only, though output can contain private system data.

**If it fails:** Check permissions, relevant log lines and whether this command exists on your distribution; compare with a healthy node.

## 2. lscpu

```bash
lscpu
```

**What it does:** This runs `lscpu` on the current server, acting on the files, services or targets named after it.

**Syntax made simple:** `lscpu` is the program. Other words choose a user, service, device, filename or action.

**Output you should expect:** The program's result or error; check its `--help` for version-specific output.

**Production check:** Usually read-only, though output can contain private system data.

**If it fails:** Check permissions, relevant log lines and whether this command exists on your distribution; compare with a healthy node.

## 3. numactl --hardware

```bash
numactl --hardware
```

**What it does:** This runs `numactl` on the current server, acting on the files, services or targets named after it.

**Syntax made simple:** `numactl` is the program. `--hardware` — command-specific argument (verify with --help).

**Output you should expect:** The program's result or error; check its `--help` for version-specific output.

**Production check:** Usually read-only, though output can contain private system data.

**If it fails:** Check permissions, relevant log lines and whether this command exists on your distribution; compare with a healthy node.

## 4. free -h

```bash
free -h
```

**What it does:** Shows available RAM and swap.

**Syntax made simple:** `free` is the program. `-h` — human-readable amounts for disk/memory tools.

**Output you should expect:** Memory totals; use available, not simply free, when evaluating pressure.

**Production check:** Usually read-only, though output can contain private system data.

**If it fails:** Check permissions, relevant log lines and whether this command exists on your distribution; compare with a healthy node.

## 5. lsblk -o NAME,TYPE,SIZE,FSTYPE,MOUNTPOINTS

```bash
lsblk -o NAME,TYPE,SIZE,FSTYPE,MOUNTPOINTS
```

**What it does:** Lists Linux disks, volumes and mountpoints.

**Syntax made simple:** `lsblk` is the program. `-o` — command-specific argument (verify with --help).

**Output you should expect:** Detected disk names, sizes and filesystem type.

**Production check:** Usually read-only, though output can contain private system data.

**If it fails:** Check permissions, relevant log lines and whether this command exists on your distribution; compare with a healthy node.

## 6. ip -br link

```bash
ip -br link
```

**What it does:** Shows host interfaces, addresses or routes.

**Syntax made simple:** `ip` is the program. `-br` — command-specific argument (verify with --help).

**Output you should expect:** Interface IP, state and selected next hop/gateway.

**Production check:** Usually read-only, though output can contain private system data.

**If it fails:** Check permissions, relevant log lines and whether this command exists on your distribution; compare with a healthy node.

## 7. lspci | grep -Ei 'Mellanox|NVIDIA|AMD|network|infiniband'

```bash
lspci | grep -Ei 'Mellanox|NVIDIA|AMD|network|infiniband'
```

**What it does:** This runs `lspci` on the current server, acting on the files, services or targets named after it.

**Syntax made simple:** `lspci` is the program. `-Ei` — command-specific argument (verify with --help). The `|` passes text to the next tool for filtering.

**Output you should expect:** The program's result or error; check its `--help` for version-specific output.

**Production check:** Usually read-only, though output can contain private system data.

**If it fails:** Check permissions, relevant log lines and whether this command exists on your distribution; compare with a healthy node.

## 8. uptime

```bash
uptime
```

**What it does:** Shows uptime and CPU load averages.

**Syntax made simple:** `uptime` is the program. Other words choose a user, service, device, filename or action.

**Output you should expect:** System up-time and load for 1/5/15 minutes.

**Production check:** Usually read-only, though output can contain private system data.

**If it fails:** Check permissions, relevant log lines and whether this command exists on your distribution; compare with a healthy node.

## 9. sinfo -Nel

```bash
sinfo -Nel
```

**What it does:** Shows which Slurm HPC compute nodes are free, busy, drained or down.

**Syntax made simple:** `sinfo` is the program. `-Nel` — command-specific argument (verify with --help).

**Output you should expect:** Scheduler partitions and node availability.

**Production check:** Usually read-only, though output can contain private system data.

**If it fails:** Check permissions, relevant log lines and whether this command exists on your distribution; compare with a healthy node.

## 10. squeue -o '%.18i %.9P %.22j %.8u %.2t %.10M %.6D %R'

```bash
squeue -o '%.18i %.9P %.22j %.8u %.2t %.10M %.6D %R'
```

**What it does:** Lists running and pending Slurm jobs.

**Syntax made simple:** `squeue` is the program. `-o` — command-specific argument (verify with --help).

**Output you should expect:** Job IDs, users, runtime and waiting reasons.

**Production check:** Usually read-only, though output can contain private system data.

**If it fails:** Check permissions, relevant log lines and whether this command exists on your distribution; compare with a healthy node.

## 11. scontrol ping

```bash
scontrol ping
```

**What it does:** Queries or manages Slurm job/node details; show is read-only.

**Syntax made simple:** `scontrol` is the program. Other words choose a user, service, device, filename or action.

**Output you should expect:** Detailed node configuration, job allocation or pending reason.

**Production check:** Usually read-only, though output can contain private system data.

**If it fails:** Check permissions, relevant log lines and whether this command exists on your distribution; compare with a healthy node.

## 12. scontrol show partition

```bash
scontrol show partition
```

**What it does:** Queries or manages Slurm job/node details; show is read-only.

**Syntax made simple:** `scontrol` is the program. Other words choose a user, service, device, filename or action.

**Output you should expect:** Detailed node configuration, job allocation or pending reason.

**Production check:** Usually read-only, though output can contain private system data.

**If it fails:** Check permissions, relevant log lines and whether this command exists on your distribution; compare with a healthy node.

## 13. scontrol show nodes

```bash
scontrol show nodes
```

**What it does:** Queries or manages Slurm job/node details; show is read-only.

**Syntax made simple:** `scontrol` is the program. Other words choose a user, service, device, filename or action.

**Output you should expect:** Detailed node configuration, job allocation or pending reason.

**Production check:** Usually read-only, though output can contain private system data.

**If it fails:** Check permissions, relevant log lines and whether this command exists on your distribution; compare with a healthy node.

## 14. sdiag

```bash
sdiag
```

**What it does:** This runs `sdiag` on the current server, acting on the files, services or targets named after it.

**Syntax made simple:** `sdiag` is the program. Other words choose a user, service, device, filename or action.

**Output you should expect:** The program's result or error; check its `--help` for version-specific output.

**Production check:** Usually read-only, though output can contain private system data.

**If it fails:** Check permissions, relevant log lines and whether this command exists on your distribution; compare with a healthy node.

## 15. sacct -S today --format=JobID,JobName,State,Elapsed,AllocCPUS,MaxRSS -n

```bash
sacct -S today --format=JobID,JobName,State,Elapsed,AllocCPUS,MaxRSS -n
```

**What it does:** Looks up Slurm job accounting and failures.

**Syntax made simple:** `sacct` is the program. `-S`, `--format=JobID,JobName,State,Elapsed,AllocCPUS,MaxRSS`, `-n` — command-specific argument (verify with --help); select output columns; last N lines or namespace, depending on tool.

**Output you should expect:** Historical jobs, exit codes and resources.

**Production check:** Usually read-only, though output can contain private system data.

**If it fails:** Check permissions, relevant log lines and whether this command exists on your distribution; compare with a healthy node.

## 16. condor_version

```bash
condor_version
```

**What it does:** This runs `condor_version` on the current server, acting on the files, services or targets named after it.

**Syntax made simple:** `condor_version` is the program. Other words choose a user, service, device, filename or action.

**Output you should expect:** The program's result or error; check its `--help` for version-specific output.

**Production check:** Usually read-only, though output can contain private system data.

**If it fails:** Check permissions, relevant log lines and whether this command exists on your distribution; compare with a healthy node.

## 17. condor_status -total

```bash
condor_status -total
```

**What it does:** Shows advertised HTCondor worker slots and resource state.

**Syntax made simple:** `condor_status` is the program. `-total` — command-specific argument (verify with --help).

**Output you should expect:** Available compute slots and pool health.

**Production check:** Usually read-only, though output can contain private system data.

**If it fails:** Check permissions, relevant log lines and whether this command exists on your distribution; compare with a healthy node.

## 18. condor_status -schedd

```bash
condor_status -schedd
```

**What it does:** Shows advertised HTCondor worker slots and resource state.

**Syntax made simple:** `condor_status` is the program. `-schedd` — command-specific argument (verify with --help).

**Output you should expect:** Available compute slots and pool health.

**Production check:** Usually read-only, though output can contain private system data.

**If it fails:** Check permissions, relevant log lines and whether this command exists on your distribution; compare with a healthy node.

## 19. condor_q

```bash
condor_q
```

**What it does:** Shows queued/running/held HTCondor jobs and match reasons.

**Syntax made simple:** `condor_q` is the program. Other words choose a user, service, device, filename or action.

**Output you should expect:** Job queue entries and hold details.

**Production check:** Usually read-only, though output can contain private system data.

**If it fails:** Check permissions, relevant log lines and whether this command exists on your distribution; compare with a healthy node.

## 20. condor_q -better-analyze JOB_ID

```bash
condor_q -better-analyze JOB_ID
```

**What it does:** Shows queued/running/held HTCondor jobs and match reasons.

**Syntax made simple:** `condor_q` is the program. `-better-analyze` — command-specific argument (verify with --help).

**Output you should expect:** Job queue entries and hold details.

**Production check:** Usually read-only, though output can contain private system data.

**If it fails:** Check permissions, relevant log lines and whether this command exists on your distribution; compare with a healthy node.

## 21. condor_history -limit 20

```bash
condor_history -limit 20
```

**What it does:** This runs `condor_history` on the current server, acting on the files, services or targets named after it.

**Syntax made simple:** `condor_history` is the program. `-limit` — command-specific argument (verify with --help).

**Output you should expect:** The program's result or error; check its `--help` for version-specific output.

**Production check:** Usually read-only, though output can contain private system data.

**If it fails:** Check permissions, relevant log lines and whether this command exists on your distribution; compare with a healthy node.

## 22. condor_status -af Name State Activity

```bash
condor_status -af Name State Activity
```

**What it does:** Shows advertised HTCondor worker slots and resource state.

**Syntax made simple:** `condor_status` is the program. `-af` — command-specific argument (verify with --help).

**Output you should expect:** Available compute slots and pool health.

**Production check:** Usually read-only, though output can contain private system data.

**If it fails:** Check permissions, relevant log lines and whether this command exists on your distribution; compare with a healthy node.

## 23. mpirun --version

```bash
mpirun --version
```

**What it does:** This runs `mpirun` on the current server, acting on the files, services or targets named after it.

**Syntax made simple:** `mpirun` is the program. `--version` — target version.

**Output you should expect:** The program's result or error; check its `--help` for version-specific output.

**Production check:** Usually read-only, though output can contain private system data.

**If it fails:** Check permissions, relevant log lines and whether this command exists on your distribution; compare with a healthy node.

## 24. mpicc --version

```bash
mpicc --version
```

**What it does:** This runs `mpicc` on the current server, acting on the files, services or targets named after it.

**Syntax made simple:** `mpicc` is the program. `--version` — target version.

**Output you should expect:** The program's result or error; check its `--help` for version-specific output.

**Production check:** Usually read-only, though output can contain private system data.

**If it fails:** Check permissions, relevant log lines and whether this command exists on your distribution; compare with a healthy node.

## 25. module avail

```bash
module avail
```

**What it does:** This runs `module` on the current server, acting on the files, services or targets named after it.

**Syntax made simple:** `module` is the program. Other words choose a user, service, device, filename or action.

**Output you should expect:** The program's result or error; check its `--help` for version-specific output.

**Production check:** Usually read-only, though output can contain private system data.

**If it fails:** Check permissions, relevant log lines and whether this command exists on your distribution; compare with a healthy node.

## 26. module list

```bash
module list
```

**What it does:** This runs `module` on the current server, acting on the files, services or targets named after it.

**Syntax made simple:** `module` is the program. Other words choose a user, service, device, filename or action.

**Output you should expect:** The program's result or error; check its `--help` for version-specific output.

**Production check:** Usually read-only, though output can contain private system data.

**If it fails:** Check permissions, relevant log lines and whether this command exists on your distribution; compare with a healthy node.

## 27. ulimit -a

```bash
ulimit -a
```

**What it does:** This runs `ulimit` on the current server, acting on the files, services or targets named after it.

**Syntax made simple:** `ulimit` is the program. `-a` — command-specific argument (verify with --help).

**Output you should expect:** The program's result or error; check its `--help` for version-specific output.

**Production check:** Usually read-only, though output can contain private system data.

**If it fails:** Check permissions, relevant log lines and whether this command exists on your distribution; compare with a healthy node.

## 28. numactl --show

```bash
numactl --show
```

**What it does:** This runs `numactl` on the current server, acting on the files, services or targets named after it.

**Syntax made simple:** `numactl` is the program. `--show` — command-specific argument (verify with --help).

**Output you should expect:** The program's result or error; check its `--help` for version-specific output.

**Production check:** Usually read-only, though output can contain private system data.

**If it fails:** Check permissions, relevant log lines and whether this command exists on your distribution; compare with a healthy node.

## 29. taskset -pc YOUR_PID

```bash
taskset -pc YOUR_PID
```

**What it does:** This runs `taskset` on the current server, acting on the files, services or targets named after it.

**Syntax made simple:** `taskset` is the program. `-pc` — command-specific argument (verify with --help).

**Output you should expect:** The program's result or error; check its `--help` for version-specific output.

**Production check:** Replace YOUR_PID. Usually read-only, though output can contain private system data.

**If it fails:** Check permissions, relevant log lines and whether this command exists on your distribution; compare with a healthy node.

## 30. mpirun --help | head -40

```bash
mpirun --help | head -40
```

**What it does:** This runs `mpirun` on the current server, acting on the files, services or targets named after it.

**Syntax made simple:** `mpirun` is the program. `--help`, `-40` — command-specific argument (verify with --help); command-specific argument (verify with --help). The `|` passes text to the next tool for filtering.

**Output you should expect:** The program's result or error; check its `--help` for version-specific output.

**Production check:** Usually read-only, though output can contain private system data.

**If it fails:** Check permissions, relevant log lines and whether this command exists on your distribution; compare with a healthy node.

## 31. nvidia-smi -L

```bash
nvidia-smi -L
```

**What it does:** Shows NVIDIA GPU model, VRAM, utilization, temperature and driver.

**Syntax made simple:** `nvidia-smi` is the program. `-L` — command-specific argument (verify with --help).

**Output you should expect:** GPU inventory and counters; tool requires NVIDIA drivers.

**Production check:** Usually read-only, though output can contain private system data.

**If it fails:** Check permissions, relevant log lines and whether this command exists on your distribution; compare with a healthy node.

## 32. nvidia-smi --query-gpu=index,name,uuid,memory.total,utilization.gpu,temperature.gpu --format=csv

```bash
nvidia-smi --query-gpu=index,name,uuid,memory.total,utilization.gpu,temperature.gpu --format=csv
```

**What it does:** Shows NVIDIA GPU model, VRAM, utilization, temperature and driver.

**Syntax made simple:** `nvidia-smi` is the program. `--query-gpu=index,name,uuid,memory.total,utilization.gpu,temperature.gpu`, `--format=csv` — command-specific argument (verify with --help); select output columns.

**Output you should expect:** GPU inventory and counters; tool requires NVIDIA drivers.

**Production check:** Usually read-only, though output can contain private system data.

**If it fails:** Check permissions, relevant log lines and whether this command exists on your distribution; compare with a healthy node.

## 33. ibstat

```bash
ibstat
```

**What it does:** This runs `ibstat` on the current server, acting on the files, services or targets named after it.

**Syntax made simple:** `ibstat` is the program. Other words choose a user, service, device, filename or action.

**Output you should expect:** The program's result or error; check its `--help` for version-specific output.

**Production check:** Usually read-only, though output can contain private system data.

**If it fails:** Check permissions, relevant log lines and whether this command exists on your distribution; compare with a healthy node.

## 34. ibv_devices

```bash
ibv_devices
```

**What it does:** This runs `ibv_devices` on the current server, acting on the files, services or targets named after it.

**Syntax made simple:** `ibv_devices` is the program. Other words choose a user, service, device, filename or action.

**Output you should expect:** The program's result or error; check its `--help` for version-specific output.

**Production check:** Usually read-only, though output can contain private system data.

**If it fails:** Check permissions, relevant log lines and whether this command exists on your distribution; compare with a healthy node.

## 35. ibv_devinfo

```bash
ibv_devinfo
```

**What it does:** This runs `ibv_devinfo` on the current server, acting on the files, services or targets named after it.

**Syntax made simple:** `ibv_devinfo` is the program. Other words choose a user, service, device, filename or action.

**Output you should expect:** The program's result or error; check its `--help` for version-specific output.

**Production check:** Usually read-only, though output can contain private system data.

**If it fails:** Check permissions, relevant log lines and whether this command exists on your distribution; compare with a healthy node.

## 36. rdma link show

```bash
rdma link show
```

**What it does:** This runs `rdma` on the current server, acting on the files, services or targets named after it.

**Syntax made simple:** `rdma` is the program. Other words choose a user, service, device, filename or action.

**Output you should expect:** The program's result or error; check its `--help` for version-specific output.

**Production check:** Usually read-only, though output can contain private system data.

**If it fails:** Check permissions, relevant log lines and whether this command exists on your distribution; compare with a healthy node.

## 37. ethtool -S YOUR_INTERFACE | head -70

```bash
ethtool -S YOUR_INTERFACE | head -70
```

**What it does:** Reads NIC link, driver and hardware counters.

**Syntax made simple:** `ethtool` is the program. `-S`, `-70` — command-specific argument (verify with --help); command-specific argument (verify with --help). The `|` passes text to the next tool for filtering.

**Output you should expect:** Link speed/state and NIC error statistics.

**Production check:** Replace YOUR_INTERFACE. Usually read-only, though output can contain private system data.

**If it fails:** Check permissions, relevant log lines and whether this command exists on your distribution; compare with a healthy node.

## 38. journalctl -k -b --since '1 hour ago' | grep -Ei 'mlx5|infiniband|rdma|nvlink|xid|aer|pcie|timeout' | tai

```bash
journalctl -k -b --since '1 hour ago' | grep -Ei 'mlx5|infiniband|rdma|nvlink|xid|aer|pcie|timeout' | tail -100
```

**What it does:** Reads selected logs from the systemd journal without changing services.

**Syntax made simple:** `journalctl` is the program. `-k`, `-b`, `--since`, `-Ei`, `-100` — kernel messages for journalctl; current/specified boot for journalctl; show logs since this time; command-specific argument (verify with --help); command-specific argument (verify with --help). The `|` passes text to the next tool for filtering.

**Output you should expect:** Timestamped service/kernel messages; look just before the first failure.

**Production check:** Usually read-only, though output can contain private system data.

**If it fails:** Check permissions, relevant log lines and whether this command exists on your distribution; compare with a healthy node.

## 39. findmnt -T /scratch

```bash
findmnt -T /scratch
```

**What it does:** This runs `findmnt` on the current server, acting on the files, services or targets named after it.

**Syntax made simple:** `findmnt` is the program. `-T` — include filesystem type for df.

**Output you should expect:** The program's result or error; check its `--help` for version-specific output.

**Production check:** Usually read-only, though output can contain private system data.

**If it fails:** Check permissions, relevant log lines and whether this command exists on your distribution; compare with a healthy node.

## 40. df -hT

```bash
df -hT
```

**What it does:** Checks remaining filesystem capacity or inode count.

**Syntax made simple:** `df` is the program. `-hT` — command-specific argument (verify with --help).

**Output you should expect:** Mountpoints and percent used; 100% can stop services.

**Production check:** Usually read-only, though output can contain private system data.

**If it fails:** Check permissions, relevant log lines and whether this command exists on your distribution; compare with a healthy node.

## 41. df -i

```bash
df -i
```

**What it does:** Checks remaining filesystem capacity or inode count.

**Syntax made simple:** `df` is the program. `-i` — inode counts for df, other meaning elsewhere.

**Output you should expect:** Mountpoints and percent used; 100% can stop services.

**Production check:** Usually read-only, though output can contain private system data.

**If it fails:** Check permissions, relevant log lines and whether this command exists on your distribution; compare with a healthy node.

## 42. iostat -xz 1 5

```bash
iostat -xz 1 5
```

**What it does:** Samples storage device I/O performance.

**Syntax made simple:** `iostat` is the program. `-xz` — command-specific argument (verify with --help).

**Output you should expect:** Reads/writes, latency/await and utilization.

**Production check:** Usually read-only, though output can contain private system data.

**If it fails:** Check permissions, relevant log lines and whether this command exists on your distribution; compare with a healthy node.

## 43. mount | grep -Ei 'lustre|beegfs|nfs|ceph|gpfs|cvmfs'

```bash
mount | grep -Ei 'lustre|beegfs|nfs|ceph|gpfs|cvmfs'
```

**What it does:** Displays mounts or remounts a filesystem if -o remount is passed.

**Syntax made simple:** `mount` is the program. `-Ei` — command-specific argument (verify with --help). The `|` passes text to the next tool for filtering.

**Output you should expect:** Mount list or no output on successful remount.

**Production check:** Usually read-only, though output can contain private system data.

**If it fails:** Check permissions, relevant log lines and whether this command exists on your distribution; compare with a healthy node.

## 44. journalctl -k -b --since '1 hour ago' | grep -Ei 'I/O error|nfs|lustre|beegfs|cvmfs|ceph|timeout|reset' |

```bash
journalctl -k -b --since '1 hour ago' | grep -Ei 'I/O error|nfs|lustre|beegfs|cvmfs|ceph|timeout|reset' | tail -100
```

**What it does:** Reads selected logs from the systemd journal without changing services.

**Syntax made simple:** `journalctl` is the program. `-k`, `-b`, `--since`, `-Ei`, `-100` — kernel messages for journalctl; current/specified boot for journalctl; show logs since this time; command-specific argument (verify with --help); command-specific argument (verify with --help). The `|` passes text to the next tool for filtering.

**Output you should expect:** Timestamped service/kernel messages; look just before the first failure.

**Production check:** Usually read-only, though output can contain private system data.

**If it fails:** Check permissions, relevant log lines and whether this command exists on your distribution; compare with a healthy node.

## 45. sbatch hello-slurm.sbatch

```bash
sbatch hello-slurm.sbatch
```

**What it does:** Submits a workload to Slurm, consuming shared compute resources.

**Syntax made simple:** `sbatch` is the program. Other words choose a user, service, device, filename or action.

**Output you should expect:** Assigned job ID or scheduler rejection.

**Production check:** ⚠️ May change state, credentials, or use shared compute: check authorization, backups and rollback.

**If it fails:** Check permissions, relevant log lines and whether this command exists on your distribution; compare with a healthy node.

## 46. mkdir -p logs

```bash
mkdir -p logs
```

**What it does:** This runs `mkdir` on the current server, acting on the files, services or targets named after it.

**Syntax made simple:** `mkdir` is the program. `-p` — severity for journalctl, tool-specific elsewhere.

**Output you should expect:** The program's result or error; check its `--help` for version-specific output.

**Production check:** Usually read-only, though output can contain private system data.

**If it fails:** Check permissions, relevant log lines and whether this command exists on your distribution; compare with a healthy node.

## 47. condor_submit hello.sub

```bash
condor_submit hello.sub
```

**What it does:** Submits job description to HTCondor for batch scheduling.

**Syntax made simple:** `condor_submit` is the program. Other words choose a user, service, device, filename or action.

**Output you should expect:** Submitted job/cluster ID.

**Production check:** ⚠️ May change state, credentials, or use shared compute: check authorization, backups and rollback.

**If it fails:** Check permissions, relevant log lines and whether this command exists on your distribution; compare with a healthy node.

## 48. condor_q

```bash
condor_q
```

**What it does:** Shows queued/running/held HTCondor jobs and match reasons.

**Syntax made simple:** `condor_q` is the program. Other words choose a user, service, device, filename or action.

**Output you should expect:** Job queue entries and hold details.

**Production check:** Usually read-only, though output can contain private system data.

**If it fails:** Check permissions, relevant log lines and whether this command exists on your distribution; compare with a healthy node.

## 49. condor_history -limit 10

```bash
condor_history -limit 10
```

**What it does:** This runs `condor_history` on the current server, acting on the files, services or targets named after it.

**Syntax made simple:** `condor_history` is the program. `-limit` — command-specific argument (verify with --help).

**Output you should expect:** The program's result or error; check its `--help` for version-specific output.

**Production check:** Usually read-only, though output can contain private system data.

**If it fails:** Check permissions, relevant log lines and whether this command exists on your distribution; compare with a healthy node.

## 50. srun --nodes=1 --ntasks=2 --time=00:02:00 hostname

```bash
srun --nodes=1 --ntasks=2 --time=00:02:00 hostname
```

**What it does:** Starts one or more jobs/tasks using a Slurm allocation.

**Syntax made simple:** `srun` is the program. `--nodes=1`, `--ntasks=2`, `--time=00:02:00` — command-specific argument (verify with --help); command-specific argument (verify with --help); command-specific argument (verify with --help).

**Output you should expect:** Remote task output or scheduling error.

**Production check:** ⚠️ May change state, credentials, or use shared compute: check authorization, backups and rollback.

**If it fails:** Check permissions, relevant log lines and whether this command exists on your distribution; compare with a healthy node.

## 51. sinfo -R

```bash
sinfo -R
```

**What it does:** Shows which Slurm HPC compute nodes are free, busy, drained or down.

**Syntax made simple:** `sinfo` is the program. `-R` — command-specific argument (verify with --help).

**Output you should expect:** Scheduler partitions and node availability.

**Production check:** Usually read-only, though output can contain private system data.

**If it fails:** Check permissions, relevant log lines and whether this command exists on your distribution; compare with a healthy node.

## 52. scontrol show job JOB_ID

```bash
scontrol show job JOB_ID
```

**What it does:** Queries or manages Slurm job/node details; show is read-only.

**Syntax made simple:** `scontrol` is the program. Other words choose a user, service, device, filename or action.

**Output you should expect:** Detailed node configuration, job allocation or pending reason.

**Production check:** Usually read-only, though output can contain private system data.

**If it fails:** Check permissions, relevant log lines and whether this command exists on your distribution; compare with a healthy node.

## 53. scontrol show node NODE_NAME

```bash
scontrol show node NODE_NAME
```

**What it does:** Queries or manages Slurm job/node details; show is read-only.

**Syntax made simple:** `scontrol` is the program. Other words choose a user, service, device, filename or action.

**Output you should expect:** Detailed node configuration, job allocation or pending reason.

**Production check:** Usually read-only, though output can contain private system data.

**If it fails:** Check permissions, relevant log lines and whether this command exists on your distribution; compare with a healthy node.

## 54. sacct -j JOB_ID --format=JobID,JobName,State,ExitCode,Elapsed,MaxRSS

```bash
sacct -j JOB_ID --format=JobID,JobName,State,ExitCode,Elapsed,MaxRSS
```

**What it does:** Looks up Slurm job accounting and failures.

**Syntax made simple:** `sacct` is the program. `-j`, `--format=JobID,JobName,State,ExitCode,Elapsed,MaxRSS` — command-specific argument (verify with --help); select output columns.

**Output you should expect:** Historical jobs, exit codes and resources.

**Production check:** Usually read-only, though output can contain private system data.

**If it fails:** Check permissions, relevant log lines and whether this command exists on your distribution; compare with a healthy node.

## 55. sstat -j JOB_ID --format=AveCPU,AveRSS,MaxRSS

```bash
sstat -j JOB_ID --format=AveCPU,AveRSS,MaxRSS
```

**What it does:** This runs `sstat` on the current server, acting on the files, services or targets named after it.

**Syntax made simple:** `sstat` is the program. `-j`, `--format=AveCPU,AveRSS,MaxRSS` — command-specific argument (verify with --help); select output columns.

**Output you should expect:** The program's result or error; check its `--help` for version-specific output.

**Production check:** Usually read-only, though output can contain private system data.

**If it fails:** Check permissions, relevant log lines and whether this command exists on your distribution; compare with a healthy node.

## 56. journalctl -u slurmd -b --no-pager -n 120

```bash
journalctl -u slurmd -b --no-pager -n 120
```

**What it does:** Reads selected logs from the systemd journal without changing services.

**Syntax made simple:** `journalctl` is the program. `-u`, `-b`, `--no-pager`, `-n` — systemd service filter for journalctl; current/specified boot for journalctl; print without an interactive pager; last N lines or namespace, depending on tool.

**Output you should expect:** Timestamped service/kernel messages; look just before the first failure.

**Production check:** Usually read-only, though output can contain private system data.

**If it fails:** Check permissions, relevant log lines and whether this command exists on your distribution; compare with a healthy node.

## 57. journalctl -u slurmctld -b --no-pager -n 120

```bash
journalctl -u slurmctld -b --no-pager -n 120
```

**What it does:** Reads selected logs from the systemd journal without changing services.

**Syntax made simple:** `journalctl` is the program. `-u`, `-b`, `--no-pager`, `-n` — systemd service filter for journalctl; current/specified boot for journalctl; print without an interactive pager; last N lines or namespace, depending on tool.

**Output you should expect:** Timestamped service/kernel messages; look just before the first failure.

**Production check:** Usually read-only, though output can contain private system data.

**If it fails:** Check permissions, relevant log lines and whether this command exists on your distribution; compare with a healthy node.

## 58. condor_q -hold

```bash
condor_q -hold
```

**What it does:** Shows queued/running/held HTCondor jobs and match reasons.

**Syntax made simple:** `condor_q` is the program. `-hold` — command-specific argument (verify with --help).

**Output you should expect:** Job queue entries and hold details.

**Production check:** Usually read-only, though output can contain private system data.

**If it fails:** Check permissions, relevant log lines and whether this command exists on your distribution; compare with a healthy node.

## 59. condor_q -better-analyze JOB_ID

```bash
condor_q -better-analyze JOB_ID
```

**What it does:** Shows queued/running/held HTCondor jobs and match reasons.

**Syntax made simple:** `condor_q` is the program. `-better-analyze` — command-specific argument (verify with --help).

**Output you should expect:** Job queue entries and hold details.

**Production check:** Usually read-only, though output can contain private system data.

**If it fails:** Check permissions, relevant log lines and whether this command exists on your distribution; compare with a healthy node.

## 60. condor_q -long JOB_ID | head -80

```bash
condor_q -long JOB_ID | head -80
```

**What it does:** Shows queued/running/held HTCondor jobs and match reasons.

**Syntax made simple:** `condor_q` is the program. `-long`, `-80` — command-specific argument (verify with --help); command-specific argument (verify with --help). The `|` passes text to the next tool for filtering.

**Output you should expect:** Job queue entries and hold details.

**Production check:** Usually read-only, though output can contain private system data.

**If it fails:** Check permissions, relevant log lines and whether this command exists on your distribution; compare with a healthy node.

## 61. condor_status -total

```bash
condor_status -total
```

**What it does:** Shows advertised HTCondor worker slots and resource state.

**Syntax made simple:** `condor_status` is the program. `-total` — command-specific argument (verify with --help).

**Output you should expect:** Available compute slots and pool health.

**Production check:** Usually read-only, though output can contain private system data.

**If it fails:** Check permissions, relevant log lines and whether this command exists on your distribution; compare with a healthy node.

## 62. condor_history -limit 25

```bash
condor_history -limit 25
```

**What it does:** This runs `condor_history` on the current server, acting on the files, services or targets named after it.

**Syntax made simple:** `condor_history` is the program. `-limit` — command-specific argument (verify with --help).

**Output you should expect:** The program's result or error; check its `--help` for version-specific output.

**Production check:** Usually read-only, though output can contain private system data.

**If it fails:** Check permissions, relevant log lines and whether this command exists on your distribution; compare with a healthy node.

## 63. condor_ping -type SCHEDD READ

```bash
condor_ping -type SCHEDD READ
```

**What it does:** This runs `condor_ping` on the current server, acting on the files, services or targets named after it.

**Syntax made simple:** `condor_ping` is the program. `-type` — command-specific argument (verify with --help).

**Output you should expect:** The program's result or error; check its `--help` for version-specific output.

**Production check:** Usually read-only, though output can contain private system data.

**If it fails:** Check permissions, relevant log lines and whether this command exists on your distribution; compare with a healthy node.

