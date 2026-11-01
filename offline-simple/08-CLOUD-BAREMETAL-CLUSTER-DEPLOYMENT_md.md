# Linux commands explained in plain English: 08-CLOUD-BAREMETAL-CLUSTER-DEPLOYMENT.md

**Offline incident reference.** Find the exact command, see what it does, why to run it, how to interpret the results, and whether it can change your host. Some commands need optional packages or root permissions. Original: [08-CLOUD-BAREMETAL-CLUSTER-DEPLOYMENT.md](../08-CLOUD-BAREMETAL-CLUSTER-DEPLOYMENT.md).

## 1. aws sts get-caller-identity

```bash
aws sts get-caller-identity
```

**What it does:** Queries AWS using your logged-in identity, project/subscription and region.

**How to read the command:** `aws` is the utility. Remaining words specify the file, service, device, user, host or action.

**Expected output:** Requested account, VPC/VNet, VM or LB properties, often in a table/JSON.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 2. aws ec2 describe-vpcs --region eu-central-1

```bash
aws ec2 describe-vpcs --region eu-central-1
```

**What it does:** Queries AWS using your logged-in identity, project/subscription and region.

**How to read the command:** `aws` is the utility. Options: `--region` means a program-specific setting; check its local `--help`.

**Expected output:** Requested account, VPC/VNet, VM or LB properties, often in a table/JSON.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 3. aws ec2 describe-subnets --filters Name=vpc-id,Values=VPC_ID --region eu-central-1

```bash
aws ec2 describe-subnets --filters Name=vpc-id,Values=VPC_ID --region eu-central-1
```

**What it does:** Queries AWS using your logged-in identity, project/subscription and region.

**How to read the command:** `aws` is the utility. Options: `--filters` means a program-specific setting; check its local `--help`; `--region` means a program-specific setting; check its local `--help`.

**Expected output:** Requested account, VPC/VNet, VM or LB properties, often in a table/JSON.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 4. aws ec2 describe-security-groups --group-ids SG_ID --region eu-central-1

```bash
aws ec2 describe-security-groups --group-ids SG_ID --region eu-central-1
```

**What it does:** Queries AWS using your logged-in identity, project/subscription and region.

**How to read the command:** `aws` is the utility. Options: `--group-ids` means a program-specific setting; check its local `--help`; `--region` means a program-specific setting; check its local `--help`.

**Expected output:** Requested account, VPC/VNet, VM or LB properties, often in a table/JSON.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 5. aws elbv2 describe-load-balancers --region eu-central-1

```bash
aws elbv2 describe-load-balancers --region eu-central-1
```

**What it does:** Queries AWS using your logged-in identity, project/subscription and region.

**How to read the command:** `aws` is the utility. Options: `--region` means a program-specific setting; check its local `--help`.

**Expected output:** Requested account, VPC/VNet, VM or LB properties, often in a table/JSON.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 6. az account show --output table

```bash
az account show --output table
```

**What it does:** Queries Azure using your logged-in identity, project/subscription and region.

**How to read the command:** `az` is the utility. Options: `--output` means specify output format/file.

**Expected output:** Requested account, VPC/VNet, VM or LB properties, often in a table/JSON.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 7. az network vnet show -g RG -n VNET --output json

```bash
az network vnet show -g RG -n VNET --output json
```

**What it does:** Queries Azure using your logged-in identity, project/subscription and region.

**How to read the command:** `az` is the utility. Options: `-g` means a program-specific setting; check its local `--help`; `-n` means display only N lines; namespace in kubectl; `--output` means specify output format/file.

**Expected output:** Requested account, VPC/VNet, VM or LB properties, often in a table/JSON.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 8. az network nsg list -g RG --output table

```bash
az network nsg list -g RG --output table
```

**What it does:** Queries Azure using your logged-in identity, project/subscription and region.

**How to read the command:** `az` is the utility. Options: `-g` means a program-specific setting; check its local `--help`; `--output` means specify output format/file.

**Expected output:** Requested account, VPC/VNet, VM or LB properties, often in a table/JSON.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 9. az network lb list -g RG --output table

```bash
az network lb list -g RG --output table
```

**What it does:** Queries Azure using your logged-in identity, project/subscription and region.

**How to read the command:** `az` is the utility. Options: `-g` means a program-specific setting; check its local `--help`; `--output` means specify output format/file.

**Expected output:** Requested account, VPC/VNet, VM or LB properties, often in a table/JSON.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 10. az vm list -g RG -d --output table

```bash
az vm list -g RG -d --output table
```

**What it does:** Queries Azure using your logged-in identity, project/subscription and region.

**How to read the command:** `az` is the utility. Options: `-g` means a program-specific setting; check its local `--help`; `-d` means a program-specific setting; check its local `--help`; `--output` means specify output format/file.

**Expected output:** Requested account, VPC/VNet, VM or LB properties, often in a table/JSON.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 11. gcloud auth list

```bash
gcloud auth list
```

**What it does:** Queries Google Cloud using your logged-in identity, project/subscription and region.

**How to read the command:** `gcloud` is the utility. Remaining words specify the file, service, device, user, host or action.

**Expected output:** Requested account, VPC/VNet, VM or LB properties, often in a table/JSON.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 12. gcloud config get-value project

```bash
gcloud config get-value project
```

**What it does:** Queries Google Cloud using your logged-in identity, project/subscription and region.

**How to read the command:** `gcloud` is the utility. Remaining words specify the file, service, device, user, host or action.

**Expected output:** Requested account, VPC/VNet, VM or LB properties, often in a table/JSON.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 13. gcloud compute networks list

```bash
gcloud compute networks list
```

**What it does:** Queries Google Cloud using your logged-in identity, project/subscription and region.

**How to read the command:** `gcloud` is the utility. Remaining words specify the file, service, device, user, host or action.

**Expected output:** Requested account, VPC/VNet, VM or LB properties, often in a table/JSON.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 14. gcloud compute subnets list --regions=europe-west6

```bash
gcloud compute subnets list --regions=europe-west6
```

**What it does:** Queries Google Cloud using your logged-in identity, project/subscription and region.

**How to read the command:** `gcloud` is the utility. Options: `--regions=europe-west6` means a program-specific setting; check its local `--help`.

**Expected output:** Requested account, VPC/VNet, VM or LB properties, often in a table/JSON.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 15. gcloud compute instances list

```bash
gcloud compute instances list
```

**What it does:** Queries Google Cloud using your logged-in identity, project/subscription and region.

**How to read the command:** `gcloud` is the utility. Remaining words specify the file, service, device, user, host or action.

**Expected output:** Requested account, VPC/VNet, VM or LB properties, often in a table/JSON.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 16. hostnamectl

```bash
hostnamectl
```

**What it does:** Shows the hostname, operating system, CPU architecture and kernel running on this machine.

**How to read the command:** `hostnamectl` is the utility. Remaining words specify the file, service, device, user, host or action.

**Expected output:** A summary showing the host name, OS, kernel and virtualization platform.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 17. ip -br addr

```bash
ip -br addr
```

**What it does:** Displays or inspects Linux interfaces, addresses or routes.

**How to read the command:** `ip` is the utility. Options: `-br` means a program-specific setting; check its local `--help`.

**Expected output:** Interfaces/IPs, link state or selected gateway and route.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 18. ip route

```bash
ip route
```

**What it does:** Displays the Linux routing table or the path the kernel would choose to reach an IP.

**How to read the command:** `ip` is the utility. Remaining words specify the file, service, device, user, host or action.

**Expected output:** Interfaces/IPs, link state or selected gateway and route.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 19. timedatectl status

```bash
timedatectl status
```

**What it does:** Checks time, timezone and whether system time is synchronized. Time drift can break TLS, authentication and cluster quorum.

**How to read the command:** `timedatectl` is the utility. Remaining words specify the file, service, device, user, host or action.

**Expected output:** Local/UTC time, timezone and NTP synchronization status.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 20. getent hosts k8s-api.example.internal

```bash
getent hosts k8s-api.example.internal
```

**What it does:** Runs the installed Linux utility `getent` with the following arguments. This action depends on the specific tool and environment.

**How to read the command:** `getent` is the utility. Remaining words specify the file, service, device, user, host or action.

**Expected output:** Program output or error; inspect the original runbook and `man getent` if available.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 21. nc -vz k8s-api.example.internal 6443

```bash
nc -vz k8s-api.example.internal 6443
```

**What it does:** Runs the installed Linux utility `nc` with the following arguments. This action depends on the specific tool and environment.

**How to read the command:** `nc` is the utility. Options: `-vz` means a program-specific setting; check its local `--help`.

**Expected output:** Program output or error; inspect the original runbook and `man nc` if available.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 22. lsblk -f

```bash
lsblk -f
```

**What it does:** Shows disks and partitions that Linux sees and where they are mounted.

**How to read the command:** `lsblk` is the utility. Options: `-f` means follow new log lines (journalctl/tail); path/force on other utilities.

**Expected output:** Device names, sizes, types, filesystems and mountpoints.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 23. sudo ss -tulpen

```bash
sudo ss -tulpen
```

**What it does:** Shows network connections and which ports services are listening on.

**How to read the command:** `ss` is the utility. Options: `-tulpen` means a program-specific setting; check its local `--help`.

**Expected output:** Protocol, local address/port, peer and optionally PID/process owner.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 24. kubectl get nodes -o wide

```bash
kubectl get nodes -o wide
```

**What it does:** Uses the Kubernetes API to inspect the specified nodes, pods, policies or storage from this Linux admin workstation.

**How to read the command:** `kubectl` is the utility. Options: `-o` means a program-specific setting; check its local `--help`.

**Expected output:** Cluster resource statuses or API/RBAC errors.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 25. kubectl get pods -A -o wide

```bash
kubectl get pods -A -o wide
```

**What it does:** Uses the Kubernetes API to inspect the specified nodes, pods, policies or storage from this Linux admin workstation.

**How to read the command:** `kubectl` is the utility. Options: `-A` means a program-specific setting; check its local `--help`; `-o` means a program-specific setting; check its local `--help`.

**Expected output:** Cluster resource statuses or API/RBAC errors.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 26. kubectl get storageclass,csidriver

```bash
kubectl get storageclass,csidriver
```

**What it does:** Uses the Kubernetes API to inspect the specified nodes, pods, policies or storage from this Linux admin workstation.

**How to read the command:** `kubectl` is the utility. Remaining words specify the file, service, device, user, host or action.

**Expected output:** Cluster resource statuses or API/RBAC errors.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 27. kubectl get --raw='/readyz?verbose'

```bash
kubectl get --raw='/readyz?verbose'
```

**What it does:** Uses the Kubernetes API to inspect the specified nodes, pods, policies or storage from this Linux admin workstation.

**How to read the command:** `kubectl` is the utility. Options: `--raw='/readyz?verbose'` means a program-specific setting; check its local `--help`.

**Expected output:** Cluster resource statuses or API/RBAC errors.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 28. kubectl get networkpolicy -A

```bash
kubectl get networkpolicy -A
```

**What it does:** Uses the Kubernetes API to inspect the specified nodes, pods, policies or storage from this Linux admin workstation.

**How to read the command:** `kubectl` is the utility. Options: `-A` means a program-specific setting; check its local `--help`.

**Expected output:** Cluster resource statuses or API/RBAC errors.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

## 29. kubectl get pdb -A

```bash
kubectl get pdb -A
```

**What it does:** Uses the Kubernetes API to inspect the specified nodes, pods, policies or storage from this Linux admin workstation.

**How to read the command:** `kubectl` is the utility. Options: `-A` means a program-specific setting; check its local `--help`.

**Expected output:** Cluster resource statuses or API/RBAC errors.

**Before running:** Check that you're on the correct Linux server/distribution. It is normally a read-only diagnostic; handle any account or log data carefully.

**When it helps:** Compare with another healthy server or previous logs and correlate the first relevant error with the incident time.

