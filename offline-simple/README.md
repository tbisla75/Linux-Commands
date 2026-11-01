# Linux, HA and HPC explained simply

**Start here when ChatGPT or the internet is unavailable.** These are practical, plain-English explanations of the actual commands in the corresponding repository. Every entry includes the exact original command, what it does on that platform, syntax and switches, what you should see, common failures and whether it can affect production. Templates are explained field-by-field. Original technical runbooks and [advanced offline annotations](../offline-reference/README.md) remain available.

**Safety:** generic commands and example values are not automatically safe for every product version, OS or customer. Verify selected host/context, rights and vendor release. A broad command or tool-specific option may need local `--help` verification. Never upload real credentials or customer data to ChatGPT.

| Subject | Plain-English guide | Original runbook |
|---|---|---|
| `01-LINUX-SETUP-OPERATIONS.md` | [Simple explanation](01-LINUX-SETUP-OPERATIONS_md.md) | [Original](../01-LINUX-SETUP-OPERATIONS.md) |
| `02-SECURITY-HARDENING.md` | [Simple explanation](02-SECURITY-HARDENING_md.md) | [Original](../02-SECURITY-HARDENING.md) |
| `03-ADVANCED-TROUBLESHOOTING.md` | [Simple explanation](03-ADVANCED-TROUBLESHOOTING_md.md) | [Original](../03-ADVANCED-TROUBLESHOOTING.md) |
| `04-LINUX-HA-CLUSTER-PACEMAKER.md` | [Simple explanation](04-LINUX-HA-CLUSTER-PACEMAKER_md.md) | [Original](../04-LINUX-HA-CLUSTER-PACEMAKER.md) |
| `05-PLATFORM-NODE-PREPARATION.md` | [Simple explanation](05-PLATFORM-NODE-PREPARATION_md.md) | [Original](../05-PLATFORM-NODE-PREPARATION.md) |
| `06-ENTERPRISE-HA-CLUSTER-IMPLEMENTATION.md` | [Simple explanation](06-ENTERPRISE-HA-CLUSTER-IMPLEMENTATION_md.md) | [Original](../06-ENTERPRISE-HA-CLUSTER-IMPLEMENTATION.md) |
| `07-SCRIPT-SYNTAX-CHATGPT.md` | [Simple explanation](07-SCRIPT-SYNTAX-CHATGPT_md.md) | [Original](../07-SCRIPT-SYNTAX-CHATGPT.md) |
| `08-CLOUD-BAREMETAL-CLUSTER-DEPLOYMENT.md` | [Simple explanation](08-CLOUD-BAREMETAL-CLUSTER-DEPLOYMENT_md.md) | [Original](../08-CLOUD-BAREMETAL-CLUSTER-DEPLOYMENT.md) |
| `09-FORGOTTEN-PASSWORD-RECOVERY.md` | [Simple explanation](09-FORGOTTEN-PASSWORD-RECOVERY_md.md) | [Original](../09-FORGOTTEN-PASSWORD-RECOVERY.md) |
| `10-FAST-LOG-TROUBLESHOOTING.md` | [Simple explanation](10-FAST-LOG-TROUBLESHOOTING_md.md) | [Original](../10-FAST-LOG-TROUBLESHOOTING.md) |
| `11-CERN-STYLE-HPC-HTC-PARALLEL-COMPUTING.md` | [Simple explanation](11-CERN-STYLE-HPC-HTC-PARALLEL-COMPUTING_md.md) | [Original](../11-CERN-STYLE-HPC-HTC-PARALLEL-COMPUTING.md) |
| `scripts/prepare-kubernetes-node.sh` | [Simple explanation](scripts-prepare-kubernetes-node_sh.md) | [Original](../scripts/prepare-kubernetes-node.sh) |
| `scripts/bootstrap-k3s-node.sh` | [Simple explanation](scripts-bootstrap-k3s-node_sh.md) | [Original](../scripts/bootstrap-k3s-node.sh) |

## What is in each explanation?

1. **What it does:** in everyday English, including the specific platform effect.
2. **How to read it:** tool, action, flags, target names, shell operators and example placeholders.
3. **What you should see:** successful response and the sort of failure to investigate.
4. **Can it change production?** privileged actions, credentials, blast radius and safe checks.
5. **Where to look next:** the original, more technical runbook and the installed CLI's help.

### Updates and review

The existing [weekly vendor tracker](../vendor-watch/README.md) detects vendor release/documentation changes but **does not automatically rewrite these explanations**. When a vendor changes CLI behavior, update both the source runbook and this simple explanation after verifying release notes/lab results; otherwise the old explanation can be stale. The original [offline generator](../tools/build_offline_reference.py) maintains `offline-reference/`, not this curated `offline-simple/` copy.
