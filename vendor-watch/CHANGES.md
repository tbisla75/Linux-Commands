# Vendor-change candidates — human review required

No production commands are auto-replaced. Review the changed vendor release/advisory and amend the correct runbooks in this PR.

## Linux kernel releases page

- Result: First baseline: review before accepting
- Previous observed: `none`
- New observed: `sha256:02f7e1b4e8b33de353a0`
- Vendor document: https://www.kernel.org/
- Upstream release-note lines mentioning CLI/security/breaking changes (unverified candidates):
- Action: inspect breaking changes, deprecations, flags, authentication, support matrix, examples; amend runbooks and re-generate offline catalog; obtain review.

## Ubuntu Security Notices

- Result: First baseline: review before accepting
- Previous observed: `none`
- New observed: `sha256:14ed79d7b00fae7d838e`
- Vendor document: https://ubuntu.com/security/notices
- Upstream release-note lines mentioning CLI/security/breaking changes (unverified candidates):
- Action: inspect breaking changes, deprecations, flags, authentication, support matrix, examples; amend runbooks and re-generate offline catalog; obtain review.

## Red Hat security advisories

- Result: First baseline: review before accepting
- Previous observed: `none`
- New observed: `sha256:d88ae93305ce0ea741d3`
- Vendor document: https://access.redhat.com/security/security-updates/
- Upstream release-note lines mentioning CLI/security/breaking changes (unverified candidates):
- Action: inspect breaking changes, deprecations, flags, authentication, support matrix, examples; amend runbooks and re-generate offline catalog; obtain review.

## Slurm scheduler release tags

- Result: First baseline: review before accepting
- Previous observed: `none`
- New observed: `slurm-26-05-6-1`
- Vendor document: https://github.com/SchedMD/slurm/releases/tag/slurm-26-05-6-1
- Upstream release-note lines mentioning CLI/security/breaking changes (unverified candidates):
- Fix slurmctld losing track of the nodes still completing a requeued job when a node in its allocation is removed from the configuration and slurmctld restarts, showing nodes as idle while they are still completing.
- slurmctld - Prevent a crash caused by a NULL pointer dereference if a running exclusive topology job's partition is removed during a restart or reconfigure.
- slurmctld - Fix crash when a federation sibling is removed while one of its job submissions is still queued.
- Action: inspect breaking changes, deprecations, flags, authentication, support matrix, examples; amend runbooks and re-generate offline catalog; obtain review.

## HTCondor workload scheduler release tags

- Result: First baseline: review before accepting
- Previous observed: `none`
- New observed: `v26.1.0`
- Vendor document: https://github.com/htcondor/htcondor/releases/tag/v26.1.0
- Upstream release-note lines mentioning CLI/security/breaking changes (unverified candidates):
- Action: inspect breaking changes, deprecations, flags, authentication, support matrix, examples; amend runbooks and re-generate offline catalog; obtain review.

