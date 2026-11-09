# Offline command / configuration reference: `05-PLATFORM-NODE-PREPARATION.md`

Generated from repository source by `tools/build_offline_reference.py`. **2 items**. This copy works offline. No commands were executed.

⚠️ **Version-aware reference, not a substitute for vendor docs.** Every individual command is preserved with purpose, flags, placeholders, expected output and risk. Ambiguous flags are marked as command-specific. Always verify flags against your installed CLI.

**Original file:** [`05-PLATFORM-NODE-PREPARATION.md`](../05-PLATFORM-NODE-PREPARATION.md)

### 1. `sudo bash scripts/prepare-kubernetes-node.sh --role control-plane --k8s-minor v1.37 --dry-run`

**Source line:** 8  |  **Tool/purpose:** bash operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
sudo bash scripts/prepare-kubernetes-node.sh --role control-plane --k8s-minor v1.37 --dry-run
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** sudo bash scripts/prepare-kubernetes-node.sh --role control-plane. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `--role` — Choose node/server role or target role in script.
**Option:** `--k8s-minor` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Option:** `--dry-run` — Preview or server-validate without applying persistent object changes; exact behavior depends on mode.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `bash operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 2. `sudo bash scripts/prepare-kubernetes-node.sh --distro auto --role worker --k8s-minor v1.37 --apply`

**Source line:** 9  |  **Tool/purpose:** bash operation  |  **Impact:** **CHANGE / POSSIBLY MUTATING**

**Exact command:**

```bash
sudo bash scripts/prepare-kubernetes-node.sh --distro auto --role worker --k8s-minor v1.37 --apply
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** sudo bash scripts/prepare-kubernetes-node.sh --distro auto. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `--distro` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Option:** `--role` — Choose node/server role or target role in script.
**Option:** `--k8s-minor` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Option:** `--apply` — A script flag generally means perform changes; inspect script before using.
**Safety/rollback:** Check subcommand and flags; requires change review and appropriate access.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `bash operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

