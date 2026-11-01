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
