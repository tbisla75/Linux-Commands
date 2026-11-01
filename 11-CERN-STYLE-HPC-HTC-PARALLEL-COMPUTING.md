# 11 — CERN-style Linux parallel computing: HTC, HPC, grid and GPU clusters

> This is an **educational enterprise architecture and operator runbook**, not a claim that CERN runs a single Slurm supercomputer. CERN's scientific workloads span **high-throughput batch processing**, **Worldwide LHC Computing Grid (WLCG)**, data storage/distribution, traditional **high-performance MPI computing**, and ML/GPU infrastructure. Their public reports document **HTCondor** as a CERN batch scheduler; **Slurm** below is an alternative for tightly coupled multi-node HPC, **not asserted to be CERN's default production batch scheduler**. Use only authorized cluster access. Commands are copy/paste references; scheduler commands that submit jobs create resource usage.

## HPC vs HTC vs Grid: choose the correct computing model

| Model | Parallelism | Scheduler/model | Best for | Primary bottleneck |
|---|---|---|---|---|
| **HTC** (high-throughput computing) | Thousands/millions of largely independent jobs | **HTCondor**, grid job brokers | Particle event analysis, simulations, large batch campaigns | Aggregate throughput, queue time, data movement |
| **HPC** (high-performance computing) | Tightly coupled parallel processes across nodes | **Slurm** + **MPI/OpenMP** | CFD, tightly coupled numerical simulation, scientific solvers | Network latency, collective communications, memory bandwidth |
| **GPU/AI computing** | Many accelerators and possibly nodes | Slurm GPU scheduling, Kubernetes GPU Operator, PyTorch Distributed | Model training, inference, scientific GPU kernels | GPU memory, NVLink/RDMA fabric, collective throughput |
| **Grid / federated HTC** | Jobs and data across organizations/sites | WLCG / HTCondor-CE / ARC-CE / site schedulers | Global physics collaboration | Authentication, file distribution, WAN and data locality |

CERN's [WLCG](https://home.cern/science/computing/grid/) is a geographically distributed computing grid. CERN [describes HTCondor as its batch workload management platform](https://home.cern/when-failure-good-news/). Do **not** equate WLCG with a single tightly coupled MPI cluster.

## Architecture and node sizing — examples, not CERN inventory

```text
Researchers / GitLab / SSH / Jupyter / Science workflows
                      |
            2 login / submit nodes
                      |
           Scheduler control plane
           HTCondor central manager OR Slurm controller
           + standby & accounting DB for HA
                      |
          +-----------+------------+
          |                        |
       CPU farm                  GPU/MPI partition
       worker-01..N              gpu-01..N
          |                        |
     25/100GbE Ethernet    low-latency InfiniBand/RoCE fabric
          +-----------+------------+
                      |
             shared filesystem / object storage
             CVMFS software, EOS or site-specific data
                      |
          monitoring / logs / quotas / IAM / backup
```

| Tier | CPU compute nodes | Scheduler/management | Login/submit nodes | Storage and interconnect |
|---|---:|---|---:|---|
| **Learning / proof of concept** | 2–4 | 1 | 1 (may be combined in a lab) | Local/NFS or test Ceph, 10GbE if available |
| **Small production** | 8–32 | 2 HA controllers plus accounting as applicable | 2 | Redundant shared storage, >=25GbE as required |
| **Mid-sized research/enterprise** | 32–256 | HA controller pair / dedicated DB, monitoring | 2–4 | Parallel FS or scale-out object storage, 25/100/200Gb fabric by workload |
| **Large distributed facility** | Hundreds to thousands | Multiple pools/partitions or federated sites; HA front ends | Dedicated submit pools | Multiple storage tiers, high-bandwidth WAN, 100/200/400Gb where justified |

**These are conceptual capacity examples—not minimum vendor requirements or CERN's current node counts.** Size from *jobs/day, target wait time, core-hours, RAM/job, I/O per job, GPU needs, N+1, power/cooling, RPO/RTO, security boundaries*. A 3-node Slurm prototype does not deliver multi-controller fault tolerance. Compute node HA is usually achieved through **rescheduling/retrying/checkpointing**, not making every compute node active/passive with Pacemaker.

## Component selection

- **HTCondor**: collector, negotiator, submit (schedd) daemons, execute nodes, ClassAds, queue policies; multi-site/grid integration where justified.
- **Slurm**: `slurmctld` controller + standby option, `slurmd` workers, `slurmdbd` accounting, partitions, GRES/GPU accounting, cgroups and fairshare.
- **MPI**: Open MPI / MPICH / vendor MPI; match ABI, compiler, process manager and transport.
- **OpenMP**: shared-memory parallelism within a node; plan CPU binding and NUMA.
- **Networking**: Ethernet for independent batch, RDMA/InfiniBand or supported RoCE network for communication-intensive MPI.
- **Storage**: data locality and IO profiling; Lustre, BeeGFS, IBM Storage Scale (GPFS), Ceph/EOS and CVMFS depending on requirements and vendor support.
- **Software deployment**: environment modules (Lmod), Spack, Apptainer or compatible containers; pin versions and reproducible builds.
- **Identity**: federated identities, Kerberos/OIDC, SSH bastions, RBAC, per-user quotas, audited elevated access.
- **Observability**: Prometheus exporters, scheduler metrics, node logs, GPU DCGM, NIC/RDMA counters, filesystem metrics and batch-job accounting.
- **DR**: checkpoint jobs, replicate critical data and backed-up scheduler config/DB; restoring a job queue alone does not restore lost scientific output.

## First-minute HPC/HTC incident triage

## Linux hardware and NUMA baseline — READ ONLY

Run on an approved compute node. Many tools require packages provided by sysstat, numactl, pciutils or rdma-core.

```bash
hostnamectl
lscpu
numactl --hardware
free -h
lsblk -o NAME,TYPE,SIZE,FSTYPE,MOUNTPOINTS
ip -br link
lspci | grep -Ei 'Mellanox|NVIDIA|AMD|network|infiniband'
uptime
```

<details>
<summary>🧠 Explain each command in ChatGPT (8)</summary>

- [1. Explain `hostnamectl`](https://chatgpt.com/?q=Explain%20this%20Linux%20scientific%20computing%2FHPC%2FHTC%20command%20in%20detail.%20Break%20down%20every%20flag%2C%20argument%2C%20environment%20variable%2C%20expected%20output%2C%20requirements%2C%20scheduler%20permissions%2C%20production%20impact%2C%20common%20errors%20and%20safe%20troubleshooting.%20Do%20not%20execute.%20Command%3A%20hostnamectl)
- [2. Explain `lscpu`](https://chatgpt.com/?q=Explain%20this%20Linux%20scientific%20computing%2FHPC%2FHTC%20command%20in%20detail.%20Break%20down%20every%20flag%2C%20argument%2C%20environment%20variable%2C%20expected%20output%2C%20requirements%2C%20scheduler%20permissions%2C%20production%20impact%2C%20common%20errors%20and%20safe%20troubleshooting.%20Do%20not%20execute.%20Command%3A%20lscpu)
- [3. Explain `numactl --hardware`](https://chatgpt.com/?q=Explain%20this%20Linux%20scientific%20computing%2FHPC%2FHTC%20command%20in%20detail.%20Break%20down%20every%20flag%2C%20argument%2C%20environment%20variable%2C%20expected%20output%2C%20requirements%2C%20scheduler%20permissions%2C%20production%20impact%2C%20common%20errors%20and%20safe%20troubleshooting.%20Do%20not%20execute.%20Command%3A%20numactl%20--hardware)
- [4. Explain `free -h`](https://chatgpt.com/?q=Explain%20this%20Linux%20scientific%20computing%2FHPC%2FHTC%20command%20in%20detail.%20Break%20down%20every%20flag%2C%20argument%2C%20environment%20variable%2C%20expected%20output%2C%20requirements%2C%20scheduler%20permissions%2C%20production%20impact%2C%20common%20errors%20and%20safe%20troubleshooting.%20Do%20not%20execute.%20Command%3A%20free%20-h)
- [5. Explain `lsblk -o NAME,TYPE,SIZE,FSTYPE,MOUNTPOINTS`](https://chatgpt.com/?q=Explain%20this%20Linux%20scientific%20computing%2FHPC%2FHTC%20command%20in%20detail.%20Break%20down%20every%20flag%2C%20argument%2C%20environment%20variable%2C%20expected%20output%2C%20requirements%2C%20scheduler%20permissions%2C%20production%20impact%2C%20common%20errors%20and%20safe%20troubleshooting.%20Do%20not%20execute.%20Command%3A%20lsblk%20-o%20NAME%2CTYPE%2CSIZE%2CFSTYPE%2CMOUNTPOINTS)
- [6. Explain `ip -br link`](https://chatgpt.com/?q=Explain%20this%20Linux%20scientific%20computing%2FHPC%2FHTC%20command%20in%20detail.%20Break%20down%20every%20flag%2C%20argument%2C%20environment%20variable%2C%20expected%20output%2C%20requirements%2C%20scheduler%20permissions%2C%20production%20impact%2C%20common%20errors%20and%20safe%20troubleshooting.%20Do%20not%20execute.%20Command%3A%20ip%20-br%20link)
- [7. Explain `lspci | grep -Ei 'Mellanox|NVIDIA|AMD|network|infiniband'`](https://chatgpt.com/?q=Explain%20this%20Linux%20scientific%20computing%2FHPC%2FHTC%20command%20in%20detail.%20Break%20down%20every%20flag%2C%20argument%2C%20environment%20variable%2C%20expected%20output%2C%20requirements%2C%20scheduler%20permissions%2C%20production%20impact%2C%20common%20errors%20and%20safe%20troubleshooting.%20Do%20not%20execute.%20Command%3A%20lspci%20%7C%20grep%20-Ei%20'Mellanox%7CNVIDIA%7CAMD%7Cnetwork%7Cinfiniband')
- [8. Explain `uptime`](https://chatgpt.com/?q=Explain%20this%20Linux%20scientific%20computing%2FHPC%2FHTC%20command%20in%20detail.%20Break%20down%20every%20flag%2C%20argument%2C%20environment%20variable%2C%20expected%20output%2C%20requirements%2C%20scheduler%20permissions%2C%20production%20impact%2C%20common%20errors%20and%20safe%20troubleshooting.%20Do%20not%20execute.%20Command%3A%20uptime)

</details>

## Slurm cluster health — READ ONLY

Run these on the authorized Slurm login node. `squeue` can expose account/job names; sanitize output.

```bash
sinfo -Nel
squeue -o '%.18i %.9P %.22j %.8u %.2t %.10M %.6D %R'
scontrol ping
scontrol show partition
scontrol show nodes
sdiag
sacct -S today --format=JobID,JobName,State,Elapsed,AllocCPUS,MaxRSS -n
```

<details>
<summary>🧠 Explain each command in ChatGPT (7)</summary>

- [1. Explain `sinfo -Nel`](https://chatgpt.com/?q=Explain%20this%20Linux%20scientific%20computing%2FHPC%2FHTC%20command%20in%20detail.%20Break%20down%20every%20flag%2C%20argument%2C%20environment%20variable%2C%20expected%20output%2C%20requirements%2C%20scheduler%20permissions%2C%20production%20impact%2C%20common%20errors%20and%20safe%20troubleshooting.%20Do%20not%20execute.%20Command%3A%20sinfo%20-Nel)
- [2. Explain `squeue -o '%.18i %.9P %.22j %.8u %.2t %.10M %.6D %R'`](https://chatgpt.com/?q=Explain%20this%20Linux%20scientific%20computing%2FHPC%2FHTC%20command%20in%20detail.%20Break%20down%20every%20flag%2C%20argument%2C%20environment%20variable%2C%20expected%20output%2C%20requirements%2C%20scheduler%20permissions%2C%20production%20impact%2C%20common%20errors%20and%20safe%20troubleshooting.%20Do%20not%20execute.%20Command%3A%20squeue%20-o%20'%25.18i%20%25.9P%20%25.22j%20%25.8u%20%25.2t%20%25.10M%20%25.6D%20%25R')
- [3. Explain `scontrol ping`](https://chatgpt.com/?q=Explain%20this%20Linux%20scientific%20computing%2FHPC%2FHTC%20command%20in%20detail.%20Break%20down%20every%20flag%2C%20argument%2C%20environment%20variable%2C%20expected%20output%2C%20requirements%2C%20scheduler%20permissions%2C%20production%20impact%2C%20common%20errors%20and%20safe%20troubleshooting.%20Do%20not%20execute.%20Command%3A%20scontrol%20ping)
- [4. Explain `scontrol show partition`](https://chatgpt.com/?q=Explain%20this%20Linux%20scientific%20computing%2FHPC%2FHTC%20command%20in%20detail.%20Break%20down%20every%20flag%2C%20argument%2C%20environment%20variable%2C%20expected%20output%2C%20requirements%2C%20scheduler%20permissions%2C%20production%20impact%2C%20common%20errors%20and%20safe%20troubleshooting.%20Do%20not%20execute.%20Command%3A%20scontrol%20show%20partition)
- [5. Explain `scontrol show nodes`](https://chatgpt.com/?q=Explain%20this%20Linux%20scientific%20computing%2FHPC%2FHTC%20command%20in%20detail.%20Break%20down%20every%20flag%2C%20argument%2C%20environment%20variable%2C%20expected%20output%2C%20requirements%2C%20scheduler%20permissions%2C%20production%20impact%2C%20common%20errors%20and%20safe%20troubleshooting.%20Do%20not%20execute.%20Command%3A%20scontrol%20show%20nodes)
- [6. Explain `sdiag`](https://chatgpt.com/?q=Explain%20this%20Linux%20scientific%20computing%2FHPC%2FHTC%20command%20in%20detail.%20Break%20down%20every%20flag%2C%20argument%2C%20environment%20variable%2C%20expected%20output%2C%20requirements%2C%20scheduler%20permissions%2C%20production%20impact%2C%20common%20errors%20and%20safe%20troubleshooting.%20Do%20not%20execute.%20Command%3A%20sdiag)
- [7. Explain `sacct -S today --format=JobID,JobName,State,Elapsed,AllocCPUS,MaxRSS -n`](https://chatgpt.com/?q=Explain%20this%20Linux%20scientific%20computing%2FHPC%2FHTC%20command%20in%20detail.%20Break%20down%20every%20flag%2C%20argument%2C%20environment%20variable%2C%20expected%20output%2C%20requirements%2C%20scheduler%20permissions%2C%20production%20impact%2C%20common%20errors%20and%20safe%20troubleshooting.%20Do%20not%20execute.%20Command%3A%20sacct%20-S%20today%20--format%3DJobID%2CJobName%2CState%2CElapsed%2CAllocCPUS%2CMaxRSS%20-n)

</details>

## HTCondor cluster health — READ ONLY

For CERN-style *high throughput* farms. The installed HTCondor commands and permission boundaries vary by site.

```bash
condor_version
condor_status -total
condor_status -schedd
condor_q
condor_q -better-analyze JOB_ID
condor_history -limit 20
condor_status -af Name State Activity
```

<details>
<summary>🧠 Explain each command in ChatGPT (7)</summary>

- [1. Explain `condor_version`](https://chatgpt.com/?q=Explain%20this%20Linux%20scientific%20computing%2FHPC%2FHTC%20command%20in%20detail.%20Break%20down%20every%20flag%2C%20argument%2C%20environment%20variable%2C%20expected%20output%2C%20requirements%2C%20scheduler%20permissions%2C%20production%20impact%2C%20common%20errors%20and%20safe%20troubleshooting.%20Do%20not%20execute.%20Command%3A%20condor_version)
- [2. Explain `condor_status -total`](https://chatgpt.com/?q=Explain%20this%20Linux%20scientific%20computing%2FHPC%2FHTC%20command%20in%20detail.%20Break%20down%20every%20flag%2C%20argument%2C%20environment%20variable%2C%20expected%20output%2C%20requirements%2C%20scheduler%20permissions%2C%20production%20impact%2C%20common%20errors%20and%20safe%20troubleshooting.%20Do%20not%20execute.%20Command%3A%20condor_status%20-total)
- [3. Explain `condor_status -schedd`](https://chatgpt.com/?q=Explain%20this%20Linux%20scientific%20computing%2FHPC%2FHTC%20command%20in%20detail.%20Break%20down%20every%20flag%2C%20argument%2C%20environment%20variable%2C%20expected%20output%2C%20requirements%2C%20scheduler%20permissions%2C%20production%20impact%2C%20common%20errors%20and%20safe%20troubleshooting.%20Do%20not%20execute.%20Command%3A%20condor_status%20-schedd)
- [4. Explain `condor_q`](https://chatgpt.com/?q=Explain%20this%20Linux%20scientific%20computing%2FHPC%2FHTC%20command%20in%20detail.%20Break%20down%20every%20flag%2C%20argument%2C%20environment%20variable%2C%20expected%20output%2C%20requirements%2C%20scheduler%20permissions%2C%20production%20impact%2C%20common%20errors%20and%20safe%20troubleshooting.%20Do%20not%20execute.%20Command%3A%20condor_q)
- [5. Explain `condor_q -better-analyze JOB_ID`](https://chatgpt.com/?q=Explain%20this%20Linux%20scientific%20computing%2FHPC%2FHTC%20command%20in%20detail.%20Break%20down%20every%20flag%2C%20argument%2C%20environment%20variable%2C%20expected%20output%2C%20requirements%2C%20scheduler%20permissions%2C%20production%20impact%2C%20common%20errors%20and%20safe%20troubleshooting.%20Do%20not%20execute.%20Command%3A%20condor_q%20-better-analyze%20JOB_ID)
- [6. Explain `condor_history -limit 20`](https://chatgpt.com/?q=Explain%20this%20Linux%20scientific%20computing%2FHPC%2FHTC%20command%20in%20detail.%20Break%20down%20every%20flag%2C%20argument%2C%20environment%20variable%2C%20expected%20output%2C%20requirements%2C%20scheduler%20permissions%2C%20production%20impact%2C%20common%20errors%20and%20safe%20troubleshooting.%20Do%20not%20execute.%20Command%3A%20condor_history%20-limit%2020)
- [7. Explain `condor_status -af Name State Activity`](https://chatgpt.com/?q=Explain%20this%20Linux%20scientific%20computing%2FHPC%2FHTC%20command%20in%20detail.%20Break%20down%20every%20flag%2C%20argument%2C%20environment%20variable%2C%20expected%20output%2C%20requirements%2C%20scheduler%20permissions%2C%20production%20impact%2C%20common%20errors%20and%20safe%20troubleshooting.%20Do%20not%20execute.%20Command%3A%20condor_status%20-af%20Name%20State%20Activity)

</details>

## MPI, memory binding and CPU performance — READ ONLY

`mpirun` starts processes: use only in an approved allocation. First verify MPI/library versions and CPU affinity.

```bash
mpirun --version
mpicc --version
module avail
module list
ulimit -a
numactl --show
taskset -pc YOUR_PID
mpirun --help | head -40
```

<details>
<summary>🧠 Explain each command in ChatGPT (8)</summary>

- [1. Explain `mpirun --version`](https://chatgpt.com/?q=Explain%20this%20Linux%20scientific%20computing%2FHPC%2FHTC%20command%20in%20detail.%20Break%20down%20every%20flag%2C%20argument%2C%20environment%20variable%2C%20expected%20output%2C%20requirements%2C%20scheduler%20permissions%2C%20production%20impact%2C%20common%20errors%20and%20safe%20troubleshooting.%20Do%20not%20execute.%20Command%3A%20mpirun%20--version)
- [2. Explain `mpicc --version`](https://chatgpt.com/?q=Explain%20this%20Linux%20scientific%20computing%2FHPC%2FHTC%20command%20in%20detail.%20Break%20down%20every%20flag%2C%20argument%2C%20environment%20variable%2C%20expected%20output%2C%20requirements%2C%20scheduler%20permissions%2C%20production%20impact%2C%20common%20errors%20and%20safe%20troubleshooting.%20Do%20not%20execute.%20Command%3A%20mpicc%20--version)
- [3. Explain `module avail`](https://chatgpt.com/?q=Explain%20this%20Linux%20scientific%20computing%2FHPC%2FHTC%20command%20in%20detail.%20Break%20down%20every%20flag%2C%20argument%2C%20environment%20variable%2C%20expected%20output%2C%20requirements%2C%20scheduler%20permissions%2C%20production%20impact%2C%20common%20errors%20and%20safe%20troubleshooting.%20Do%20not%20execute.%20Command%3A%20module%20avail)
- [4. Explain `module list`](https://chatgpt.com/?q=Explain%20this%20Linux%20scientific%20computing%2FHPC%2FHTC%20command%20in%20detail.%20Break%20down%20every%20flag%2C%20argument%2C%20environment%20variable%2C%20expected%20output%2C%20requirements%2C%20scheduler%20permissions%2C%20production%20impact%2C%20common%20errors%20and%20safe%20troubleshooting.%20Do%20not%20execute.%20Command%3A%20module%20list)
- [5. Explain `ulimit -a`](https://chatgpt.com/?q=Explain%20this%20Linux%20scientific%20computing%2FHPC%2FHTC%20command%20in%20detail.%20Break%20down%20every%20flag%2C%20argument%2C%20environment%20variable%2C%20expected%20output%2C%20requirements%2C%20scheduler%20permissions%2C%20production%20impact%2C%20common%20errors%20and%20safe%20troubleshooting.%20Do%20not%20execute.%20Command%3A%20ulimit%20-a)
- [6. Explain `numactl --show`](https://chatgpt.com/?q=Explain%20this%20Linux%20scientific%20computing%2FHPC%2FHTC%20command%20in%20detail.%20Break%20down%20every%20flag%2C%20argument%2C%20environment%20variable%2C%20expected%20output%2C%20requirements%2C%20scheduler%20permissions%2C%20production%20impact%2C%20common%20errors%20and%20safe%20troubleshooting.%20Do%20not%20execute.%20Command%3A%20numactl%20--show)
- [7. Explain `taskset -pc YOUR_PID`](https://chatgpt.com/?q=Explain%20this%20Linux%20scientific%20computing%2FHPC%2FHTC%20command%20in%20detail.%20Break%20down%20every%20flag%2C%20argument%2C%20environment%20variable%2C%20expected%20output%2C%20requirements%2C%20scheduler%20permissions%2C%20production%20impact%2C%20common%20errors%20and%20safe%20troubleshooting.%20Do%20not%20execute.%20Command%3A%20taskset%20-pc%20YOUR_PID)
- [8. Explain `mpirun --help | head -40`](https://chatgpt.com/?q=Explain%20this%20Linux%20scientific%20computing%2FHPC%2FHTC%20command%20in%20detail.%20Break%20down%20every%20flag%2C%20argument%2C%20environment%20variable%2C%20expected%20output%2C%20requirements%2C%20scheduler%20permissions%2C%20production%20impact%2C%20common%20errors%20and%20safe%20troubleshooting.%20Do%20not%20execute.%20Command%3A%20mpirun%20--help%20%7C%20head%20-40)

</details>

## GPU, NVIDIA and high-speed fabric — READ ONLY

Check real GPU/RDMA hardware before drawing conclusions. `nvidia-smi` requires NVIDIA drivers; `ibstat` and `ibv_devinfo` require RDMA tools.

```bash
nvidia-smi -L
nvidia-smi --query-gpu=index,name,uuid,memory.total,utilization.gpu,temperature.gpu --format=csv
ibstat
ibv_devices
ibv_devinfo
rdma link show
ethtool -S YOUR_INTERFACE | head -70
journalctl -k -b --since '1 hour ago' | grep -Ei 'mlx5|infiniband|rdma|nvlink|xid|aer|pcie|timeout' | tail -100
```

<details>
<summary>🧠 Explain each command in ChatGPT (8)</summary>

- [1. Explain `nvidia-smi -L`](https://chatgpt.com/?q=Explain%20this%20Linux%20scientific%20computing%2FHPC%2FHTC%20command%20in%20detail.%20Break%20down%20every%20flag%2C%20argument%2C%20environment%20variable%2C%20expected%20output%2C%20requirements%2C%20scheduler%20permissions%2C%20production%20impact%2C%20common%20errors%20and%20safe%20troubleshooting.%20Do%20not%20execute.%20Command%3A%20nvidia-smi%20-L)
- [2. Explain `nvidia-smi --query-gpu=index,name,uuid,memory.total,utilization.gpu,temperature.gpu --format=cs`](https://chatgpt.com/?q=Explain%20this%20Linux%20scientific%20computing%2FHPC%2FHTC%20command%20in%20detail.%20Break%20down%20every%20flag%2C%20argument%2C%20environment%20variable%2C%20expected%20output%2C%20requirements%2C%20scheduler%20permissions%2C%20production%20impact%2C%20common%20errors%20and%20safe%20troubleshooting.%20Do%20not%20execute.%20Command%3A%20nvidia-smi%20--query-gpu%3Dindex%2Cname%2Cuuid%2Cmemory.total%2Cutilization.gpu%2Ctemperature.gpu%20--format%3Dcsv)
- [3. Explain `ibstat`](https://chatgpt.com/?q=Explain%20this%20Linux%20scientific%20computing%2FHPC%2FHTC%20command%20in%20detail.%20Break%20down%20every%20flag%2C%20argument%2C%20environment%20variable%2C%20expected%20output%2C%20requirements%2C%20scheduler%20permissions%2C%20production%20impact%2C%20common%20errors%20and%20safe%20troubleshooting.%20Do%20not%20execute.%20Command%3A%20ibstat)
- [4. Explain `ibv_devices`](https://chatgpt.com/?q=Explain%20this%20Linux%20scientific%20computing%2FHPC%2FHTC%20command%20in%20detail.%20Break%20down%20every%20flag%2C%20argument%2C%20environment%20variable%2C%20expected%20output%2C%20requirements%2C%20scheduler%20permissions%2C%20production%20impact%2C%20common%20errors%20and%20safe%20troubleshooting.%20Do%20not%20execute.%20Command%3A%20ibv_devices)
- [5. Explain `ibv_devinfo`](https://chatgpt.com/?q=Explain%20this%20Linux%20scientific%20computing%2FHPC%2FHTC%20command%20in%20detail.%20Break%20down%20every%20flag%2C%20argument%2C%20environment%20variable%2C%20expected%20output%2C%20requirements%2C%20scheduler%20permissions%2C%20production%20impact%2C%20common%20errors%20and%20safe%20troubleshooting.%20Do%20not%20execute.%20Command%3A%20ibv_devinfo)
- [6. Explain `rdma link show`](https://chatgpt.com/?q=Explain%20this%20Linux%20scientific%20computing%2FHPC%2FHTC%20command%20in%20detail.%20Break%20down%20every%20flag%2C%20argument%2C%20environment%20variable%2C%20expected%20output%2C%20requirements%2C%20scheduler%20permissions%2C%20production%20impact%2C%20common%20errors%20and%20safe%20troubleshooting.%20Do%20not%20execute.%20Command%3A%20rdma%20link%20show)
- [7. Explain `ethtool -S YOUR_INTERFACE | head -70`](https://chatgpt.com/?q=Explain%20this%20Linux%20scientific%20computing%2FHPC%2FHTC%20command%20in%20detail.%20Break%20down%20every%20flag%2C%20argument%2C%20environment%20variable%2C%20expected%20output%2C%20requirements%2C%20scheduler%20permissions%2C%20production%20impact%2C%20common%20errors%20and%20safe%20troubleshooting.%20Do%20not%20execute.%20Command%3A%20ethtool%20-S%20YOUR_INTERFACE%20%7C%20head%20-70)
- [8. Explain `journalctl -k -b --since '1 hour ago' | grep -Ei 'mlx5|infiniband|rdma|nvlink|xid|aer|pcie|time`](https://chatgpt.com/?q=Explain%20this%20Linux%20scientific%20computing%2FHPC%2FHTC%20command%20in%20detail.%20Break%20down%20every%20flag%2C%20argument%2C%20environment%20variable%2C%20expected%20output%2C%20requirements%2C%20scheduler%20permissions%2C%20production%20impact%2C%20common%20errors%20and%20safe%20troubleshooting.%20Do%20not%20execute.%20Command%3A%20journalctl%20-k%20-b%20--since%20'1%20hour%20ago'%20%7C%20grep%20-Ei%20'mlx5%7Cinfiniband%7Crdma%7Cnvlink%7Cxid%7Caer%7Cpcie%7Ctimeout'%20%7C%20tail%20-100)

</details>

## Storage and filesystem performance — READ ONLY

Compare healthy against degraded workers; don't run write-intensive benchmarks or metadata crawls during an outage.

```bash
findmnt -T /scratch
df -hT
df -i
iostat -xz 1 5
mount | grep -Ei 'lustre|beegfs|nfs|ceph|gpfs|cvmfs'
journalctl -k -b --since '1 hour ago' | grep -Ei 'I/O error|nfs|lustre|beegfs|cvmfs|ceph|timeout|reset' | tail -100
```

<details>
<summary>🧠 Explain each command in ChatGPT (6)</summary>

- [1. Explain `findmnt -T /scratch`](https://chatgpt.com/?q=Explain%20this%20Linux%20scientific%20computing%2FHPC%2FHTC%20command%20in%20detail.%20Break%20down%20every%20flag%2C%20argument%2C%20environment%20variable%2C%20expected%20output%2C%20requirements%2C%20scheduler%20permissions%2C%20production%20impact%2C%20common%20errors%20and%20safe%20troubleshooting.%20Do%20not%20execute.%20Command%3A%20findmnt%20-T%20%2Fscratch)
- [2. Explain `df -hT`](https://chatgpt.com/?q=Explain%20this%20Linux%20scientific%20computing%2FHPC%2FHTC%20command%20in%20detail.%20Break%20down%20every%20flag%2C%20argument%2C%20environment%20variable%2C%20expected%20output%2C%20requirements%2C%20scheduler%20permissions%2C%20production%20impact%2C%20common%20errors%20and%20safe%20troubleshooting.%20Do%20not%20execute.%20Command%3A%20df%20-hT)
- [3. Explain `df -i`](https://chatgpt.com/?q=Explain%20this%20Linux%20scientific%20computing%2FHPC%2FHTC%20command%20in%20detail.%20Break%20down%20every%20flag%2C%20argument%2C%20environment%20variable%2C%20expected%20output%2C%20requirements%2C%20scheduler%20permissions%2C%20production%20impact%2C%20common%20errors%20and%20safe%20troubleshooting.%20Do%20not%20execute.%20Command%3A%20df%20-i)
- [4. Explain `iostat -xz 1 5`](https://chatgpt.com/?q=Explain%20this%20Linux%20scientific%20computing%2FHPC%2FHTC%20command%20in%20detail.%20Break%20down%20every%20flag%2C%20argument%2C%20environment%20variable%2C%20expected%20output%2C%20requirements%2C%20scheduler%20permissions%2C%20production%20impact%2C%20common%20errors%20and%20safe%20troubleshooting.%20Do%20not%20execute.%20Command%3A%20iostat%20-xz%201%205)
- [5. Explain `mount | grep -Ei 'lustre|beegfs|nfs|ceph|gpfs|cvmfs'`](https://chatgpt.com/?q=Explain%20this%20Linux%20scientific%20computing%2FHPC%2FHTC%20command%20in%20detail.%20Break%20down%20every%20flag%2C%20argument%2C%20environment%20variable%2C%20expected%20output%2C%20requirements%2C%20scheduler%20permissions%2C%20production%20impact%2C%20common%20errors%20and%20safe%20troubleshooting.%20Do%20not%20execute.%20Command%3A%20mount%20%7C%20grep%20-Ei%20'lustre%7Cbeegfs%7Cnfs%7Cceph%7Cgpfs%7Ccvmfs')
- [6. Explain `journalctl -k -b --since '1 hour ago' | grep -Ei 'I/O error|nfs|lustre|beegfs|cvmfs|ceph|timeou`](https://chatgpt.com/?q=Explain%20this%20Linux%20scientific%20computing%2FHPC%2FHTC%20command%20in%20detail.%20Break%20down%20every%20flag%2C%20argument%2C%20environment%20variable%2C%20expected%20output%2C%20requirements%2C%20scheduler%20permissions%2C%20production%20impact%2C%20common%20errors%20and%20safe%20troubleshooting.%20Do%20not%20execute.%20Command%3A%20journalctl%20-k%20-b%20--since%20'1%20hour%20ago'%20%7C%20grep%20-Ei%20'I%2FO%20error%7Cnfs%7Clustre%7Cbeegfs%7Ccvmfs%7Cceph%7Ctimeout%7Creset'%20%7C%20tail%20-100)

</details>

## Submit a small CPU job with Slurm (RESOURCE CHANGE)

The job file below is **a runnable template only after Slurm is installed and partitions are configured**. Replace the partition name if the default is unsuitable. It uses 2 CPUs on one node and writes output to the submit directory.

```bash
cat > hello-slurm.sbatch <<'EOF'
#!/bin/bash
#SBATCH --job-name=hpc-smoke
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=2
#SBATCH --time=00:02:00
#SBATCH --output=slurm-%j.out
set -euo pipefail
echo "host=$(hostname) job=$SLURM_JOB_ID"
srun hostname
EOF
sbatch hello-slurm.sbatch
```

**CHANGE:** `sbatch` schedules real compute resources. Do not run repeatedly on shared production queues. Query using `squeue -j JOB_ID`; cancellation via `scancel JOB_ID` is a change affecting the job.

<details><summary>🧠 Explain Slurm smoke-test commands</summary>

- [1. Explain `cat > hello-slurm.sbatch <<'EOF'`](https://chatgpt.com/?q=Explain%20Slurm%20batch%20command%20and%20full%20syntax%2C%20submission%20effects%2C%20scheduler%20permissions%2C%20job%20resource%20usage%20and%20risks.%20Do%20not%20execute%3A%20cat%20%3E%20hello-slurm.sbatch%20%3C%3C'EOF')
- [2. Explain `sbatch hello-slurm.sbatch`](https://chatgpt.com/?q=Explain%20Slurm%20batch%20command%20and%20full%20syntax%2C%20submission%20effects%2C%20scheduler%20permissions%2C%20job%20resource%20usage%20and%20risks.%20Do%20not%20execute%3A%20sbatch%20hello-slurm.sbatch)
- [3. Explain `squeue -j JOB_ID`](https://chatgpt.com/?q=Explain%20Slurm%20batch%20command%20and%20full%20syntax%2C%20submission%20effects%2C%20scheduler%20permissions%2C%20job%20resource%20usage%20and%20risks.%20Do%20not%20execute%3A%20squeue%20-j%20JOB_ID)
- [4. Explain `scancel JOB_ID`](https://chatgpt.com/?q=Explain%20Slurm%20batch%20command%20and%20full%20syntax%2C%20submission%20effects%2C%20scheduler%20permissions%2C%20job%20resource%20usage%20and%20risks.%20Do%20not%20execute%3A%20scancel%20JOB_ID)

</details>

## Submit an independent HTCondor job array (RESOURCE CHANGE)

The following example processes three independent job indices. Only submit to an **authorized configured pool**. The submit host must have a working HTCondor client and file-transfer rules.

```text
# hello.sub — HTCondor submit description
universe = vanilla
executable = /bin/hostname
output = logs/hello.$(ClusterId).$(ProcId).out
error = logs/hello.$(ClusterId).$(ProcId).err
log = logs/hello.$(ClusterId).log
request_cpus = 1
request_memory = 512MB
should_transfer_files = YES
when_to_transfer_output = ON_EXIT
queue 3
```

```bash
mkdir -p logs
condor_submit hello.sub
condor_q
condor_history -limit 10
```

<details><summary>🧠 Explain HTCondor submission commands</summary>

- [1. Explain `mkdir -p logs`](https://chatgpt.com/?q=Explain%20HTCondor%20syntax%2C%20runtime%20behavior%2C%20required%20pool%2C%20expected%20output%20and%20impact%20on%20shared%20resources%3A%20mkdir%20-p%20logs)
- [2. Explain `condor_submit hello.sub`](https://chatgpt.com/?q=Explain%20HTCondor%20syntax%2C%20runtime%20behavior%2C%20required%20pool%2C%20expected%20output%20and%20impact%20on%20shared%20resources%3A%20condor_submit%20hello.sub)
- [3. Explain `condor_q`](https://chatgpt.com/?q=Explain%20HTCondor%20syntax%2C%20runtime%20behavior%2C%20required%20pool%2C%20expected%20output%20and%20impact%20on%20shared%20resources%3A%20condor_q)
- [4. Explain `condor_history -limit 10`](https://chatgpt.com/?q=Explain%20HTCondor%20syntax%2C%20runtime%20behavior%2C%20required%20pool%2C%20expected%20output%20and%20impact%20on%20shared%20resources%3A%20condor_history%20-limit%2010)

</details>

## Running tightly coupled MPI jobs

MPI requires a **multi-node allocation and a real MPI-built executable**. For a first smoke test, run a small **single-node** allocation if allowed:

```bash
srun --nodes=1 --ntasks=2 --time=00:02:00 hostname
```

A real multi-node application uses MPI-aware launch steps and communication testing; **do not assume** `mpirun` and `srun` are interchangeable without the installed Slurm PMIx/PMI integration.

[🧠 Explain this Slurm task launch](https://chatgpt.com/?q=Explain%20full%20Slurm%20syntax%20and%20resource%20impact%20of%20srun%20--nodes%3D1%20--ntasks%3D2%20--time%3D00%3A02%3A00%20hostname.%20Clarify%20how%20MPI%2FPMIx%20integration%20differs%20from%20srun%20launching%20hostname.)

## Advanced incident troubleshooting: map symptom to component

| Symptom | First investigation | Likely cause / next team |
|---|---|---|
| Jobs waiting forever (`PD`) | `squeue`, `scontrol show job JOB_ID`, `sinfo` | Limits, priorities, reservations, CPU/GPU resource requests, held nodes |
| Many Slurm nodes `DOWN/DRAIN` | `sinfo -R`, `scontrol show node NODE`, `journalctl -u slurmd` | Network, config mismatch, Munge credentials, cgroups, hardware |
| HTCondor job `H` (held) | `condor_q -hold JOB_ID`, `condor_q -better-analyze JOB_ID` | Missing files, credentials, requirements/resource matching |
| HTCondor jobs idle | `condor_status`, `condor_q -better-analyze` | ClassAd mismatch, no slots, fairshare, credential/transfer problems |
| MPI collective communication hangs | Allocated nodes, MPI/PMIx versions, NIC/RDMA counters | Fabric drops, MTU, mismatched MPI libs, deadlock, node failure |
| Very low scaling efficiency | CPU affinity, NUMA, network, storage I/O | Poor load balance, excessive sync, memory bandwidth, serial fraction |
| GPU jobs slow / fail | `nvidia-smi`, NVLink, PCIe/NIC errors, DCGM | Memory pressure, GPU Xid, throttling, driver, NCCL/fabric |
| Shared filesystem slow | Metadata/OST/OSD health, mount errors, iostat | Hot storage, small-file storm, network, quotas, failed storage targets |
| Scheduler unreachable | Controller service, network, time, credential/key files | `slurmctld`, Munge, HTCondor collector/negotiator |
| Wrong binaries/library versions | `module list`, image hash, `ldd`, MPI versions | Inconsistent software environment |

## Slurm failed jobs and drained nodes — READ ONLY

Read-only troubleshooting of a cluster you administer. Use exact job/node identifiers.

```bash
sinfo -R
scontrol show job JOB_ID
scontrol show node NODE_NAME
sacct -j JOB_ID --format=JobID,JobName,State,ExitCode,Elapsed,MaxRSS
sstat -j JOB_ID --format=AveCPU,AveRSS,MaxRSS
journalctl -u slurmd -b --no-pager -n 120
journalctl -u slurmctld -b --no-pager -n 120
```

<details>
<summary>🧠 Explain each command in ChatGPT (7)</summary>

- [1. Explain `sinfo -R`](https://chatgpt.com/?q=Explain%20this%20Linux%20scientific%20computing%2FHPC%2FHTC%20command%20in%20detail.%20Break%20down%20every%20flag%2C%20argument%2C%20environment%20variable%2C%20expected%20output%2C%20requirements%2C%20scheduler%20permissions%2C%20production%20impact%2C%20common%20errors%20and%20safe%20troubleshooting.%20Do%20not%20execute.%20Command%3A%20sinfo%20-R)
- [2. Explain `scontrol show job JOB_ID`](https://chatgpt.com/?q=Explain%20this%20Linux%20scientific%20computing%2FHPC%2FHTC%20command%20in%20detail.%20Break%20down%20every%20flag%2C%20argument%2C%20environment%20variable%2C%20expected%20output%2C%20requirements%2C%20scheduler%20permissions%2C%20production%20impact%2C%20common%20errors%20and%20safe%20troubleshooting.%20Do%20not%20execute.%20Command%3A%20scontrol%20show%20job%20JOB_ID)
- [3. Explain `scontrol show node NODE_NAME`](https://chatgpt.com/?q=Explain%20this%20Linux%20scientific%20computing%2FHPC%2FHTC%20command%20in%20detail.%20Break%20down%20every%20flag%2C%20argument%2C%20environment%20variable%2C%20expected%20output%2C%20requirements%2C%20scheduler%20permissions%2C%20production%20impact%2C%20common%20errors%20and%20safe%20troubleshooting.%20Do%20not%20execute.%20Command%3A%20scontrol%20show%20node%20NODE_NAME)
- [4. Explain `sacct -j JOB_ID --format=JobID,JobName,State,ExitCode,Elapsed,MaxRSS`](https://chatgpt.com/?q=Explain%20this%20Linux%20scientific%20computing%2FHPC%2FHTC%20command%20in%20detail.%20Break%20down%20every%20flag%2C%20argument%2C%20environment%20variable%2C%20expected%20output%2C%20requirements%2C%20scheduler%20permissions%2C%20production%20impact%2C%20common%20errors%20and%20safe%20troubleshooting.%20Do%20not%20execute.%20Command%3A%20sacct%20-j%20JOB_ID%20--format%3DJobID%2CJobName%2CState%2CExitCode%2CElapsed%2CMaxRSS)
- [5. Explain `sstat -j JOB_ID --format=AveCPU,AveRSS,MaxRSS`](https://chatgpt.com/?q=Explain%20this%20Linux%20scientific%20computing%2FHPC%2FHTC%20command%20in%20detail.%20Break%20down%20every%20flag%2C%20argument%2C%20environment%20variable%2C%20expected%20output%2C%20requirements%2C%20scheduler%20permissions%2C%20production%20impact%2C%20common%20errors%20and%20safe%20troubleshooting.%20Do%20not%20execute.%20Command%3A%20sstat%20-j%20JOB_ID%20--format%3DAveCPU%2CAveRSS%2CMaxRSS)
- [6. Explain `journalctl -u slurmd -b --no-pager -n 120`](https://chatgpt.com/?q=Explain%20this%20Linux%20scientific%20computing%2FHPC%2FHTC%20command%20in%20detail.%20Break%20down%20every%20flag%2C%20argument%2C%20environment%20variable%2C%20expected%20output%2C%20requirements%2C%20scheduler%20permissions%2C%20production%20impact%2C%20common%20errors%20and%20safe%20troubleshooting.%20Do%20not%20execute.%20Command%3A%20journalctl%20-u%20slurmd%20-b%20--no-pager%20-n%20120)
- [7. Explain `journalctl -u slurmctld -b --no-pager -n 120`](https://chatgpt.com/?q=Explain%20this%20Linux%20scientific%20computing%2FHPC%2FHTC%20command%20in%20detail.%20Break%20down%20every%20flag%2C%20argument%2C%20environment%20variable%2C%20expected%20output%2C%20requirements%2C%20scheduler%20permissions%2C%20production%20impact%2C%20common%20errors%20and%20safe%20troubleshooting.%20Do%20not%20execute.%20Command%3A%20journalctl%20-u%20slurmctld%20-b%20--no-pager%20-n%20120)

</details>

## HTCondor held jobs and scheduler visibility — READ ONLY

`condor_q -hold` reports held job reasons; this is a query, not a command to hold the job.

```bash
condor_q -hold
condor_q -better-analyze JOB_ID
condor_q -long JOB_ID | head -80
condor_status -total
condor_history -limit 25
condor_ping -type SCHEDD READ
```

<details>
<summary>🧠 Explain each command in ChatGPT (6)</summary>

- [1. Explain `condor_q -hold`](https://chatgpt.com/?q=Explain%20this%20Linux%20scientific%20computing%2FHPC%2FHTC%20command%20in%20detail.%20Break%20down%20every%20flag%2C%20argument%2C%20environment%20variable%2C%20expected%20output%2C%20requirements%2C%20scheduler%20permissions%2C%20production%20impact%2C%20common%20errors%20and%20safe%20troubleshooting.%20Do%20not%20execute.%20Command%3A%20condor_q%20-hold)
- [2. Explain `condor_q -better-analyze JOB_ID`](https://chatgpt.com/?q=Explain%20this%20Linux%20scientific%20computing%2FHPC%2FHTC%20command%20in%20detail.%20Break%20down%20every%20flag%2C%20argument%2C%20environment%20variable%2C%20expected%20output%2C%20requirements%2C%20scheduler%20permissions%2C%20production%20impact%2C%20common%20errors%20and%20safe%20troubleshooting.%20Do%20not%20execute.%20Command%3A%20condor_q%20-better-analyze%20JOB_ID)
- [3. Explain `condor_q -long JOB_ID | head -80`](https://chatgpt.com/?q=Explain%20this%20Linux%20scientific%20computing%2FHPC%2FHTC%20command%20in%20detail.%20Break%20down%20every%20flag%2C%20argument%2C%20environment%20variable%2C%20expected%20output%2C%20requirements%2C%20scheduler%20permissions%2C%20production%20impact%2C%20common%20errors%20and%20safe%20troubleshooting.%20Do%20not%20execute.%20Command%3A%20condor_q%20-long%20JOB_ID%20%7C%20head%20-80)
- [4. Explain `condor_status -total`](https://chatgpt.com/?q=Explain%20this%20Linux%20scientific%20computing%2FHPC%2FHTC%20command%20in%20detail.%20Break%20down%20every%20flag%2C%20argument%2C%20environment%20variable%2C%20expected%20output%2C%20requirements%2C%20scheduler%20permissions%2C%20production%20impact%2C%20common%20errors%20and%20safe%20troubleshooting.%20Do%20not%20execute.%20Command%3A%20condor_status%20-total)
- [5. Explain `condor_history -limit 25`](https://chatgpt.com/?q=Explain%20this%20Linux%20scientific%20computing%2FHPC%2FHTC%20command%20in%20detail.%20Break%20down%20every%20flag%2C%20argument%2C%20environment%20variable%2C%20expected%20output%2C%20requirements%2C%20scheduler%20permissions%2C%20production%20impact%2C%20common%20errors%20and%20safe%20troubleshooting.%20Do%20not%20execute.%20Command%3A%20condor_history%20-limit%2025)
- [6. Explain `condor_ping -type SCHEDD READ`](https://chatgpt.com/?q=Explain%20this%20Linux%20scientific%20computing%2FHPC%2FHTC%20command%20in%20detail.%20Break%20down%20every%20flag%2C%20argument%2C%20environment%20variable%2C%20expected%20output%2C%20requirements%2C%20scheduler%20permissions%2C%20production%20impact%2C%20common%20errors%20and%20safe%20troubleshooting.%20Do%20not%20execute.%20Command%3A%20condor_ping%20-type%20SCHEDD%20READ)

</details>

## Build and lifecycle design checklist

1. **Survey workloads first:** independent jobs vs cross-node MPI, job core-hour demand, wall times, datasets and CPU/GPU RAM needs.
2. **Select scheduler:** HTCondor for broad HTC; Slurm for classic tightly coupled HPC; hybrid pools or integration only when explicitly required.
3. **HA controllers:** two management/submit front ends; scheduler failover, database and shared configuration tested. Prevent split-brain, loss of accounting and arbitrary privilege escalation.
4. **Compute provisioning:** hardened reproducible Linux images, automated provisioning, NTP, hardware health, NUMA and cgroup configuration.
5. **Network:** isolate management vs job/storage traffic; validated MTU; high-speed low-latency fabric for MPI; redundant uplinks.
6. **Storage:** separate home, scratch and archival data; large-throughput/metadata performance, quota, lifecycle and off-site protection.
7. **Software reproducibility:** modules/Lmod, Spack, signed images, CI tests, validated MPI ABI and driver/toolkit compatibility.
8. **Isolation:** fairshare, per-user quotas, cgroups, credential scope, tenant policy and data governance.
9. **Resilience:** checkpoint/restart, job retries, node evacuation, GPU drain, metadata server HA, separate-site recovery.
10. **Observability:** scheduler queue time, job throughput, GPU utilization, per-node CPU/GPU memory, NIC errors, storage latency, failed jobs.
11. **Benchmark:** real workload speedup and strong/weak scaling, memory throughput, communication, data staging and recovery behavior—not synthetic peak FLOPS alone.
12. **Cost/power:** rack power, cooling, interconnect, licensing/support, refresh capacity and staff operations.

## Official learning links

- [CERN Computing](https://home.cern/science/computing/)
- [CERN WLCG](https://home.cern/science/computing/grid/)
- [CERN: HTCondor batch processing](https://home.cern/when-failure-good-news/)
- [WLCG scheduling recommendations: HTC vs HPC](https://twiki.cern.ch/twiki/bin/view/LCG/WLCGWorkloadRecommendations)
- [Slurm Quick Start](https://slurm.schedmd.com/quickstart.html)
- [HTCondor Documentation](https://htcondor.readthedocs.io/en/latest/)
- [Open MPI](https://docs.open-mpi.org/en/main/)
- [CERNVM-FS](https://cvmfs.readthedocs.io/en/stable/)
- [NVIDIA DCGM](https://docs.nvidia.com/datacenter/dcgm/latest/)
