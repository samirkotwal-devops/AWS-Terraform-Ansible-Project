# AWS EC2 Provisioning with Terraform

##  Project Overview

This project demonstrates how to provision an AWS EC2 instance using Terraform following Infrastructure as Code (IaC) best practices. The project includes provider configuration, variables, outputs, Git version control, GitHub integration, and troubleshooting of real-world issues faced during development.

---

#  Technologies Used

- AWS EC2
- Terraform
- AWS CLI
- Git
- GitHub
- Ubuntu 24.04 (VirtualBox)

---

#  Project Structure

```
AWS-Terraform-Ansible-Project/
│
├── terraform/
│   ├── main.tf
│   ├── provider.tf
│   ├── variables.tf
│   ├── terraform.tfvars
│   ├── output.tf
│   ├── .terraform.lock.hcl
│   ├── .gitignore
│   └── README.md
```

---

#  Prerequisites

- AWS Account
- IAM User with Programmatic Access
- AWS CLI Installed
- Terraform Installed
- Git Installed
- Ubuntu Virtual Machine

---

#  Step 1 - Configure AWS CLI

```bash
aws configure
```

Provide:

- AWS Access Key
- AWS Secret Access Key
- Default Region
- Output Format

---

# 🚀 Step 2 - Initialize Terraform

```bash
terraform init
```

This command downloads the required AWS provider plugins.

---

#  Step 3 - Validate Configuration

```bash
terraform validate
```

Expected Output

```text
Success! The configuration is valid.
```

---

#  Step 4 - Review Execution Plan

```bash
terraform plan
```

This command displays all resources Terraform will create.

---

#  Step 5 - Provision EC2 Instance

```bash
terraform apply
```

When prompted:

```text
Enter a value:
yes
```

Terraform creates the EC2 instance.

---

#  Step 6 - Verify Terraform State

```bash
terraform state list
```

Expected Resource

```
aws_instance.web
```

---

#  Step 7 - Display Outputs

```bash
terraform output
```

Example

```text
instance_id = "i-031e8d715cca08372"

public_ip = "54.xxx.xxx.xxx"
```

---

#  Step 8 - Initialize Git

```bash
git init
```

---

#  Step 9 - Add Files

```bash
git add .
```

---

#  Step 10 - Commit

```bash
git commit -m "Terraform EC2 Project Completed"
```

---

#  Step 11 - Connect GitHub Repository

```bash
git remote add origin https://github.com/<username>/<repository>.git
```

---

#  Step 12 - Push Project

```bash
git push -u origin master
```

Project successfully uploaded to GitHub.

---

#  Terraform Outputs

The following outputs were configured:

- EC2 Instance ID
- EC2 Public IP

Example

```text
instance_id = "i-031e8d715cca08372"

public_ip = "54.xxx.xxx.xxx"
```

---

#  Problems Faced During Project

## 1. Git Push Stuck at 90%

### Error

```text
RPC failed

curl 55

remote end hung up unexpectedly
```

### Cause

Terraform generated files (.terraform and terraform.tfstate) were committed to Git.

### Solution

Created a `.gitignore` file.

```
.terraform/
*.tfstate
*.tfstate.backup
terraform.tfvars
```

Removed generated files from Git and committed again.

---

## 2. GitHub Connection Error

### Error

```text
Could not resolve host: github.com
```

### Cause

VirtualBox DNS issue.

### Solution

Verified internet connectivity.

```bash
ping 8.8.8.8
```

Restarted the VirtualBox network adapter and retried the push.

---

## 3. Git Push Failed

### Error

```text
HTTP 408

remote end hung up unexpectedly
```

### Cause

Temporary network interruption while pushing.

### Solution

Retried using

```bash
git push -f origin master
```

After fixing the network issue, the push completed successfully.

---

## 4. Terraform Output Showing

```text
Warning: No outputs found
```

### Cause

Outputs were defined but Terraform state had not been updated.

### Solution

Executed

```bash
terraform apply
```

Then

```bash
terraform output
```

Outputs displayed successfully.

---

## 5. Accidentally Committed Terraform Generated Files

Committed Files

- .terraform/
- terraform.tfstate

### Solution

Ignored them using `.gitignore` and pushed a clean repository.

---

# 📚 Skills Demonstrated

- Infrastructure as Code (IaC)
- AWS EC2 Provisioning
- Terraform
- AWS CLI
- Git
- GitHub
- Version Control
- Terraform Variables
- Terraform Outputs
- Debugging
- Troubleshooting
- VirtualBox Networking

---

#  Project Outcome

- AWS EC2 instance created successfully.

- Terraform state managed successfully.

- Outputs displayed successfully.

- GitHub repository created successfully.

- Project uploaded to GitHub.

---

#  Future Improvements

- Multiple EC2 Instances
- Security Groups
- S3 Bucket
- Remote Backend (S3 + DynamoDB)
- IAM Roles
- Ansible Integration
- Automatic Nginx Deployment
- Complete End-to-End DevOps Automation

---

# 👨‍💻 Author

**Samir Kotwal**

DevOps Learner | AWS | Terraform | Git | GitHub | Linux | Ansible
