# Offline Linux command explanations: 05-PLATFORM-NODE-PREPARATION.md

Fully local searchable catalog sourced from [05-PLATFORM-NODE-PREPARATION.md](../05-PLATFORM-NODE-PREPARATION.md). Every command includes syntax, purpose, options, output and safety. Verify ambiguous flags with installed `--help` / manual pages.

## 1. sudo bash scripts/prepare-kubernetes-node.sh --role control-plane --k8s-minor v1.37 --dry-run

```bash
sudo bash scripts/prepare-kubernetes-node.sh --role control-plane --k8s-minor v1.37 --dry-run
```

**Purpose:** Runs the named command with supplied target arguments; consult its exact local manual for detailed semantics.

**Full syntax:** executable `bash`; following words identify subcommands and target, followed by options `--role` (verify exact option in this CLI), `--k8s-minor` (verify exact option in this CLI), `--dry-run` (verify exact option in this CLI). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** Runs the named command with supplied target arguments; consult its exact local manual for detailed semantics. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟢 Primarily read-only, but may display sensitive host/account information.

## 2. sudo bash scripts/prepare-kubernetes-node.sh --distro auto --role worker --k8s-minor v1.37 --apply

```bash
sudo bash scripts/prepare-kubernetes-node.sh --distro auto --role worker --k8s-minor v1.37 --apply
```

**Purpose:** Runs the named command with supplied target arguments; consult its exact local manual for detailed semantics.

**Full syntax:** executable `bash`; following words identify subcommands and target, followed by options `--distro` (verify exact option in this CLI), `--role` (verify exact option in this CLI), `--k8s-minor` (verify exact option in this CLI), `--apply` (verify exact option in this CLI). Shell `|` sends standard output to next process; `>` can write/truncate local files.

**Inputs:** No explicit placeholders.

**Expected outcome:** Runs the named command with supplied target arguments; consult its exact local manual for detailed semantics. Check exit code, output, service and timestamp correlation against a healthy baseline.

**Safety:** 🟠 Potentially changes operating system; get approval and rollback/recovery access.

