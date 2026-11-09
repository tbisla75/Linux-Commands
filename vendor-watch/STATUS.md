# Vendor update checks — review dashboard

This is a **vendor-release change detector**, not an automatic compatibility guarantee. A release tag or docs page change does **not** prove that any command has changed. Never merge generated command modifications without human review.

| Source | Latest observed | Official link |
|---|---|---|
| Linux kernel releases page | `page fingerprint 301c91120e506` | [source](https://www.kernel.org/) |
| Ubuntu Security Notices | `page fingerprint 3398859da1b1e` | [source](https://ubuntu.com/security/notices) |
| Red Hat security advisories | `page fingerprint 3bef333517063` | [source](https://access.redhat.com/security/security-updates/) |
| Slurm scheduler release tags | `slurm-26-05-5-1` | [source](https://api.github.com/repos/SchedMD/slurm/releases/latest) |
| HTCondor workload scheduler release tags | `v25.14.1` | [source](https://api.github.com/repos/htcondor/htcondor/releases/latest) |

## Manual validation before changing any example

1. Open the official release notes/advisory and compare the affected tool/CLI command syntax to the current runbook.
2. Confirm behavior in the *installed* vendor release using `--help`, man pages, version-specific docs, a lab and the support matrix.
3. Update commands, warning labels, expected output and rollback procedures; add exact vendor reference and affected version.
4. Re-run `python3 tools/build_offline_reference.py` and review all offline explanation diffs.
5. Run peer review/CI. Merge only approved, tested changes; never auto-apply a production command change.

**Note:** VMware/Broadcom portals and some vendor sites may block automated reads. An unavailable upstream check must be treated as *unknown*, not as up-to-date.
