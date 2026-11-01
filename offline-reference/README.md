# Offline-first command reference — full local catalog

This directory is committed to Git and can be cloned, downloaded or printed for **offline** incident response. It is generated from the actual command examples and declarative templates in this repository; it does not rely on ChatGPT being available.

**Important:** An offline explanation is a helpful annotated starting point, not a guaranteed validated syntax for every release. Dynamic command flags should be verified using your installed CLI help/man pages and supported vendor procedures. Destructive changes require peer review.

**Indexed items:** 387 across 12 source files.

| Source | Offline explanations | Items |
|---|---|---:|
| `01-LINUX-SETUP-OPERATIONS.md` | [Open offline reference](01-LINUX-SETUP-OPERATIONS_md.md) | 34 |
| `02-SECURITY-HARDENING.md` | [Open offline reference](02-SECURITY-HARDENING_md.md) | 24 |
| `03-ADVANCED-TROUBLESHOOTING.md` | [Open offline reference](03-ADVANCED-TROUBLESHOOTING_md.md) | 32 |
| `04-LINUX-HA-CLUSTER-PACEMAKER.md` | [Open offline reference](04-LINUX-HA-CLUSTER-PACEMAKER_md.md) | 19 |
| `05-PLATFORM-NODE-PREPARATION.md` | [Open offline reference](05-PLATFORM-NODE-PREPARATION_md.md) | 2 |
| `06-ENTERPRISE-HA-CLUSTER-IMPLEMENTATION.md` | [Open offline reference](06-ENTERPRISE-HA-CLUSTER-IMPLEMENTATION_md.md) | 26 |
| `08-CLOUD-BAREMETAL-CLUSTER-DEPLOYMENT.md` | [Open offline reference](08-CLOUD-BAREMETAL-CLUSTER-DEPLOYMENT_md.md) | 29 |
| `09-FORGOTTEN-PASSWORD-RECOVERY.md` | [Open offline reference](09-FORGOTTEN-PASSWORD-RECOVERY_md.md) | 27 |
| `10-FAST-LOG-TROUBLESHOOTING.md` | [Open offline reference](10-FAST-LOG-TROUBLESHOOTING_md.md) | 60 |
| `11-CERN-STYLE-HPC-HTC-PARALLEL-COMPUTING.md` | [Open offline reference](11-CERN-STYLE-HPC-HTC-PARALLEL-COMPUTING_md.md) | 63 |
| `scripts/bootstrap-k3s-node.sh` | [Open offline reference](scripts-bootstrap-k3s-node_sh.md) | 21 |
| `scripts/prepare-kubernetes-node.sh` | [Open offline reference](scripts-prepare-kubernetes-node_sh.md) | 50 |

## How to update locally

```bash
python3 tools/build_offline_reference.py
git diff -- offline-reference/
```

This generator does **not** infer new vendor commands, does **not** run shell commands, and does **not** grant access to systems. A scheduled vendor-watch workflow separately proposes release changes for review.
