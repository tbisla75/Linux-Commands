# Design and implement an enterprise Linux HA cluster — Corosync / Pacemaker

> **Not safe as a one-command setup:** production HA requires sizing, redundant network, SBD/STONITH or validated power fencing, a quorum/witness strategy, tested storage semantics and rehearsed failover. This is a controlled implementation checklist and CLI reference, not an automatically deployed HA service.

## Reference design

```text
Client → redundant routing/LB → floating service VIP
                              ├── node-a (Pacemaker + Corosync + application)
                              ├── node-b (Pacemaker + Corosync + standby app)
                              └── quorum witness / qdevice (when topology requires)
       Dedicated redundant cluster heartbeats + out-of-band fencing
       App-owned data: replicated datastore OR correctly fenced shared SAN
```

### Order of work

1. Decide active/passive vs active/active and whether application supports concurrent writes.
2. Define tested RPO/RTO, quorum, STONITH power fencing and storage consistency model.
3. Provision 2–3 Linux hosts plus required qdevice/witness; configure DNS/time/redundant links.
4. Install supported HA software; create dedicated authenticated cluster identity.
5. Configure Corosync membership, cluster authorization, fencing devices and quorum policy.
6. **Prove fencing** in non-production before moving production service data.
7. Add service VIP, filesystem, workload resources and ordering/colocation constraints.
8. Simulate one host failure, communication split, SAN failure and manual failback; document operator runbook.

## Cluster sizing: minimum, mid-sized and large enterprise production

> **Reference architectures, not vendor-mandated node counts.** This section sizes a **Linux service HA cluster using Corosync/Pacemaker**. Count **resource/application nodes** separately from a quorum witness, backup nodes, load balancers and disaster recovery. Size from service SLAs, active workload, N+1 capacity, shared-storage design, latency, quorum and fencing. More nodes do not automatically increase availability.

### Quick comparison — Linux Pacemaker/Corosync

| Tier | Pacemaker application/resource nodes | Witness / quorum | Typical failure coverage | Reference usage |
|---|---:|---|---|---|
| **Minimum production HA** | **2** (active/passive) | **1 independent qdevice witness** recommended for 2-node quorum designs; **reliable fencing mandatory** | One app-node failure if failover capacity and fencing are healthy | Small critical database, NFS/IP service or single active application |
| **Mid-sized enterprise** | **3–5** | Odd vote/quorum topology; qdevice only where needed and supported | One failure with N+1 sizing; potentially additional failures if explicitly designed | Multiple HA resource groups, more services or separate active workloads |
| **Large enterprise** | **6–12 per cluster as an illustrative range**, or several smaller failure-domain/application-specific clusters | Deliberate quorum topology; avoid fragile WAN quorum | Depends on replication, topology, workload headroom and tested policy—not node count alone | Multi-service platforms with numerous resource groups, two-site failover or dedicated clusters per service |
| **Multi-site disaster recovery** | Separate production and DR clusters sized for agreed recovered load | Site-specific quorum/witness and fencing strategy | Site loss **only when** replication, traffic failover and restore have been tested | Regulated services with explicit RTO/RPO and secondary recovery site |

**Important design distinctions:** A two-node cluster can be valid with properly engineered fencing and a supported two-node quorum policy; a qdevice is **not universally mandatory**. Three Pacemaker voters are a common quorum-friendly layout, but do not imply an extra application server always runs the same workload. For large environments, **several independently managed 2–5-node clusters** may be operationally safer than one 12-node cluster. Confirm Red Hat or distribution support/scale limits for each component.

### Example A — minimum production (two active/passive service nodes)

```text
Client / DNS / Firewall
          |
     Floating service VIP
          |
  +-------+-------+
  |               |
app-ha-01      app-ha-02          2 Pacemaker resource nodes
(active)       (standby)
  |               |
  +-- replicated data OR correctly fenced shared SAN
          |
   qdevice / witness           independent failure domain, if selected
          |
  Out-of-band fencing          independent BMC/IPMI/Redfish or supported SBD
```

**Conditions:** each node can handle **100% of critical service load** after peer failure (N+1), heartbeats/networking are redundant, fencing is proven, service start/stop order is correct and the replicated database or filesystem guarantees a single writer. Witness is not a replacement for fencing. A passive standby host still counts as capacity you pay for.

### Example B — mid-sized enterprise (three to five resource nodes)

```text
         Clients / redundant front-end LB
                       |
          HA service IP / service resources
                       |
        +--------------+--------------+
        |              |              |
      app-01         app-02          app-03       3 core voters
        |              |              |
        +---- monitored resources ----+
                    |
       Optional app-04 / app-05 as workload dictates
                    |
       redundant networking, fencing, replicated/cluster-safe storage
```

Use **three nodes** when quorum, service placement and capacity match. Add fourth/fifth for workload capacity, failure-domain diversity and maintenance headroom—not merely to increase vote count. To survive one lost node, ensure remaining nodes have capacity; to tolerate **two node failures**, verify quorum and compute capacity independently. Distribution support and fencing policy remain essential.

### Example C — large enterprise (distributed services and site DR)

```text
             Corporate traffic / global DNS or GSLB
                         |
            +------------+-------------+
            |                          |
         Site A                      Site B
       Production                   DR / secondary
            |                          |
    Redundant L4/L7 LB          Independent LB / DNS
            |                          |
  Cluster A: 3-5 nodes          DR cluster: 3-5 nodes
  Cluster B: 3-5 nodes          Recovery capacity as required
  (separate service domains)   (warm/hot/cold decision)
            |                          |
        storage/app replication + verified backups
                    |
      Security zones, automation, monitoring, backup vault
```

**Planning guidance:** Prefer fault isolation by application and lifecycle; multiple HA clusters can be easier to patch and recover than one large monolith. A second site does **not** make the primary Pacemaker cluster magically site-resilient. WAN latency, split brain, fencing independence, data replication, storage write ownership and client failover determine feasibility. For site loss, agree **RPO/RTO**, backup immutability and replication consistency.

### Capacity formula for N+1 resilience

- Estimate measured steady-state **CPU, RAM, disk IOPS, network throughput and connection count** for each protected service.
- For N+1, provision enough remaining nodes to run the agreed peak/critical load after removing the largest failure domain. A simplified starting check for identical active nodes is **normal aggregate peak utilization ≤ (N−1) × usable capacity per node**, with further maintenance and growth margin. This check alone does not guarantee application or storage HA.
- Include standby workloads, fencing heartbeat links, backups, planned maintenance, scheduled batch work and failover startup surge.

### Don't confuse Pacemaker HA with Kubernetes cluster sizing

| Platform | Minimum practical HA control plane | Typical enterprise baseline | Additional components |
|---|---|---|---|
| **Pacemaker/Corosync services** | 2 resource nodes with supported fencing/quorum strategy | 3–5 nodes per independently managed service cluster where justified | BMC/SBD, quorum witness as designed, VIP/LB, storage replication |
| **kubeadm Kubernetes** | **3 control-plane/etcd members** (normal HA pattern) | 3 CP + 3+ workers, scale worker pools to demand | external redundant API LB, CNI/CSI, ingress, backups, observability |
| **K3s embedded-etcd HA** | **3 K3s server/etcd members** | 3 servers + 2–3+ workers if dedicated roles are needed | external API LB, uniform server flags, etcd snapshots, CNI/CSI |
| **OpenShift** | Typical HA **3 control-plane nodes** | 3 CP + 3+ workers, or a supported compact topology | RHCOS, platform Operators, ingress VIPs, CSI, OADP/etcd backup |

These Kubernetes/OpenShift figures are **reference starting points, not hard minimums for every supported topology**. Compact or single-node deployments exist but have different failure tolerance. For workload sizing, replicas, topology spread, storage, API ingress and node capacity matter more than choosing an arbitrary number of workers.

For detailed implementations use:
- [kubeadm HA starter](https://github.com/tbisla75/terraform-commands/tree/main/templates/kubeadm-ha)
- [K3s enterprise backup and DR](https://github.com/tbisla75/kubernetes-commands/blob/main/09-K3S-ENTERPRISE-BACKUP-DR.md)
- [OpenShift production architecture](https://github.com/tbisla75/Open-Shift-Commands/blob/main/08-ENTERPRISE-PRODUCTION-ARCHITECTURE.md)

### HA size validation — READ ONLY

```bash
sudo pcs status --full
sudo pcs quorum status
sudo pcs stonith config
sudo pcs resource status
sudo pcs constraint config
uptime
free -h
df -hT
```

<details>
<summary>🧠 Explain cluster sizing diagnostic commands in ChatGPT</summary>

- [1. Explain `sudo pcs status --full`](https://chatgpt.com/?q=Explain%20exact%20syntax%2C%20flags%2C%20output%20and%20production-safe%20interpretation%20for%20Linux%20high%20availability%20cluster%20sizing%20and%20failure%20tolerance.%20Do%20not%20run%3A%20sudo%20pcs%20status%20--full)
- [2. Explain `sudo pcs quorum status`](https://chatgpt.com/?q=Explain%20exact%20syntax%2C%20flags%2C%20output%20and%20production-safe%20interpretation%20for%20Linux%20high%20availability%20cluster%20sizing%20and%20failure%20tolerance.%20Do%20not%20run%3A%20sudo%20pcs%20quorum%20status)
- [3. Explain `sudo pcs stonith config`](https://chatgpt.com/?q=Explain%20exact%20syntax%2C%20flags%2C%20output%20and%20production-safe%20interpretation%20for%20Linux%20high%20availability%20cluster%20sizing%20and%20failure%20tolerance.%20Do%20not%20run%3A%20sudo%20pcs%20stonith%20config)
- [4. Explain `sudo pcs resource status`](https://chatgpt.com/?q=Explain%20exact%20syntax%2C%20flags%2C%20output%20and%20production-safe%20interpretation%20for%20Linux%20high%20availability%20cluster%20sizing%20and%20failure%20tolerance.%20Do%20not%20run%3A%20sudo%20pcs%20resource%20status)
- [5. Explain `sudo pcs constraint config`](https://chatgpt.com/?q=Explain%20exact%20syntax%2C%20flags%2C%20output%20and%20production-safe%20interpretation%20for%20Linux%20high%20availability%20cluster%20sizing%20and%20failure%20tolerance.%20Do%20not%20run%3A%20sudo%20pcs%20constraint%20config)
- [6. Explain `uptime`](https://chatgpt.com/?q=Explain%20exact%20syntax%2C%20flags%2C%20output%20and%20production-safe%20interpretation%20for%20Linux%20high%20availability%20cluster%20sizing%20and%20failure%20tolerance.%20Do%20not%20run%3A%20uptime)
- [7. Explain `free -h`](https://chatgpt.com/?q=Explain%20exact%20syntax%2C%20flags%2C%20output%20and%20production-safe%20interpretation%20for%20Linux%20high%20availability%20cluster%20sizing%20and%20failure%20tolerance.%20Do%20not%20run%3A%20free%20-h)
- [8. Explain `df -hT`](https://chatgpt.com/?q=Explain%20exact%20syntax%2C%20flags%2C%20output%20and%20production-safe%20interpretation%20for%20Linux%20high%20availability%20cluster%20sizing%20and%20failure%20tolerance.%20Do%20not%20run%3A%20df%20-hT)

</details>

### Customer sizing checklist

- [ ] Service inventory and independent failure domains documented
- [ ] Workload peaks and growth forecast measured (not guessed)
- [ ] Active/passive vs active/active and write ownership agreed
- [ ] Fencing/STONITH tested from both directions and quorum behavior proven
- [ ] Network/storage switch/array failures and standby placement considered
- [ ] N+1 resources confirmed during degraded operation and maintenance
- [ ] Backup retention/immutability and tested application restore included
- [ ] DR site and client failover tested to agreed RPO/RTO
- [ ] Supported distro/Pacemaker version/agent scale limits checked
- [ ] HA test and change runbooks signed off by operations

## RHEL-family prerequisites (CHANGE)

Install supported packages and validate firewall policy, subscription and vendor cluster support. Some RHEL releases use a High Availability repository entitlement.

```bash
sudo dnf install -y pcs pacemaker corosync fence-agents-all
sudo systemctl enable --now pcsd
sudo pcs status
```

<details><summary>🧠 Explain each command in ChatGPT</summary>

- [1. Explain `sudo dnf install -y pcs pacemaker corosync fence-agents-all`](https://chatgpt.com/?q=Explain%20the%20full%20Linux%20high%20availability%20command%20syntax%2C%20privileges%2C%20effects%20and%20failure%20recovery%3A%20sudo%20dnf%20install%20-y%20pcs%20pacemaker%20corosync%20fence-agents-all)
- [2. Explain `sudo systemctl enable --now pcsd`](https://chatgpt.com/?q=Explain%20the%20full%20Linux%20high%20availability%20command%20syntax%2C%20privileges%2C%20effects%20and%20failure%20recovery%3A%20sudo%20systemctl%20enable%20--now%20pcsd)
- [3. Explain `sudo pcs status`](https://chatgpt.com/?q=Explain%20the%20full%20Linux%20high%20availability%20command%20syntax%2C%20privileges%2C%20effects%20and%20failure%20recovery%3A%20sudo%20pcs%20status)

</details>

## Ubuntu/Debian HA packages (CHANGE)

Package availability and service names vary by distribution; check package manager and upstream manuals first.

```bash
sudo apt-get update
sudo apt-get install -y pacemaker corosync pcs resource-agents fence-agents
sudo systemctl enable --now pcsd
sudo pcs status
```

<details><summary>🧠 Explain each command in ChatGPT</summary>

- [1. Explain `sudo apt-get update`](https://chatgpt.com/?q=Explain%20the%20full%20Linux%20high%20availability%20command%20syntax%2C%20privileges%2C%20effects%20and%20failure%20recovery%3A%20sudo%20apt-get%20update)
- [2. Explain `sudo apt-get install -y pacemaker corosync pcs resource-agents fence-agents`](https://chatgpt.com/?q=Explain%20the%20full%20Linux%20high%20availability%20command%20syntax%2C%20privileges%2C%20effects%20and%20failure%20recovery%3A%20sudo%20apt-get%20install%20-y%20pacemaker%20corosync%20pcs%20resource-agents%20fence-agents)
- [3. Explain `sudo systemctl enable --now pcsd`](https://chatgpt.com/?q=Explain%20the%20full%20Linux%20high%20availability%20command%20syntax%2C%20privileges%2C%20effects%20and%20failure%20recovery%3A%20sudo%20systemctl%20enable%20--now%20pcsd)
- [4. Explain `sudo pcs status`](https://chatgpt.com/?q=Explain%20the%20full%20Linux%20high%20availability%20command%20syntax%2C%20privileges%2C%20effects%20and%20failure%20recovery%3A%20sudo%20pcs%20status)

</details>

## Quorum and fencing diagnostics (READ ONLY)

No quorum or no real STONITH = stop, do not proceed to critical shared-storage failover.

```bash
sudo pcs quorum status
sudo pcs stonith config
sudo pcs status --full
sudo pcs constraint config
sudo journalctl -u corosync -n 150 --no-pager
sudo journalctl -u pacemaker -n 150 --no-pager
```

<details><summary>🧠 Explain each command in ChatGPT</summary>

- [1. Explain `sudo pcs quorum status`](https://chatgpt.com/?q=Explain%20the%20full%20Linux%20high%20availability%20command%20syntax%2C%20privileges%2C%20effects%20and%20failure%20recovery%3A%20sudo%20pcs%20quorum%20status)
- [2. Explain `sudo pcs stonith config`](https://chatgpt.com/?q=Explain%20the%20full%20Linux%20high%20availability%20command%20syntax%2C%20privileges%2C%20effects%20and%20failure%20recovery%3A%20sudo%20pcs%20stonith%20config)
- [3. Explain `sudo pcs status --full`](https://chatgpt.com/?q=Explain%20the%20full%20Linux%20high%20availability%20command%20syntax%2C%20privileges%2C%20effects%20and%20failure%20recovery%3A%20sudo%20pcs%20status%20--full)
- [4. Explain `sudo pcs constraint config`](https://chatgpt.com/?q=Explain%20the%20full%20Linux%20high%20availability%20command%20syntax%2C%20privileges%2C%20effects%20and%20failure%20recovery%3A%20sudo%20pcs%20constraint%20config)
- [5. Explain `sudo journalctl -u corosync -n 150 --no-pager`](https://chatgpt.com/?q=Explain%20the%20full%20Linux%20high%20availability%20command%20syntax%2C%20privileges%2C%20effects%20and%20failure%20recovery%3A%20sudo%20journalctl%20-u%20corosync%20-n%20150%20--no-pager)
- [6. Explain `sudo journalctl -u pacemaker -n 150 --no-pager`](https://chatgpt.com/?q=Explain%20the%20full%20Linux%20high%20availability%20command%20syntax%2C%20privileges%2C%20effects%20and%20failure%20recovery%3A%20sudo%20journalctl%20-u%20pacemaker%20-n%20150%20--no-pager)

</details>

## Node membership and resource state (READ ONLY)

Check IPMI/Redfish/iLO/DRAC fencing agent for every node; validate hard power isolation with a scheduled test.

```bash
sudo pcs cluster status
sudo pcs node status
sudo pcs resource status
sudo pcs resource config
sudo crm_verify -L -V
```

<details><summary>🧠 Explain each command in ChatGPT</summary>

- [1. Explain `sudo pcs cluster status`](https://chatgpt.com/?q=Explain%20the%20full%20Linux%20high%20availability%20command%20syntax%2C%20privileges%2C%20effects%20and%20failure%20recovery%3A%20sudo%20pcs%20cluster%20status)
- [2. Explain `sudo pcs node status`](https://chatgpt.com/?q=Explain%20the%20full%20Linux%20high%20availability%20command%20syntax%2C%20privileges%2C%20effects%20and%20failure%20recovery%3A%20sudo%20pcs%20node%20status)
- [3. Explain `sudo pcs resource status`](https://chatgpt.com/?q=Explain%20the%20full%20Linux%20high%20availability%20command%20syntax%2C%20privileges%2C%20effects%20and%20failure%20recovery%3A%20sudo%20pcs%20resource%20status)
- [4. Explain `sudo pcs resource config`](https://chatgpt.com/?q=Explain%20the%20full%20Linux%20high%20availability%20command%20syntax%2C%20privileges%2C%20effects%20and%20failure%20recovery%3A%20sudo%20pcs%20resource%20config)
- [5. Explain `sudo crm_verify -L -V`](https://chatgpt.com/?q=Explain%20the%20full%20Linux%20high%20availability%20command%20syntax%2C%20privileges%2C%20effects%20and%20failure%20recovery%3A%20sudo%20crm_verify%20-L%20-V)

</details>

## Production commands intentionally not given as universal paste-and-run

`pcs cluster setup`, `pcs stonith create`, `pcs resource create`, `pcs node standby`, `pcs resource move` and `pcs cluster stop` depend on verified site-specific endpoints, agents and ownership. Submitting a generic command could fence the wrong host, move a live filesystem unsafely, or disrupt quorum. Use your vendor's exact release-qualified playbook, verify fencing targets and data integrity first.

RHEL documentation: https://docs.redhat.com/en/documentation/red_hat_enterprise_linux/9/html/configuring_and_managing_high_availability_clusters/ ; Pacemaker: https://clusterlabs.org/pacemaker/doc/ .
