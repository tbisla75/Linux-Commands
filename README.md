# Linux Commands — Enterprise Engineering & Cluster Provisioning

## Offline use and automatic vendor reviews

- **[Offline overview](OFFLINE-OVERVIEW.md)** — conceptual guide and safety workflow available without ChatGPT.
- **[Complete local command reference](offline-reference/README.md)** — locally stored command-by-command explanations and syntax from the runbooks.
- **[Vendor change dashboard](vendor-watch/STATUS.md)** and **[proposed changes](vendor-watch/CHANGES.md)** — show monitored release/command review candidates.
- **[Weekly update workflow](.github/workflows/offline-and-vendor-watch.yml)** — rebuilds offline docs and checks vendor references each Monday; raises a review-only GitHub PR if workflow permissions permit. It never silently replaces vendor commands.

**For fully offline access, clone this repository or download its ZIP in advance.** ChatGPT explanation links are optional; the local Markdown command reference works without them.


Production-oriented Linux command library from **installation and administration → security → advanced incident response → HA clusters → Kubernetes node preparation**, designed for customer-site work and technical assessments.

> 🟢 Read-only checks first. 🟠 Changes require customer approval. 🔴 Never paste cluster tokens, SSH keys, credentials or customer logs into GitHub or ChatGPT. Many commands require packages present only on specific Linux distributions.

**🚨 During a Linux incident:** start with [First 60 Seconds: Linux Logs](10-FAST-LOG-TROUBLESHOOTING.md). For approved local account recovery use [Forgotten Password Recovery](09-FORGOTTEN-PASSWORD-RECOVERY.md).

## Command library

| Runbook | What it covers |
|---|---|
| [01 — Linux Setup & Daily Operations](01-LINUX-SETUP-OPERATIONS.md) | System, services, packages, storage, users |
| [02 — Enterprise Security Hardening](02-SECURITY-HARDENING.md) | SELinux, AppArmor, SSH, firewall, auditing and baseline |
| [03 — Advanced Troubleshooting](03-ADVANCED-TROUBLESHOOTING.md) | Performance, I/O, DNS, TCP, TLS, auth and system failures |
| [04 — HA Cluster Diagnostics](04-LINUX-HA-CLUSTER-PACEMAKER.md) | Corosync, Pacemaker, quorum and fencing |
| [05 — Kubernetes Node Preparation](05-PLATFORM-NODE-PREPARATION.md) | Ubuntu/Debian/RHEL node prep for kubeadm |
| [06 — Enterprise HA Cluster Design](06-ENTERPRISE-HA-CLUSTER-IMPLEMENTATION.md) | Planning active/passive, STONITH, validation and failover |
| [07 — Script Syntax Explanations](07-SCRIPT-SYNTAX-CHATGPT.md) | 🧠 Individual ChatGPT links for provisioning script statements |
| 🚨 [10 — First 60 Seconds: Linux Logs and Diagnostics](10-FAST-LOG-TROUBLESHOOTING.md) | Failed services, journal errors, SSH/PAM, network, disk, I/O, Kubernetes and K3s logs |
| 🔐 [09 — Authorized Forgotten Password Recovery](09-FORGOTTEN-PASSWORD-RECOVERY.md) | Ubuntu/Debian recovery, RHEL rescue, cloud accounts, SELinux relabel |
| [08 — AWS, Azure, GCP & Bare-Metal Deployments](08-CLOUD-BAREMETAL-CLUSTER-DEPLOYMENT.md) | Step-by-step host/cluster integration and cloud CLI diagnostics |
| 🧪 [11 — CERN-Style HPC, HTC & Parallel Supercomputing](11-CERN-STYLE-HPC-HTC-PARALLEL-COMPUTING.md) | HTCondor, Slurm, MPI/OpenMP, GPU clusters, RDMA, storage, node sizing and advanced troubleshooting |

## Ready-to-adapt scripts

| Script | Intended use |
|---|---|
| [prepare-kubernetes-node.sh](scripts/prepare-kubernetes-node.sh) | Prepares a fresh **kubeadm control-plane or worker** host with containerd and packages. **Dry-run by default.** |
| [bootstrap-k3s-node.sh](scripts/bootstrap-k3s-node.sh) | Pinned K3s **server or agent** bootstrap using explicit flags. **Dry-run by default.** |

```bash
# Preview only; no host changes:
sudo bash scripts/prepare-kubernetes-node.sh --role control-plane --k8s-minor v1.37 --dry-run

# Change only after reviewing the script, cloud networking and maintenance approval:
sudo bash scripts/prepare-kubernetes-node.sh --role worker --k8s-minor v1.37 --apply
```

<details><summary>🧠 Explain startup commands in ChatGPT</summary>

- [Explain kubeadm control-plane dry-run](https://chatgpt.com/?q=Explain%20every%20option%20of%20sudo%20bash%20scripts%2Fprepare-kubernetes-node.sh%20--role%20control-plane%20--k8s-minor%20v1.37%20--dry-run)
- [Explain kubeadm worker apply](https://chatgpt.com/?q=Explain%20every%20option%20and%20production%20risk%20of%20sudo%20bash%20scripts%2Fprepare-kubernetes-node.sh%20--role%20worker%20--k8s-minor%20v1.37%20--apply)

</details>

**Not OpenShift node bootstrap:** OpenShift control-plane nodes use Red Hat Enterprise Linux CoreOS (RHCOS) via the official Installer and Ignition. Ubuntu/Debian/RHEL `kubeadm` preparation scripts are NOT a supported method to install OpenShift control-plane nodes.

## Provisioning AWS / Azure / Google / Bare metal

Use the script only after provisioning supported Linux VMs or physical servers with correct routing, DNS, NTP, security groups, cloud integration and a supported Kubernetes CNI/CSI. Cloud-managed EKS/AKS/GKE usually manages node bootstrap and should not run this host script. See the [Terraform provisioning library](https://github.com/tbisla75/terraform-commands).

Documentation: [Kubernetes kubeadm](https://kubernetes.io/docs/setup/production-environment/tools/kubeadm/install-kubeadm/) · [K3s](https://docs.k3s.io/) · [Red Hat HA](https://docs.redhat.com/en/documentation/red_hat_enterprise_linux/9/html/configuring_and_managing_high_availability_clusters/).
