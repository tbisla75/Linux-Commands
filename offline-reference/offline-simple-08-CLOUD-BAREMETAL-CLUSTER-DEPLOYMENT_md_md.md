# Offline command / configuration reference: `offline-simple/08-CLOUD-BAREMETAL-CLUSTER-DEPLOYMENT_md.md`

Generated from repository source by `tools/build_offline_reference.py`. **29 items**. This copy works offline. No commands were executed.

⚠️ **Version-aware reference, not a substitute for vendor docs.** Every individual command is preserved with purpose, flags, placeholders, expected output and risk. Ambiguous flags are marked as command-specific. Always verify flags against your installed CLI.

**Original file:** [`offline-simple/08-CLOUD-BAREMETAL-CLUSTER-DEPLOYMENT_md.md`](../offline-simple/08-CLOUD-BAREMETAL-CLUSTER-DEPLOYMENT_md.md)

### 1. `aws sts get-caller-identity`

**Source line:** 8  |  **Tool/purpose:** AWS CLI  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
aws sts get-caller-identity
```

**What it does:** Query or alter AWS resources for the selected account, region and IAM principal.

**Syntax:** aws sts get-caller-identity. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Query or alter AWS resources for the selected account, region and IAM principal. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `AWS CLI` vendor manual or installed `--help`; [online vendor reference](https://docs.aws.amazon.com/cli/).

### 2. `aws ec2 describe-vpcs --region eu-central-1`

**Source line:** 24  |  **Tool/purpose:** AWS CLI  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
aws ec2 describe-vpcs --region eu-central-1
```

**What it does:** Query or alter AWS resources for the selected account, region and IAM principal.

**Syntax:** aws ec2 describe-vpcs --region eu-central-1. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `--region` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Query or alter AWS resources for the selected account, region and IAM principal. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `AWS CLI` vendor manual or installed `--help`; [online vendor reference](https://docs.aws.amazon.com/cli/).

### 3. `aws ec2 describe-subnets --filters Name=vpc-id,Values=VPC_ID --region eu-central-1`

**Source line:** 40  |  **Tool/purpose:** AWS CLI  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
aws ec2 describe-subnets --filters Name=vpc-id,Values=VPC_ID --region eu-central-1
```

**What it does:** Query or alter AWS resources for the selected account, region and IAM principal.

**Syntax:** aws ec2 describe-subnets --filters Name=vpc-id,Values=VPC_ID. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `--filters` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Option:** `--region` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Substitute before running:** `VPC_ID`. Never assume an example target is the current cluster.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Query or alter AWS resources for the selected account, region and IAM principal. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `AWS CLI` vendor manual or installed `--help`; [online vendor reference](https://docs.aws.amazon.com/cli/).

### 4. `aws ec2 describe-security-groups --group-ids SG_ID --region eu-central-1`

**Source line:** 56  |  **Tool/purpose:** AWS CLI  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
aws ec2 describe-security-groups --group-ids SG_ID --region eu-central-1
```

**What it does:** Query or alter AWS resources for the selected account, region and IAM principal.

**Syntax:** aws ec2 describe-security-groups --group-ids SG_ID. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `--group-ids` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Option:** `--region` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Substitute before running:** `SG_ID`. Never assume an example target is the current cluster.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Query or alter AWS resources for the selected account, region and IAM principal. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `AWS CLI` vendor manual or installed `--help`; [online vendor reference](https://docs.aws.amazon.com/cli/).

### 5. `aws elbv2 describe-load-balancers --region eu-central-1`

**Source line:** 72  |  **Tool/purpose:** AWS CLI  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
aws elbv2 describe-load-balancers --region eu-central-1
```

**What it does:** Query or alter AWS resources for the selected account, region and IAM principal.

**Syntax:** aws elbv2 describe-load-balancers --region eu-central-1. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `--region` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Query or alter AWS resources for the selected account, region and IAM principal. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `AWS CLI` vendor manual or installed `--help`; [online vendor reference](https://docs.aws.amazon.com/cli/).

### 6. `az account show --output table`

**Source line:** 88  |  **Tool/purpose:** Azure CLI  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
az account show --output table
```

**What it does:** Query or modify Azure resources for the selected subscription/identity.

**Syntax:** az account show --output table. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `--output` — Choose output representation such as wide/yaml/json/jsonpath.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Query or modify Azure resources for the selected subscription/identity. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `Azure CLI` vendor manual or installed `--help`; [online vendor reference](https://learn.microsoft.com/en-us/cli/azure/).

### 7. `az network vnet show -g RG -n VNET --output json`

**Source line:** 104  |  **Tool/purpose:** Azure CLI  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
az network vnet show -g RG -n VNET --output json
```

**What it does:** Query or modify Azure resources for the selected subscription/identity.

**Syntax:** az network vnet show -g. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-g` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Option:** `-n` — Namespace for kubectl/oc, number of lines for journalctl/tail, or another command-specific argument.
**Option:** `--output` — Choose output representation such as wide/yaml/json/jsonpath.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Query or modify Azure resources for the selected subscription/identity. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `Azure CLI` vendor manual or installed `--help`; [online vendor reference](https://learn.microsoft.com/en-us/cli/azure/).

### 8. `az network nsg list -g RG --output table`

**Source line:** 120  |  **Tool/purpose:** Azure CLI  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
az network nsg list -g RG --output table
```

**What it does:** Query or modify Azure resources for the selected subscription/identity.

**Syntax:** az network nsg list -g. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-g` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Option:** `--output` — Choose output representation such as wide/yaml/json/jsonpath.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Query or modify Azure resources for the selected subscription/identity. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `Azure CLI` vendor manual or installed `--help`; [online vendor reference](https://learn.microsoft.com/en-us/cli/azure/).

### 9. `az network lb list -g RG --output table`

**Source line:** 136  |  **Tool/purpose:** Azure CLI  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
az network lb list -g RG --output table
```

**What it does:** Query or modify Azure resources for the selected subscription/identity.

**Syntax:** az network lb list -g. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-g` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Option:** `--output` — Choose output representation such as wide/yaml/json/jsonpath.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Query or modify Azure resources for the selected subscription/identity. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `Azure CLI` vendor manual or installed `--help`; [online vendor reference](https://learn.microsoft.com/en-us/cli/azure/).

### 10. `az vm list -g RG -d --output table`

**Source line:** 152  |  **Tool/purpose:** Azure CLI  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
az vm list -g RG -d --output table
```

**What it does:** Query or modify Azure resources for the selected subscription/identity.

**Syntax:** az vm list -g RG. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-g` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Option:** `-d` — Disk/device or directory flag depending on command.
**Option:** `--output` — Choose output representation such as wide/yaml/json/jsonpath.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Query or modify Azure resources for the selected subscription/identity. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `Azure CLI` vendor manual or installed `--help`; [online vendor reference](https://learn.microsoft.com/en-us/cli/azure/).

### 11. `gcloud auth list`

**Source line:** 168  |  **Tool/purpose:** Google Cloud CLI  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
gcloud auth list
```

**What it does:** Query or modify Google Cloud resources for the selected project/identity.

**Syntax:** gcloud auth list. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information. **Credential caution:** command may reference credentials or identity; do not upload raw outputs.
**Expected result:** Query or modify Google Cloud resources for the selected project/identity. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `Google Cloud CLI` vendor manual or installed `--help`; [online vendor reference](https://cloud.google.com/sdk/gcloud/reference).

### 12. `gcloud config get-value project`

**Source line:** 184  |  **Tool/purpose:** Google Cloud CLI  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
gcloud config get-value project
```

**What it does:** Query or modify Google Cloud resources for the selected project/identity.

**Syntax:** gcloud config get-value project. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Query or modify Google Cloud resources for the selected project/identity. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `Google Cloud CLI` vendor manual or installed `--help`; [online vendor reference](https://cloud.google.com/sdk/gcloud/reference).

### 13. `gcloud compute networks list`

**Source line:** 200  |  **Tool/purpose:** Google Cloud CLI  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
gcloud compute networks list
```

**What it does:** Query or modify Google Cloud resources for the selected project/identity.

**Syntax:** gcloud compute networks list. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Query or modify Google Cloud resources for the selected project/identity. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `Google Cloud CLI` vendor manual or installed `--help`; [online vendor reference](https://cloud.google.com/sdk/gcloud/reference).

### 14. `gcloud compute subnets list --regions=europe-west6`

**Source line:** 216  |  **Tool/purpose:** Google Cloud CLI  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
gcloud compute subnets list --regions=europe-west6
```

**What it does:** Query or modify Google Cloud resources for the selected project/identity.

**Syntax:** gcloud compute subnets list --regions=europe-west6. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `--regions=europe-west6` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Query or modify Google Cloud resources for the selected project/identity. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `Google Cloud CLI` vendor manual or installed `--help`; [online vendor reference](https://cloud.google.com/sdk/gcloud/reference).

### 15. `gcloud compute instances list`

**Source line:** 232  |  **Tool/purpose:** Google Cloud CLI  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
gcloud compute instances list
```

**What it does:** Query or modify Google Cloud resources for the selected project/identity.

**Syntax:** gcloud compute instances list. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Query or modify Google Cloud resources for the selected project/identity. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `Google Cloud CLI` vendor manual or installed `--help`; [online vendor reference](https://cloud.google.com/sdk/gcloud/reference).

### 16. `hostnamectl`

**Source line:** 248  |  **Tool/purpose:** hostnamectl operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
hostnamectl
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** hostnamectl. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `hostnamectl operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 17. `ip -br addr`

**Source line:** 264  |  **Tool/purpose:** Linux network configuration  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
ip -br addr
```

**What it does:** Read or change Linux addresses, links, routes and neighbor information.

**Syntax:** ip -br addr. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-br` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Read or change Linux addresses, links, routes and neighbor information. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `Linux network configuration` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/man8/ip.8.html).

### 18. `ip route`

**Source line:** 280  |  **Tool/purpose:** Linux network configuration  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
ip route
```

**What it does:** Read or change Linux addresses, links, routes and neighbor information.

**Syntax:** ip route. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Read or change Linux addresses, links, routes and neighbor information. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `Linux network configuration` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/man8/ip.8.html).

### 19. `timedatectl status`

**Source line:** 296  |  **Tool/purpose:** timedatectl operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
timedatectl status
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** timedatectl status. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `timedatectl operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 20. `getent hosts k8s-api.example.internal`

**Source line:** 312  |  **Tool/purpose:** NSS lookup  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
getent hosts k8s-api.example.internal
```

**What it does:** Resolve users, groups and hosts through the operating system's NSS configuration.

**Syntax:** getent hosts k8s-api.example.internal. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Resolve users, groups and hosts through the operating system's NSS configuration. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `NSS lookup` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/man1/getent.1.html).

### 21. `nc -vz k8s-api.example.internal 6443`

**Source line:** 328  |  **Tool/purpose:** nc operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
nc -vz k8s-api.example.internal 6443
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** nc -vz k8s-api.example.internal 6443. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-vz` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `nc operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 22. `lsblk -f`

**Source line:** 344  |  **Tool/purpose:** lsblk operation  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
lsblk -f
```

**What it does:** Command semantics depend on installed implementation; inspect its man page and --help.

**Syntax:** lsblk -f. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-f` — Follow logs/force/filename depending on command.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Command semantics depend on installed implementation; inspect its man page and --help. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `lsblk operation` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/).

### 23. `sudo ss -tulpen`

**Source line:** 360  |  **Tool/purpose:** Socket inspection  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
sudo ss -tulpen
```

**What it does:** Show listening and active network sockets, protocols and owning processes when permitted.

**Syntax:** sudo ss -tulpen. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-tulpen` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** Show listening and active network sockets, protocols and owning processes when permitted. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `Socket inspection` vendor manual or installed `--help`; [online vendor reference](https://man7.org/linux/man-pages/man8/ss.8.html).

### 24. `kubectl get nodes -o wide`

**Source line:** 376  |  **Tool/purpose:** Kubernetes API  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
kubectl get nodes -o wide
```

**What it does:** List selected Kubernetes resources and their current status.

**Syntax:** kubectl get nodes -o wide. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-o` — Output format for kubectl/oc, filename for some tools; command-specific.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** List selected Kubernetes resources and their current status. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `Kubernetes API` vendor manual or installed `--help`; [online vendor reference](https://kubernetes.io/docs/reference/kubectl/).

### 25. `kubectl get pods -A -o wide`

**Source line:** 392  |  **Tool/purpose:** Kubernetes API  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
kubectl get pods -A -o wide
```

**What it does:** List selected Kubernetes resources and their current status.

**Syntax:** kubectl get pods -A -o. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-A` — All namespaces for kubectl/oc; other tools may assign a different meaning.
**Option:** `-o` — Output format for kubectl/oc, filename for some tools; command-specific.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** List selected Kubernetes resources and their current status. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `Kubernetes API` vendor manual or installed `--help`; [online vendor reference](https://kubernetes.io/docs/reference/kubectl/).

### 26. `kubectl get storageclass,csidriver`

**Source line:** 408  |  **Tool/purpose:** Kubernetes API  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
kubectl get storageclass,csidriver
```

**What it does:** List selected Kubernetes resources and their current status.

**Syntax:** kubectl get storageclass,csidriver. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** List selected Kubernetes resources and their current status. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `Kubernetes API` vendor manual or installed `--help`; [online vendor reference](https://kubernetes.io/docs/reference/kubectl/).

### 27. `kubectl get --raw='/readyz?verbose'`

**Source line:** 424  |  **Tool/purpose:** Kubernetes API  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
kubectl get --raw='/readyz?verbose'
```

**What it does:** List selected Kubernetes resources and their current status.

**Syntax:** kubectl get --raw=/readyz?verbose. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `--raw=/readyz?verbose` — Command-specific option or abbreviated argument; verify with installed CLI help and vendor reference.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** List selected Kubernetes resources and their current status. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `Kubernetes API` vendor manual or installed `--help`; [online vendor reference](https://kubernetes.io/docs/reference/kubectl/).

### 28. `kubectl get networkpolicy -A`

**Source line:** 440  |  **Tool/purpose:** Kubernetes API  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
kubectl get networkpolicy -A
```

**What it does:** List selected Kubernetes resources and their current status.

**Syntax:** kubectl get networkpolicy -A. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-A` — All namespaces for kubectl/oc; other tools may assign a different meaning.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** List selected Kubernetes resources and their current status. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `Kubernetes API` vendor manual or installed `--help`; [online vendor reference](https://kubernetes.io/docs/reference/kubectl/).

### 29. `kubectl get pdb -A`

**Source line:** 456  |  **Tool/purpose:** Kubernetes API  |  **Impact:** **DIAGNOSTIC / REVIEW**

**Exact command:**

```bash
kubectl get pdb -A
```

**What it does:** List selected Kubernetes resources and their current status.

**Syntax:** kubectl get pdb -A. The first executable selects the CLI; subcommands select the resource/action; options control target, scope or output.
**Option:** `-A` — All namespaces for kubectl/oc; other tools may assign a different meaning.
**Safety/rollback:** Typically query-oriented; may still cause network traffic, load or output sensitive information.
**Expected result:** List selected Kubernetes resources and their current status. Check command exit status and compare to healthy baseline; exact columns and messages vary by installed version.
**Offline verification:** On target host use `Kubernetes API` vendor manual or installed `--help`; [online vendor reference](https://kubernetes.io/docs/reference/kubectl/).

