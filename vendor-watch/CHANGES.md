# Vendor-change candidates — human review required

No production commands are auto-replaced. Review the changed vendor release/advisory and amend the correct runbooks in this PR.

## Linux kernel releases page

- Result: First baseline: review before accepting
- Previous observed: `none`
- New observed: `sha256:8eb08778153a98dd4c10`
- Vendor document: https://www.kernel.org/
- Upstream release-note lines mentioning CLI/security/breaking changes (unverified candidates):
- Action: inspect breaking changes, deprecations, flags, authentication, support matrix, examples; amend runbooks and re-generate offline catalog; obtain review.

## Ubuntu Security Notices

- Result: First baseline: review before accepting
- Previous observed: `none`
- New observed: `sha256:a324fec2562ec5f3d268`
- Vendor document: https://ubuntu.com/security/notices
- Upstream release-note lines mentioning CLI/security/breaking changes (unverified candidates):
- Action: inspect breaking changes, deprecations, flags, authentication, support matrix, examples; amend runbooks and re-generate offline catalog; obtain review.

## Red Hat security advisories

- Result: First baseline: review before accepting
- Previous observed: `none`
- New observed: `sha256:c33fe8c5b39470b8ee84`
- Vendor document: https://access.redhat.com/security/security-updates/
- Upstream release-note lines mentioning CLI/security/breaking changes (unverified candidates):
- Action: inspect breaking changes, deprecations, flags, authentication, support matrix, examples; amend runbooks and re-generate offline catalog; obtain review.

## Slurm scheduler release tags

- Result: First baseline: review before accepting
- Previous observed: `none`
- New observed: `slurm-26-05-5-1`
- Vendor document: https://github.com/SchedMD/slurm/releases/tag/slurm-26-05-5-1
- Upstream release-note lines mentioning CLI/security/breaking changes (unverified candidates):
- Fix slurmctld crash on restart when shared GRES topology was removed from a node with a running job.
- Action: inspect breaking changes, deprecations, flags, authentication, support matrix, examples; amend runbooks and re-generate offline catalog; obtain review.

## HTCondor workload scheduler release tags

- Result: First baseline: review before accepting
- Previous observed: `none`
- New observed: `v25.14.1`
- Vendor document: https://github.com/htcondor/htcondor/releases/tag/v25.14.1
- Upstream release-note lines mentioning CLI/security/breaking changes (unverified candidates):
- Container universe adds the detected GPU flag the container command line
- Action: inspect breaking changes, deprecations, flags, authentication, support matrix, examples; amend runbooks and re-generate offline catalog; obtain review.

