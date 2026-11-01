# Offline command reference: Linux server administration, security, HA, and scientific computing

**This directory is self-contained**. Download the GitHub repo as ZIP or clone it before travel; links to local Markdown below work without internet. Every listed example has an offline description of purpose, syntax, options, expected behavior and operational risk; confirm version-specific flags with the actual installed CLI/vendor documentation.

| Original runbook/template | Offline explanation |
|---|---|
| [01-LINUX-SETUP-OPERATIONS.md](../01-LINUX-SETUP-OPERATIONS.md) | [Offline explanation](01-LINUX-SETUP-OPERATIONS_md.md) |
| [02-SECURITY-HARDENING.md](../02-SECURITY-HARDENING.md) | [Offline explanation](02-SECURITY-HARDENING_md.md) |
| [03-ADVANCED-TROUBLESHOOTING.md](../03-ADVANCED-TROUBLESHOOTING.md) | [Offline explanation](03-ADVANCED-TROUBLESHOOTING_md.md) |
| [04-LINUX-HA-CLUSTER-PACEMAKER.md](../04-LINUX-HA-CLUSTER-PACEMAKER.md) | [Offline explanation](04-LINUX-HA-CLUSTER-PACEMAKER_md.md) |
| [05-PLATFORM-NODE-PREPARATION.md](../05-PLATFORM-NODE-PREPARATION.md) | [Offline explanation](05-PLATFORM-NODE-PREPARATION_md.md) |
| [06-ENTERPRISE-HA-CLUSTER-IMPLEMENTATION.md](../06-ENTERPRISE-HA-CLUSTER-IMPLEMENTATION.md) | [Offline explanation](06-ENTERPRISE-HA-CLUSTER-IMPLEMENTATION_md.md) |
| [07-SCRIPT-SYNTAX-CHATGPT.md](../07-SCRIPT-SYNTAX-CHATGPT.md) | [Offline explanation](07-SCRIPT-SYNTAX-CHATGPT_md.md) |
| [08-CLOUD-BAREMETAL-CLUSTER-DEPLOYMENT.md](../08-CLOUD-BAREMETAL-CLUSTER-DEPLOYMENT.md) | [Offline explanation](08-CLOUD-BAREMETAL-CLUSTER-DEPLOYMENT_md.md) |
| [09-FORGOTTEN-PASSWORD-RECOVERY.md](../09-FORGOTTEN-PASSWORD-RECOVERY.md) | [Offline explanation](09-FORGOTTEN-PASSWORD-RECOVERY_md.md) |
| [10-FAST-LOG-TROUBLESHOOTING.md](../10-FAST-LOG-TROUBLESHOOTING.md) | [Offline explanation](10-FAST-LOG-TROUBLESHOOTING_md.md) |
| [11-CERN-STYLE-HPC-HTC-PARALLEL-COMPUTING.md](../11-CERN-STYLE-HPC-HTC-PARALLEL-COMPUTING.md) | [Offline explanation](11-CERN-STYLE-HPC-HTC-PARALLEL-COMPUTING_md.md) |
| [scripts/prepare-kubernetes-node.sh](../scripts/prepare-kubernetes-node.sh) | [Offline explanation](scripts-prepare-kubernetes-node_sh.md) |
| [scripts/bootstrap-k3s-node.sh](../scripts/bootstrap-k3s-node.sh) | [Offline explanation](scripts-bootstrap-k3s-node_sh.md) |

## Local refresh and vendor changes

```bash
python3 tools/build_offline_reference.py
python3 tools/vendor_watch.py
```

**Local build** reads repository files without internet. The **vendor check requires internet** and updates only the vendor-watch review records; it does not silently replace production commands. The scheduled GitHub Action opens a review PR if authorized. See [vendor change dashboard](../vendor-watch/README.md).
