# Linux commands explained in plain English: 05-PLATFORM-NODE-PREPARATION.md

**Offline incident reference.** Find the exact command, see what it does, why to run it, how to interpret the results, and whether it can change your host. Some commands need optional packages or root permissions. Original: [05-PLATFORM-NODE-PREPARATION.md](../05-PLATFORM-NODE-PREPARATION.md).

## 1. sudo bash scripts/prepare-kubernetes-node.sh --role control-plane --k8s-minor v1.37 --dry-run

```bash
sudo bash scripts/prepare-kubernetes-node.sh --role control-plane --k8s-minor v1.37 --dry-run
```

**What it does:** Runs the installed Linux utility `bash` with the following arguments. This action depends on the specific tool and environment.

**How to read the command:** `bash` is the utility. Options: `--role` means server/control-plane/agent/worker role argument for bootstrap script; `--k8s-minor` means choose matching Kubernetes minor package repository; `--dry-run` means preview planned script changes without executing.

**Expected output:** Program output or error; inspect the original runbook and `man bash` if available.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 2. sudo bash scripts/prepare-kubernetes-node.sh --distro auto --role worker --k8s-minor v1.37 --apply

```bash
sudo bash scripts/prepare-kubernetes-node.sh --distro auto --role worker --k8s-minor v1.37 --apply
```

**What it does:** Runs the installed Linux utility `bash` with the following arguments. This action depends on the specific tool and environment.

**How to read the command:** `bash` is the utility. Options: `--distro` means a program-specific setting; check its local `--help`; `--role` means server/control-plane/agent/worker role argument for bootstrap script; `--k8s-minor` means choose matching Kubernetes minor package repository; `--apply` means opt in to script's system-changing operations.

**Expected output:** Program output or error; inspect the original runbook and `man bash` if available.

**Before running:** Check that you're on the correct Linux server/distribution. ⚠️ This may change the OS, accounts, services or submitted workloads; have approval/rollback.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

