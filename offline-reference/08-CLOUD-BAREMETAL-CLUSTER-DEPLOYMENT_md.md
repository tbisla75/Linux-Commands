# Offline explanations: 08-CLOUD-BAREMETAL-CLUSTER-DEPLOYMENT.md

Source: [08-CLOUD-BAREMETAL-CLUSTER-DEPLOYMENT.md](../08-CLOUD-BAREMETAL-CLUSTER-DEPLOYMENT.md). This is a **local, internet-independent** explanation of every terminal example in the runbook, with syntax, prerequisites and operational risk. Validate against actual installed releases.

## 1. aws sts get-caller-identity

```bash
aws sts get-caller-identity
```

**What it does:** Inspect AWS account infrastructure.

**Complete command form:** `aws` is the executable; the remaining words are targets/subcommands and options. No named options.. Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Inspect AWS account infrastructure. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 2. aws ec2 describe-vpcs --region eu-central-1

```bash
aws ec2 describe-vpcs --region eu-central-1
```

**What it does:** Inspect AWS account infrastructure.

**Complete command form:** `aws` is the executable; the remaining words are targets/subcommands and options. Options: `--region` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Inspect AWS account infrastructure. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 3. aws ec2 describe-subnets --filters Name=vpc-id,Values=VPC_ID --region eu-central-1

```bash
aws ec2 describe-subnets --filters Name=vpc-id,Values=VPC_ID --region eu-central-1
```

**What it does:** Inspect AWS account infrastructure.

**Complete command form:** `aws` is the executable; the remaining words are targets/subcommands and options. Options: `--filters` (confirm tool-specific help); `--region` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Inspect AWS account infrastructure. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 4. aws ec2 describe-security-groups --group-ids SG_ID --region eu-central-1

```bash
aws ec2 describe-security-groups --group-ids SG_ID --region eu-central-1
```

**What it does:** Inspect AWS account infrastructure.

**Complete command form:** `aws` is the executable; the remaining words are targets/subcommands and options. Options: `--group-ids` (confirm tool-specific help); `--region` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Inspect AWS account infrastructure. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 5. aws elbv2 describe-load-balancers --region eu-central-1

```bash
aws elbv2 describe-load-balancers --region eu-central-1
```

**What it does:** Inspect AWS account infrastructure.

**Complete command form:** `aws` is the executable; the remaining words are targets/subcommands and options. Options: `--region` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Inspect AWS account infrastructure. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 6. az account show --output table

```bash
az account show --output table
```

**What it does:** Inspect Azure subscription/resources.

**Complete command form:** `az` is the executable; the remaining words are targets/subcommands and options. Options: `--output` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Inspect Azure subscription/resources. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 7. az network vnet show -g RG -n VNET --output json

```bash
az network vnet show -g RG -n VNET --output json
```

**What it does:** Inspect Azure subscription/resources.

**Complete command form:** `az` is the executable; the remaining words are targets/subcommands and options. Options: `-g` (confirm tool-specific help); `-n` (confirm tool-specific help); `--output` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Inspect Azure subscription/resources. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 8. az network nsg list -g RG --output table

```bash
az network nsg list -g RG --output table
```

**What it does:** Inspect Azure subscription/resources.

**Complete command form:** `az` is the executable; the remaining words are targets/subcommands and options. Options: `-g` (confirm tool-specific help); `--output` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Inspect Azure subscription/resources. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 9. az network lb list -g RG --output table

```bash
az network lb list -g RG --output table
```

**What it does:** Inspect Azure subscription/resources.

**Complete command form:** `az` is the executable; the remaining words are targets/subcommands and options. Options: `-g` (confirm tool-specific help); `--output` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Inspect Azure subscription/resources. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 10. az vm list -g RG -d --output table

```bash
az vm list -g RG -d --output table
```

**What it does:** Inspect Azure subscription/resources.

**Complete command form:** `az` is the executable; the remaining words are targets/subcommands and options. Options: `-g` (confirm tool-specific help); `-d` (confirm tool-specific help); `--output` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Inspect Azure subscription/resources. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 11. gcloud auth list

```bash
gcloud auth list
```

**What it does:** Inspect Google Cloud resources.

**Complete command form:** `gcloud` is the executable; the remaining words are targets/subcommands and options. No named options.. Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Inspect Google Cloud resources. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 12. gcloud config get-value project

```bash
gcloud config get-value project
```

**What it does:** Inspect Google Cloud resources.

**Complete command form:** `gcloud` is the executable; the remaining words are targets/subcommands and options. No named options.. Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Inspect Google Cloud resources. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 13. gcloud compute networks list

```bash
gcloud compute networks list
```

**What it does:** Inspect Google Cloud resources.

**Complete command form:** `gcloud` is the executable; the remaining words are targets/subcommands and options. No named options.. Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Inspect Google Cloud resources. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 14. gcloud compute subnets list --regions=europe-west6

```bash
gcloud compute subnets list --regions=europe-west6
```

**What it does:** Inspect Google Cloud resources.

**Complete command form:** `gcloud` is the executable; the remaining words are targets/subcommands and options. Options: `--regions=europe-west6` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Inspect Google Cloud resources. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 15. gcloud compute instances list

```bash
gcloud compute instances list
```

**What it does:** Inspect Google Cloud resources.

**Complete command form:** `gcloud` is the executable; the remaining words are targets/subcommands and options. No named options.. Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Inspect Google Cloud resources. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 16. hostnamectl

```bash
hostnamectl
```

**What it does:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics.

**Complete command form:** `hostnamectl` is the executable; the remaining words are targets/subcommands and options. No named options.. Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 17. ip -br addr

```bash
ip -br addr
```

**What it does:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics.

**Complete command form:** `ip` is the executable; the remaining words are targets/subcommands and options. Options: `-br` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 18. ip route

```bash
ip route
```

**What it does:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics.

**Complete command form:** `ip` is the executable; the remaining words are targets/subcommands and options. No named options.. Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 19. timedatectl status

```bash
timedatectl status
```

**What it does:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics.

**Complete command form:** `timedatectl` is the executable; the remaining words are targets/subcommands and options. No named options.. Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 20. getent hosts k8s-api.example.internal

```bash
getent hosts k8s-api.example.internal
```

**What it does:** Resolve NSS hosts or user/group database.

**Complete command form:** `getent` is the executable; the remaining words are targets/subcommands and options. No named options.. Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Resolve NSS hosts or user/group database. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 21. nc -vz k8s-api.example.internal 6443

```bash
nc -vz k8s-api.example.internal 6443
```

**What it does:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics.

**Complete command form:** `nc` is the executable; the remaining words are targets/subcommands and options. Options: `-vz` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 22. lsblk -f

```bash
lsblk -f
```

**What it does:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics.

**Complete command form:** `lsblk` is the executable; the remaining words are targets/subcommands and options. Options: `-f` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Use the specified executable to query or manage its named resources. Confirm the installed manual for exact semantics. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 23. sudo ss -tulpen

```bash
sudo ss -tulpen
```

**What it does:** Show active/listening sockets.

**Complete command form:** `ss` is the executable; the remaining words are targets/subcommands and options. Options: `-tulpen` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Show active/listening sockets. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 24. kubectl get nodes -o wide

```bash
kubectl get nodes -o wide
```

**What it does:** Kubernetes API workload inspection.

**Complete command form:** `kubectl` is the executable; the remaining words are targets/subcommands and options. Options: `-o` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Kubernetes API workload inspection. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 25. kubectl get pods -A -o wide

```bash
kubectl get pods -A -o wide
```

**What it does:** Kubernetes API workload inspection.

**Complete command form:** `kubectl` is the executable; the remaining words are targets/subcommands and options. Options: `-A` (confirm tool-specific help); `-o` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Kubernetes API workload inspection. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 26. kubectl get storageclass,csidriver

```bash
kubectl get storageclass,csidriver
```

**What it does:** Kubernetes API workload inspection.

**Complete command form:** `kubectl` is the executable; the remaining words are targets/subcommands and options. No named options.. Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Kubernetes API workload inspection. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 27. kubectl get --raw='/readyz?verbose'

```bash
kubectl get --raw='/readyz?verbose'
```

**What it does:** Kubernetes API workload inspection.

**Complete command form:** `kubectl` is the executable; the remaining words are targets/subcommands and options. Options: `--raw='/readyz?verbose'` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Kubernetes API workload inspection. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 28. kubectl get networkpolicy -A

```bash
kubectl get networkpolicy -A
```

**What it does:** Kubernetes API workload inspection.

**Complete command form:** `kubectl` is the executable; the remaining words are targets/subcommands and options. Options: `-A` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Kubernetes API workload inspection. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

## 29. kubectl get pdb -A

```bash
kubectl get pdb -A
```

**What it does:** Kubernetes API workload inspection.

**Complete command form:** `kubectl` is the executable; the remaining words are targets/subcommands and options. Options: `-A` (confirm tool-specific help). Shell pipes forward output, while redirects can write local files.

**Environment and variables:** No placeholders detected. Replace only with authorized target values.

**Expected output:** Kubernetes API workload inspection. Inspect status code, message timestamp, and compare to healthy node/pool behavior.

**Production caution:** 🟢 Diagnostic in typical use; still protect sensitive account/host/output information.

