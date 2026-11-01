# Linux provisioning scripts — plain-English guide

This source file is an **index of ChatGPT links**, not a list of executable terminal commands. The standalone scripts have detailed local explanations instead:

- [Prepare a kubeadm control-plane or worker, line by line](scripts-prepare-kubernetes-node_sh.md)
- [Bootstrap a K3s server or agent, line by line](scripts-bootstrap-k3s-node_sh.md)

**Practical difference:** kubeadm node preparation installs/adjusts containerd, kernel modules and Kubernetes packages but does not create/join a cluster. The K3s bootstrap script can install K3s and join/create a cluster if `--apply` is specified. Both default to `--dry-run`; review all changes before production use.
