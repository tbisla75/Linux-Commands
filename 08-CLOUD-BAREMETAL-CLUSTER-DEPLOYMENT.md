# Linux Kubernetes deployment — AWS, Azure, Google Cloud and bare metal

> **No provider credentials or secret tokens in GitHub.** A generic Linux script prepares fresh kubeadm/K3s nodes; it does NOT create VMs, subnets, LBs, CNI, CSI or a complete production cluster. In cloud, prefer EKS/AKS/GKE for managed Kubernetes unless you require a self-managed control plane. OpenShift uses RHCOS + its supported installer rather than these scripts.

## AWS: self-managed kubeadm/K3s on EC2

Run 3 control-plane EC2 instances across 3 AZs + 3 workers, attach private subnet interfaces, internal TCP API load balancer, NAT/VPC endpoints and instance IAM profile. EBS CSI requires correct IAM/IRSA/Pod Identity. ExternalDNS/ingress/ALB controller require specific setup; a stock kubeadm cluster has no AWS cloud controller integration. Prefer EKS when operational ownership is not required.

```bash
aws sts get-caller-identity
aws ec2 describe-vpcs --region eu-central-1
aws ec2 describe-subnets --filters Name=vpc-id,Values=VPC_ID --region eu-central-1
aws ec2 describe-security-groups --group-ids SG_ID --region eu-central-1
aws elbv2 describe-load-balancers --region eu-central-1
```

<details><summary>🧠 Explain each command in ChatGPT</summary>

- [1. Explain `aws sts get-caller-identity`](https://chatgpt.com/?q=Explain%20every%20option%2C%20prerequisite%2C%20permission%2C%20API%20effect%2C%20security%20risk%2C%20output%20and%20troubleshooting%20of%20this%20cloud%2FLinux%20CLI%20command.%20Do%20not%20execute%3A%20aws%20sts%20get-caller-identity)
- [2. Explain `aws ec2 describe-vpcs --region eu-central-1`](https://chatgpt.com/?q=Explain%20every%20option%2C%20prerequisite%2C%20permission%2C%20API%20effect%2C%20security%20risk%2C%20output%20and%20troubleshooting%20of%20this%20cloud%2FLinux%20CLI%20command.%20Do%20not%20execute%3A%20aws%20ec2%20describe-vpcs%20--region%20eu-central-1)
- [3. Explain `aws ec2 describe-subnets --filters Name=vpc-id,Values=VPC_ID --region eu-central-1`](https://chatgpt.com/?q=Explain%20every%20option%2C%20prerequisite%2C%20permission%2C%20API%20effect%2C%20security%20risk%2C%20output%20and%20troubleshooting%20of%20this%20cloud%2FLinux%20CLI%20command.%20Do%20not%20execute%3A%20aws%20ec2%20describe-subnets%20--filters%20Name%3Dvpc-id%2CValues%3DVPC_ID%20--region%20eu-central-1)
- [4. Explain `aws ec2 describe-security-groups --group-ids SG_ID --region eu-central-1`](https://chatgpt.com/?q=Explain%20every%20option%2C%20prerequisite%2C%20permission%2C%20API%20effect%2C%20security%20risk%2C%20output%20and%20troubleshooting%20of%20this%20cloud%2FLinux%20CLI%20command.%20Do%20not%20execute%3A%20aws%20ec2%20describe-security-groups%20--group-ids%20SG_ID%20--region%20eu-central-1)
- [5. Explain `aws elbv2 describe-load-balancers --region eu-central-1`](https://chatgpt.com/?q=Explain%20every%20option%2C%20prerequisite%2C%20permission%2C%20API%20effect%2C%20security%20risk%2C%20output%20and%20troubleshooting%20of%20this%20cloud%2FLinux%20CLI%20command.%20Do%20not%20execute%3A%20aws%20elbv2%20describe-load-balancers%20--region%20eu-central-1)

</details>

## Azure: self-managed kubeadm/K3s on VMs

Use separate VMs or VM scale sets with managed identities, approved VNet subnets, NSGs, internal Azure LB for port 6443, outbound NAT, DNS, Azure Disk CSI and platform CCM where supported. For on-prem-style management use VM IPs/private hostnames; AKS is generally preferable when you don't need OS-level control plane maintenance.

```bash
az account show --output table
az network vnet show -g RG -n VNET --output json
az network nsg list -g RG --output table
az network lb list -g RG --output table
az vm list -g RG -d --output table
```

<details><summary>🧠 Explain each command in ChatGPT</summary>

- [1. Explain `az account show --output table`](https://chatgpt.com/?q=Explain%20every%20option%2C%20prerequisite%2C%20permission%2C%20API%20effect%2C%20security%20risk%2C%20output%20and%20troubleshooting%20of%20this%20cloud%2FLinux%20CLI%20command.%20Do%20not%20execute%3A%20az%20account%20show%20--output%20table)
- [2. Explain `az network vnet show -g RG -n VNET --output json`](https://chatgpt.com/?q=Explain%20every%20option%2C%20prerequisite%2C%20permission%2C%20API%20effect%2C%20security%20risk%2C%20output%20and%20troubleshooting%20of%20this%20cloud%2FLinux%20CLI%20command.%20Do%20not%20execute%3A%20az%20network%20vnet%20show%20-g%20RG%20-n%20VNET%20--output%20json)
- [3. Explain `az network nsg list -g RG --output table`](https://chatgpt.com/?q=Explain%20every%20option%2C%20prerequisite%2C%20permission%2C%20API%20effect%2C%20security%20risk%2C%20output%20and%20troubleshooting%20of%20this%20cloud%2FLinux%20CLI%20command.%20Do%20not%20execute%3A%20az%20network%20nsg%20list%20-g%20RG%20--output%20table)
- [4. Explain `az network lb list -g RG --output table`](https://chatgpt.com/?q=Explain%20every%20option%2C%20prerequisite%2C%20permission%2C%20API%20effect%2C%20security%20risk%2C%20output%20and%20troubleshooting%20of%20this%20cloud%2FLinux%20CLI%20command.%20Do%20not%20execute%3A%20az%20network%20lb%20list%20-g%20RG%20--output%20table)
- [5. Explain `az vm list -g RG -d --output table`](https://chatgpt.com/?q=Explain%20every%20option%2C%20prerequisite%2C%20permission%2C%20API%20effect%2C%20security%20risk%2C%20output%20and%20troubleshooting%20of%20this%20cloud%2FLinux%20CLI%20command.%20Do%20not%20execute%3A%20az%20vm%20list%20-g%20RG%20-d%20--output%20table)

</details>

## Google Cloud: self-managed kubeadm/K3s on Compute Engine

Use private Compute Engine instances, approved VPC/subnet in multi-zone locations, Cloud NAT, private DNS, internal TCP load balancer and attached PD CSI integration. Cloud provider integration and node addresses require explicit design; GKE avoids much of this complexity.

```bash
gcloud auth list
gcloud config get-value project
gcloud compute networks list
gcloud compute subnets list --regions=europe-west6
gcloud compute instances list
```

<details><summary>🧠 Explain each command in ChatGPT</summary>

- [1. Explain `gcloud auth list`](https://chatgpt.com/?q=Explain%20every%20option%2C%20prerequisite%2C%20permission%2C%20API%20effect%2C%20security%20risk%2C%20output%20and%20troubleshooting%20of%20this%20cloud%2FLinux%20CLI%20command.%20Do%20not%20execute%3A%20gcloud%20auth%20list)
- [2. Explain `gcloud config get-value project`](https://chatgpt.com/?q=Explain%20every%20option%2C%20prerequisite%2C%20permission%2C%20API%20effect%2C%20security%20risk%2C%20output%20and%20troubleshooting%20of%20this%20cloud%2FLinux%20CLI%20command.%20Do%20not%20execute%3A%20gcloud%20config%20get-value%20project)
- [3. Explain `gcloud compute networks list`](https://chatgpt.com/?q=Explain%20every%20option%2C%20prerequisite%2C%20permission%2C%20API%20effect%2C%20security%20risk%2C%20output%20and%20troubleshooting%20of%20this%20cloud%2FLinux%20CLI%20command.%20Do%20not%20execute%3A%20gcloud%20compute%20networks%20list)
- [4. Explain `gcloud compute subnets list --regions=europe-west6`](https://chatgpt.com/?q=Explain%20every%20option%2C%20prerequisite%2C%20permission%2C%20API%20effect%2C%20security%20risk%2C%20output%20and%20troubleshooting%20of%20this%20cloud%2FLinux%20CLI%20command.%20Do%20not%20execute%3A%20gcloud%20compute%20subnets%20list%20--regions%3Deurope-west6)
- [5. Explain `gcloud compute instances list`](https://chatgpt.com/?q=Explain%20every%20option%2C%20prerequisite%2C%20permission%2C%20API%20effect%2C%20security%20risk%2C%20output%20and%20troubleshooting%20of%20this%20cloud%2FLinux%20CLI%20command.%20Do%20not%20execute%3A%20gcloud%20compute%20instances%20list)

</details>

## Bare metal and vSphere: self-managed HA nodes

Select enterprise Linux OS and firmware baseline; provide two power/network failure domains, DNS/NTP, externally redundant L4 VIP/LoadBalancer for 6443, 3 control planes + workers, CSI for enterprise SAN/NFS and ingress LB for 80/443. For K3s, ensure all servers share same critical flags and validate ServiceLB/Traefik port 80/443 contention.

```bash
hostnamectl
ip -br addr
ip route
timedatectl status
getent hosts k8s-api.example.internal
nc -vz k8s-api.example.internal 6443
lsblk -f
sudo ss -tulpen
```

<details><summary>🧠 Explain each command in ChatGPT</summary>

- [1. Explain `hostnamectl`](https://chatgpt.com/?q=Explain%20every%20option%2C%20prerequisite%2C%20permission%2C%20API%20effect%2C%20security%20risk%2C%20output%20and%20troubleshooting%20of%20this%20cloud%2FLinux%20CLI%20command.%20Do%20not%20execute%3A%20hostnamectl)
- [2. Explain `ip -br addr`](https://chatgpt.com/?q=Explain%20every%20option%2C%20prerequisite%2C%20permission%2C%20API%20effect%2C%20security%20risk%2C%20output%20and%20troubleshooting%20of%20this%20cloud%2FLinux%20CLI%20command.%20Do%20not%20execute%3A%20ip%20-br%20addr)
- [3. Explain `ip route`](https://chatgpt.com/?q=Explain%20every%20option%2C%20prerequisite%2C%20permission%2C%20API%20effect%2C%20security%20risk%2C%20output%20and%20troubleshooting%20of%20this%20cloud%2FLinux%20CLI%20command.%20Do%20not%20execute%3A%20ip%20route)
- [4. Explain `timedatectl status`](https://chatgpt.com/?q=Explain%20every%20option%2C%20prerequisite%2C%20permission%2C%20API%20effect%2C%20security%20risk%2C%20output%20and%20troubleshooting%20of%20this%20cloud%2FLinux%20CLI%20command.%20Do%20not%20execute%3A%20timedatectl%20status)
- [5. Explain `getent hosts k8s-api.example.internal`](https://chatgpt.com/?q=Explain%20every%20option%2C%20prerequisite%2C%20permission%2C%20API%20effect%2C%20security%20risk%2C%20output%20and%20troubleshooting%20of%20this%20cloud%2FLinux%20CLI%20command.%20Do%20not%20execute%3A%20getent%20hosts%20k8s-api.example.internal)
- [6. Explain `nc -vz k8s-api.example.internal 6443`](https://chatgpt.com/?q=Explain%20every%20option%2C%20prerequisite%2C%20permission%2C%20API%20effect%2C%20security%20risk%2C%20output%20and%20troubleshooting%20of%20this%20cloud%2FLinux%20CLI%20command.%20Do%20not%20execute%3A%20nc%20-vz%20k8s-api.example.internal%206443)
- [7. Explain `lsblk -f`](https://chatgpt.com/?q=Explain%20every%20option%2C%20prerequisite%2C%20permission%2C%20API%20effect%2C%20security%20risk%2C%20output%20and%20troubleshooting%20of%20this%20cloud%2FLinux%20CLI%20command.%20Do%20not%20execute%3A%20lsblk%20-f)
- [8. Explain `sudo ss -tulpen`](https://chatgpt.com/?q=Explain%20every%20option%2C%20prerequisite%2C%20permission%2C%20API%20effect%2C%20security%20risk%2C%20output%20and%20troubleshooting%20of%20this%20cloud%2FLinux%20CLI%20command.%20Do%20not%20execute%3A%20sudo%20ss%20-tulpen)

</details>

## Post-install verification

Run after installing compatible CNI/CSI and securely joining control planes/workers. Use dedicated workload external ingress, not the API endpoint.

```bash
kubectl get nodes -o wide
kubectl get pods -A -o wide
kubectl get storageclass,csidriver
kubectl get --raw='/readyz?verbose'
kubectl get networkpolicy -A
kubectl get pdb -A
```

<details><summary>🧠 Explain each command in ChatGPT</summary>

- [1. Explain `kubectl get nodes -o wide`](https://chatgpt.com/?q=Explain%20every%20option%2C%20prerequisite%2C%20permission%2C%20API%20effect%2C%20security%20risk%2C%20output%20and%20troubleshooting%20of%20this%20cloud%2FLinux%20CLI%20command.%20Do%20not%20execute%3A%20kubectl%20get%20nodes%20-o%20wide)
- [2. Explain `kubectl get pods -A -o wide`](https://chatgpt.com/?q=Explain%20every%20option%2C%20prerequisite%2C%20permission%2C%20API%20effect%2C%20security%20risk%2C%20output%20and%20troubleshooting%20of%20this%20cloud%2FLinux%20CLI%20command.%20Do%20not%20execute%3A%20kubectl%20get%20pods%20-A%20-o%20wide)
- [3. Explain `kubectl get storageclass,csidriver`](https://chatgpt.com/?q=Explain%20every%20option%2C%20prerequisite%2C%20permission%2C%20API%20effect%2C%20security%20risk%2C%20output%20and%20troubleshooting%20of%20this%20cloud%2FLinux%20CLI%20command.%20Do%20not%20execute%3A%20kubectl%20get%20storageclass%2Ccsidriver)
- [4. Explain `kubectl get --raw='/readyz?verbose'`](https://chatgpt.com/?q=Explain%20every%20option%2C%20prerequisite%2C%20permission%2C%20API%20effect%2C%20security%20risk%2C%20output%20and%20troubleshooting%20of%20this%20cloud%2FLinux%20CLI%20command.%20Do%20not%20execute%3A%20kubectl%20get%20--raw%3D'%2Freadyz%3Fverbose')
- [5. Explain `kubectl get networkpolicy -A`](https://chatgpt.com/?q=Explain%20every%20option%2C%20prerequisite%2C%20permission%2C%20API%20effect%2C%20security%20risk%2C%20output%20and%20troubleshooting%20of%20this%20cloud%2FLinux%20CLI%20command.%20Do%20not%20execute%3A%20kubectl%20get%20networkpolicy%20-A)
- [6. Explain `kubectl get pdb -A`](https://chatgpt.com/?q=Explain%20every%20option%2C%20prerequisite%2C%20permission%2C%20API%20effect%2C%20security%20risk%2C%20output%20and%20troubleshooting%20of%20this%20cloud%2FLinux%20CLI%20command.%20Do%20not%20execute%3A%20kubectl%20get%20pdb%20-A)

</details>

## Repeatable deployment sequence for self-managed kubeadm

1. Run a Terraform/cloud or vSphere provisioning plan for three control-plane and three worker VMs with distinct hostnames and fixed private addresses; use hardened OS images.
2. Verify firewall ports and HA API VIP DNS, Kubernetes version skew, instance identity, registry egress, NTP and SSH access.
3. Run [kubeadm node prep script](scripts/prepare-kubernetes-node.sh) with `--dry-run` on all nodes; after approval `--apply` individually.
4. Run `kubeadm init --config kubeadm-config.yaml --upload-certs` only on designated first control plane, after reviewing [config template](https://github.com/tbisla75/terraform-commands/blob/main/templates/kubeadm-ha/kubeadm-config.yaml).
5. Install approved version-pinned CNI; join other control planes serially, then workers with secrets passed through vault.
6. Configure production CSI, ingress controller, WAF/LB, authentication, Pod Security, monitoring, backup and GitOps; run failover tests.

## Repeatable deployment sequence for K3s

1. Provision Linux servers as above; choose K3s **embedded etcd HA with three server nodes**, dedicated workers, API LB and secure `server token`.
2. Use [guarded K3s bootstrap script](scripts/bootstrap-k3s-node.sh) to create first server (`--cluster-init`) and subsequent servers/agents using `--server` and `--token-file`.
3. Ensure server-node critical flags (cluster CIDRs, CNI, ServiceLB/Traefik disable, secrets encryption, etc.) are uniform. **The example script does not configure these advanced choices**; edit and review config before production.
4. Validate etcd quorum, HAProxy/AVI LB failover, pods, storage, routes, backups and worker rescheduling.

## OpenShift differences

- **AWS / Azure / GCP:** use supported `openshift-install` IPI/UPI, platform IAM, network/DNS prerequisites, pull secret and RHCOS.
- **Bare metal/vSphere:** use agent-based, assisted, IPI or UPI according to supported matrix; provide API/Ingress VIPs, ignition, RHCOS imaging, rack diversity and storage CSI.
- OpenShift cluster version downgrade is unsupported. Use Red Hat-supported upgrade and DR procedures. See [OpenShift installer starters](https://github.com/tbisla75/terraform-commands/tree/main/templates/openshift-ipi).

## Customer acceptance

- RTO/RPO test with real application data and off-site backups.
- One server/AZ loss and API VIP failover; user workload stays available with N+1 capacity.
- Test image registry outage, DNS failure, certificate expiry and storage path failover.
- Valid security policies, identity, monitoring/alerts, registry, GitOps and upgrades.
- Explicit vendor support matrix and lifecycle ownership.

Sources: https://kubernetes.io/docs/setup/production-environment/tools/kubeadm/high-availability/ · https://docs.k3s.io/ · https://docs.redhat.com/en/documentation/openshift_container_platform/ .
