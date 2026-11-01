# Offline explanations: 11-CERN-STYLE-HPC-HTC-PARALLEL-COMPUTING.md

Source: [11-CERN-STYLE-HPC-HTC-PARALLEL-COMPUTING.md](../11-CERN-STYLE-HPC-HTC-PARALLEL-COMPUTING.md). This is a **local, internet-independent** explanation of every terminal example in the runbook, with syntax, prerequisites and operational risk. Validate against actual installed releases.

## 1. hostnamectl

```bash
hostnamectl
```

**What it does:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics.

**Complete command form:** `hostnamectl` is the executable; the remaining words are targets/subcommands and options. No named options.. Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 2. lscpu

```bash
lscpu
```

**What it does:** CPU architecture/NUMA topology.

**Complete command form:** `lscpu` is the executable; the remaining words are targets/subcommands and options. No named options.. Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** CPU architecture/NUMA topology. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 3. numactl --hardware

```bash
numactl --hardware
```

**What it does:** Display or set process NUMA/memory bindings.

**Complete command form:** `numactl` is the executable; the remaining words are targets/subcommands and options. Options: `--hardware` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Display or set process NUMA/memory bindings. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 4. free -h

```bash
free -h
```

**What it does:** Read physical memory and swap statistics.

**Complete command form:** `free` is the executable; the remaining words are targets/subcommands and options. Options: `-h` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Read physical memory and swap statistics. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 5. lsblk -o NAME,TYPE,SIZE,FSTYPE,MOUNTPOINTS

```bash
lsblk -o NAME,TYPE,SIZE,FSTYPE,MOUNTPOINTS
```

**What it does:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics.

**Complete command form:** `lsblk` is the executable; the remaining words are targets/subcommands and options. Options: `-o` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 6. ip -br link

```bash
ip -br link
```

**What it does:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics.

**Complete command form:** `ip` is the executable; the remaining words are targets/subcommands and options. Options: `-br` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 7. lspci | grep -Ei 'Mellanox|NVIDIA|AMD|network|infiniband'

```bash
lspci | grep -Ei 'Mellanox|NVIDIA|AMD|network|infiniband'
```

**What it does:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics.

**Complete command form:** `lspci` is the executable; the remaining words are targets/subcommands and options. Options: `-Ei` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 8. uptime

```bash
uptime
```

**What it does:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics.

**Complete command form:** `uptime` is the executable; the remaining words are targets/subcommands and options. No named options.. Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 9. sinfo -Nel

```bash
sinfo -Nel
```

**What it does:** Show Slurm compute partitions/nodes.

**Complete command form:** `sinfo` is the executable; the remaining words are targets/subcommands and options. Options: `-Nel` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Show Slurm compute partitions/nodes. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 10. squeue -o '%.18i %.9P %.22j %.8u %.2t %.10M %.6D %R'

```bash
squeue -o '%.18i %.9P %.22j %.8u %.2t %.10M %.6D %R'
```

**What it does:** List Slurm pending/running jobs.

**Complete command form:** `squeue` is the executable; the remaining words are targets/subcommands and options. Options: `-o` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** List Slurm pending/running jobs. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 11. scontrol ping

```bash
scontrol ping
```

**What it does:** Slurm scheduler node/job/partition status or change.

**Complete command form:** `scontrol` is the executable; the remaining words are targets/subcommands and options. No named options.. Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Slurm scheduler node/job/partition status or change. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 12. scontrol show partition

```bash
scontrol show partition
```

**What it does:** Slurm scheduler node/job/partition status or change.

**Complete command form:** `scontrol` is the executable; the remaining words are targets/subcommands and options. No named options.. Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Slurm scheduler node/job/partition status or change. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 13. scontrol show nodes

```bash
scontrol show nodes
```

**What it does:** Slurm scheduler node/job/partition status or change.

**Complete command form:** `scontrol` is the executable; the remaining words are targets/subcommands and options. No named options.. Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Slurm scheduler node/job/partition status or change. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 14. sdiag

```bash
sdiag
```

**What it does:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics.

**Complete command form:** `sdiag` is the executable; the remaining words are targets/subcommands and options. No named options.. Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 15. sacct -S today --format=JobID,JobName,State,Elapsed,AllocCPUS,MaxRSS -n

```bash
sacct -S today --format=JobID,JobName,State,Elapsed,AllocCPUS,MaxRSS -n
```

**What it does:** Slurm accounting and job history.

**Complete command form:** `sacct` is the executable; the remaining words are targets/subcommands and options. Options: `-S` (confirm tool-specific help); `--format=JobID,JobName,State,Elapsed,AllocCPUS,MaxRSS` (confirm tool-specific help); `-n` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Slurm accounting and job history. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 16. condor_version

```bash
condor_version
```

**What it does:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics.

**Complete command form:** `condor_version` is the executable; the remaining words are targets/subcommands and options. No named options.. Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 17. condor_status -total

```bash
condor_status -total
```

**What it does:** Display HTCondor pool resource advertisements.

**Complete command form:** `condor_status` is the executable; the remaining words are targets/subcommands and options. Options: `-total` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Display HTCondor pool resource advertisements. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 18. condor_status -schedd

```bash
condor_status -schedd
```

**What it does:** Display HTCondor pool resource advertisements.

**Complete command form:** `condor_status` is the executable; the remaining words are targets/subcommands and options. Options: `-schedd` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Display HTCondor pool resource advertisements. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 19. condor_q

```bash
condor_q
```

**What it does:** Display HTCondor jobs and hold reasons.

**Complete command form:** `condor_q` is the executable; the remaining words are targets/subcommands and options. No named options.. Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Display HTCondor jobs and hold reasons. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 20. condor_q -better-analyze JOB_ID

```bash
condor_q -better-analyze JOB_ID
```

**What it does:** Display HTCondor jobs and hold reasons.

**Complete command form:** `condor_q` is the executable; the remaining words are targets/subcommands and options. Options: `-better-analyze` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** JOB_ID. Replace only with authorized target values.

**Expected output:** Display HTCondor jobs and hold reasons. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 21. condor_history -limit 20

```bash
condor_history -limit 20
```

**What it does:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics.

**Complete command form:** `condor_history` is the executable; the remaining words are targets/subcommands and options. Options: `-limit` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 22. condor_status -af Name State Activity

```bash
condor_status -af Name State Activity
```

**What it does:** Display HTCondor pool resource advertisements.

**Complete command form:** `condor_status` is the executable; the remaining words are targets/subcommands and options. Options: `-af` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Display HTCondor pool resource advertisements. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 23. mpirun --version

```bash
mpirun --version
```

**What it does:** Launch parallel MPI ranks.

**Complete command form:** `mpirun` is the executable; the remaining words are targets/subcommands and options. Options: `--version` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Launch parallel MPI ranks. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 24. mpicc --version

```bash
mpicc --version
```

**What it does:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics.

**Complete command form:** `mpicc` is the executable; the remaining words are targets/subcommands and options. Options: `--version` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 25. module avail

```bash
module avail
```

**What it does:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics.

**Complete command form:** `module` is the executable; the remaining words are targets/subcommands and options. No named options.. Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 26. module list

```bash
module list
```

**What it does:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics.

**Complete command form:** `module` is the executable; the remaining words are targets/subcommands and options. No named options.. Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 27. ulimit -a

```bash
ulimit -a
```

**What it does:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics.

**Complete command form:** `ulimit` is the executable; the remaining words are targets/subcommands and options. Options: `-a` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 28. numactl --show

```bash
numactl --show
```

**What it does:** Display or set process NUMA/memory bindings.

**Complete command form:** `numactl` is the executable; the remaining words are targets/subcommands and options. Options: `--show` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Display or set process NUMA/memory bindings. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 29. taskset -pc YOUR_PID

```bash
taskset -pc YOUR_PID
```

**What it does:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics.

**Complete command form:** `taskset` is the executable; the remaining words are targets/subcommands and options. Options: `-pc` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** YOUR_PID. Replace only with authorized target values.

**Expected output:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 30. mpirun --help | head -40

```bash
mpirun --help | head -40
```

**What it does:** Launch parallel MPI ranks.

**Complete command form:** `mpirun` is the executable; the remaining words are targets/subcommands and options. Options: `--help` (confirm tool-specific help); `-40` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Launch parallel MPI ranks. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 31. nvidia-smi -L

```bash
nvidia-smi -L
```

**What it does:** NVIDIA GPU inventory, load, memory and fault counters.

**Complete command form:** `nvidia-smi` is the executable; the remaining words are targets/subcommands and options. Options: `-L` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** NVIDIA GPU inventory, load, memory and fault counters. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 32. nvidia-smi --query-gpu=index,name,uuid,memory.total,utilization.gpu,temperature.gpu --format=csv

```bash
nvidia-smi --query-gpu=index,name,uuid,memory.total,utilization.gpu,temperature.gpu --format=csv
```

**What it does:** NVIDIA GPU inventory, load, memory and fault counters.

**Complete command form:** `nvidia-smi` is the executable; the remaining words are targets/subcommands and options. Options: `--query-gpu=index,name,uuid,memory.total,utilization.gpu,temperature.gpu` (confirm tool-specific help); `--format=csv` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** NVIDIA GPU inventory, load, memory and fault counters. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 33. ibstat

```bash
ibstat
```

**What it does:** InfiniBand link inventory/status.

**Complete command form:** `ibstat` is the executable; the remaining words are targets/subcommands and options. No named options.. Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** InfiniBand link inventory/status. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 34. ibv_devices

```bash
ibv_devices
```

**What it does:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics.

**Complete command form:** `ibv_devices` is the executable; the remaining words are targets/subcommands and options. No named options.. Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 35. ibv_devinfo

```bash
ibv_devinfo
```

**What it does:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics.

**Complete command form:** `ibv_devinfo` is the executable; the remaining words are targets/subcommands and options. No named options.. Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 36. rdma link show

```bash
rdma link show
```

**What it does:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics.

**Complete command form:** `rdma` is the executable; the remaining words are targets/subcommands and options. No named options.. Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 37. ethtool -S YOUR_INTERFACE | head -70

```bash
ethtool -S YOUR_INTERFACE | head -70
```

**What it does:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics.

**Complete command form:** `ethtool` is the executable; the remaining words are targets/subcommands and options. Options: `-S` (confirm tool-specific help); `-70` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** YOUR_INTERFACE. Replace only with authorized target values.

**Expected output:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 38. journalctl -k -b --since '1 hour ago' | grep -Ei 'mlx5|infiniband|rdma|nvlink|xid|aer|pcie|timeout' | tai

```bash
journalctl -k -b --since '1 hour ago' | grep -Ei 'mlx5|infiniband|rdma|nvlink|xid|aer|pcie|timeout' | tail -100
```

**What it does:** Read service/kernel journal logs filtered by arguments.

**Complete command form:** `journalctl` is the executable; the remaining words are targets/subcommands and options. Options: `-k` (confirm tool-specific help); `-b` (confirm tool-specific help); `--since` (confirm tool-specific help); `-Ei` (confirm tool-specific help); `-100` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Read service/kernel journal logs filtered by arguments. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 39. findmnt -T /scratch

```bash
findmnt -T /scratch
```

**What it does:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics.

**Complete command form:** `findmnt` is the executable; the remaining words are targets/subcommands and options. Options: `-T` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 40. df -hT

```bash
df -hT
```

**What it does:** Report available disk blocks/inodes.

**Complete command form:** `df` is the executable; the remaining words are targets/subcommands and options. Options: `-hT` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Report available disk blocks/inodes. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 41. df -i

```bash
df -i
```

**What it does:** Report available disk blocks/inodes.

**Complete command form:** `df` is the executable; the remaining words are targets/subcommands and options. Options: `-i` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Report available disk blocks/inodes. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 42. iostat -xz 1 5

```bash
iostat -xz 1 5
```

**What it does:** Disk utilization, queue depth and latency report.

**Complete command form:** `iostat` is the executable; the remaining words are targets/subcommands and options. Options: `-xz` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Disk utilization, queue depth and latency report. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 43. mount | grep -Ei 'lustre|beegfs|nfs|ceph|gpfs|cvmfs'

```bash
mount | grep -Ei 'lustre|beegfs|nfs|ceph|gpfs|cvmfs'
```

**What it does:** Show or alter filesystem mounts.

**Complete command form:** `mount` is the executable; the remaining words are targets/subcommands and options. Options: `-Ei` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Show or alter filesystem mounts. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 44. journalctl -k -b --since '1 hour ago' | grep -Ei 'I/O error|nfs|lustre|beegfs|cvmfs|ceph|timeout|reset' |

```bash
journalctl -k -b --since '1 hour ago' | grep -Ei 'I/O error|nfs|lustre|beegfs|cvmfs|ceph|timeout|reset' | tail -100
```

**What it does:** Read service/kernel journal logs filtered by arguments.

**Complete command form:** `journalctl` is the executable; the remaining words are targets/subcommands and options. Options: `-k` (confirm tool-specific help); `-b` (confirm tool-specific help); `--since` (confirm tool-specific help); `-Ei` (confirm tool-specific help); `-100` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Read service/kernel journal logs filtered by arguments. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟠 Action may modify host, credentials or allocate batch resources; require approval and rollback.

## 45. sbatch hello-slurm.sbatch

```bash
sbatch hello-slurm.sbatch
```

**What it does:** Submit a scheduled Slurm batch workload.

**Complete command form:** `sbatch` is the executable; the remaining words are targets/subcommands and options. No named options.. Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Submit a scheduled Slurm batch workload. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟠 Action may modify host, credentials or allocate batch resources; require approval and rollback.

## 46. mkdir -p logs

```bash
mkdir -p logs
```

**What it does:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics.

**Complete command form:** `mkdir` is the executable; the remaining words are targets/subcommands and options. Options: `-p` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 47. condor_submit hello.sub

```bash
condor_submit hello.sub
```

**What it does:** Submit batch job to HTCondor queue.

**Complete command form:** `condor_submit` is the executable; the remaining words are targets/subcommands and options. No named options.. Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Submit batch job to HTCondor queue. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟠 Action may modify host, credentials or allocate batch resources; require approval and rollback.

## 48. condor_q

```bash
condor_q
```

**What it does:** Display HTCondor jobs and hold reasons.

**Complete command form:** `condor_q` is the executable; the remaining words are targets/subcommands and options. No named options.. Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Display HTCondor jobs and hold reasons. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 49. condor_history -limit 10

```bash
condor_history -limit 10
```

**What it does:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics.

**Complete command form:** `condor_history` is the executable; the remaining words are targets/subcommands and options. Options: `-limit` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 50. srun --nodes=1 --ntasks=2 --time=00:02:00 hostname

```bash
srun --nodes=1 --ntasks=2 --time=00:02:00 hostname
```

**What it does:** Launch tasks on an allocated Slurm resource.

**Complete command form:** `srun` is the executable; the remaining words are targets/subcommands and options. Options: `--nodes=1` (confirm tool-specific help); `--ntasks=2` (confirm tool-specific help); `--time=00:02:00` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Launch tasks on an allocated Slurm resource. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟠 Action may modify host, credentials or allocate batch resources; require approval and rollback.

## 51. sinfo -R

```bash
sinfo -R
```

**What it does:** Show Slurm compute partitions/nodes.

**Complete command form:** `sinfo` is the executable; the remaining words are targets/subcommands and options. Options: `-R` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Show Slurm compute partitions/nodes. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 52. scontrol show job JOB_ID

```bash
scontrol show job JOB_ID
```

**What it does:** Slurm scheduler node/job/partition status or change.

**Complete command form:** `scontrol` is the executable; the remaining words are targets/subcommands and options. No named options.. Shell pipes forward output, while redirects can write local files.

**Environment and variables:** JOB_ID. Replace only with authorized target values.

**Expected output:** Slurm scheduler node/job/partition status or change. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 53. scontrol show node NODE_NAME

```bash
scontrol show node NODE_NAME
```

**What it does:** Slurm scheduler node/job/partition status or change.

**Complete command form:** `scontrol` is the executable; the remaining words are targets/subcommands and options. No named options.. Shell pipes forward output, while redirects can write local files.

**Environment and variables:** NODE_NAME. Replace only with authorized target values.

**Expected output:** Slurm scheduler node/job/partition status or change. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 54. sacct -j JOB_ID --format=JobID,JobName,State,ExitCode,Elapsed,MaxRSS

```bash
sacct -j JOB_ID --format=JobID,JobName,State,ExitCode,Elapsed,MaxRSS
```

**What it does:** Slurm accounting and job history.

**Complete command form:** `sacct` is the executable; the remaining words are targets/subcommands and options. Options: `-j` (confirm tool-specific help); `--format=JobID,JobName,State,ExitCode,Elapsed,MaxRSS` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** JOB_ID. Replace only with authorized target values.

**Expected output:** Slurm accounting and job history. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 55. sstat -j JOB_ID --format=AveCPU,AveRSS,MaxRSS

```bash
sstat -j JOB_ID --format=AveCPU,AveRSS,MaxRSS
```

**What it does:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics.

**Complete command form:** `sstat` is the executable; the remaining words are targets/subcommands and options. Options: `-j` (confirm tool-specific help); `--format=AveCPU,AveRSS,MaxRSS` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** JOB_ID. Replace only with authorized target values.

**Expected output:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 56. journalctl -u slurmd -b --no-pager -n 120

```bash
journalctl -u slurmd -b --no-pager -n 120
```

**What it does:** Read service/kernel journal logs filtered by arguments.

**Complete command form:** `journalctl` is the executable; the remaining words are targets/subcommands and options. Options: `-u` (confirm tool-specific help); `-b` (confirm tool-specific help); `--no-pager` (confirm tool-specific help); `-n` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Read service/kernel journal logs filtered by arguments. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 57. journalctl -u slurmctld -b --no-pager -n 120

```bash
journalctl -u slurmctld -b --no-pager -n 120
```

**What it does:** Read service/kernel journal logs filtered by arguments.

**Complete command form:** `journalctl` is the executable; the remaining words are targets/subcommands and options. Options: `-u` (confirm tool-specific help); `-b` (confirm tool-specific help); `--no-pager` (confirm tool-specific help); `-n` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Read service/kernel journal logs filtered by arguments. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 58. condor_q -hold

```bash
condor_q -hold
```

**What it does:** Display HTCondor jobs and hold reasons.

**Complete command form:** `condor_q` is the executable; the remaining words are targets/subcommands and options. Options: `-hold` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Display HTCondor jobs and hold reasons. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 59. condor_q -better-analyze JOB_ID

```bash
condor_q -better-analyze JOB_ID
```

**What it does:** Display HTCondor jobs and hold reasons.

**Complete command form:** `condor_q` is the executable; the remaining words are targets/subcommands and options. Options: `-better-analyze` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** JOB_ID. Replace only with authorized target values.

**Expected output:** Display HTCondor jobs and hold reasons. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 60. condor_q -long JOB_ID | head -80

```bash
condor_q -long JOB_ID | head -80
```

**What it does:** Display HTCondor jobs and hold reasons.

**Complete command form:** `condor_q` is the executable; the remaining words are targets/subcommands and options. Options: `-long` (confirm tool-specific help); `-80` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** JOB_ID. Replace only with authorized target values.

**Expected output:** Display HTCondor jobs and hold reasons. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 61. condor_status -total

```bash
condor_status -total
```

**What it does:** Display HTCondor pool resource advertisements.

**Complete command form:** `condor_status` is the executable; the remaining words are targets/subcommands and options. Options: `-total` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Display HTCondor pool resource advertisements. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 62. condor_history -limit 25

```bash
condor_history -limit 25
```

**What it does:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics.

**Complete command form:** `condor_history` is the executable; the remaining words are targets/subcommands and options. Options: `-limit` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 63. condor_ping -type SCHEDD READ

```bash
condor_ping -type SCHEDD READ
```

**What it does:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics.

**Complete command form:** `condor_ping` is the executable; the remaining words are targets/subcommands and options. Options: `-type` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

