# Provisioning Linux servers for Kubernetes

**Start here:** [scripts/prepare-kubernetes-node.sh](scripts/prepare-kubernetes-node.sh).

Supports **Ubuntu/Debian/RHEL-family** hosts prepared for **kubeadm**, with explicit opt-in. Has `--role control-plane` or `--role worker`, and `--dry-run` as default. It configures OS prerequisites and optional package installation, but does **not** create a control plane, join a cluster, install CNI/CSI or provision cloud network infrastructure.

```bash
sudo bash scripts/prepare-kubernetes-node.sh --role control-plane --k8s-minor v1.37 --dry-run
sudo bash scripts/prepare-kubernetes-node.sh --distro auto --role worker --k8s-minor v1.37 --apply
```

> Run from the checked-out repository, not by piping unknown internet scripts directly into root. Review package sources and Linux/kernel compatibility. RHEL needs activated Red Hat repositories/entitlements.

**OpenShift is different:** Its bootstrap/control-plane machines use **RHCOS** installed by the OpenShift Installer with Ignition. Do **not** use this bash script to turn Debian, Ubuntu or ordinary RHEL into a supported OpenShift master. See [OpenShift documentation](https://docs.redhat.com/en/documentation/openshift_container_platform/).

## What it changes in apply mode
- Installs diagnostic tooling, containerd and Kubernetes packages from the minor-version-matched pkgs.k8s.io repository.
- Sets `br_netfilter`, `overlay` and forwarding sysctls; configures containerd `SystemdCgroup=true`.
- Optionally disables swap after explicit `--disable-swap`; note that certain Kubernetes setups support swap with specific kubelet config, so disabling is a chosen baseline rather than universal rule.
- Prints the next steps for kubeadm init/join. No secrets, join tokens or certs are created or printed.

**Cloud specifics:** AWS, Azure and GCP require cloud provider integration, IAM, routing, CSI/CNI, LB, firewall, and correct subnet/machine provisioning. See [cloud-and-bare-metal-runbook](../terraform-commands/README.md) if accessible; each provider-specific guide in the Terraform repository contains a checklist. Prefer managed Kubernetes EKS/AKS/GKE when appropriate.
