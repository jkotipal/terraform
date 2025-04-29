# Terraform AWS EC2 Module Project

This project demonstrates how to use **Terraform modules** to create and manage an **AWS EC2 instance** in a clean, reusable way.

---

## Project Structure
aws_terraform/
├── main.tf                  # Root module: calls the EC2 module
├── variables.tf             # Input variables for root
├── terraform.tfvars         # Variable values
├── outputs.tf               # Exposes module outputs
├── backend.tf               # (Optional) S3 backend + DynamoDB lock config
└── modules/
    └── ec2_instance/
        ├── main.tf          # EC2 instance resource definition
        ├── variables.tf     # Inputs for EC2 module
        └── outputs.tf       # Outputs from EC2 module


---

## What It Does

- Launches a single EC2 instance using inputs like AMI ID, instance type, subnet ID, and name.
- Applies best practices for **modular Terraform** code.
- Outputs EC2 instance info: ID, public IP, private IP, availability zone.

---

## How to Use

### 1. Clone the Repository

```bash
git clone git@github.com:jkotipal/terraform.git
cd terraform

2. Configure AWS Credentials
aws configure

3. Edit Variables
Update terraform.tfvars with values specific to your environment:

ami_value           = "ami-xxxxxxxxxxxx"
instance_type_value = "t3.micro"
subnet_id_value     = "subnet-xxxxxxxxxxxx"
name                = "MyEC2Instance"

4. Initialize, Plan & Apply

terraform init
terraform plan
terraform apply

5. Cleanup
To destroy resources:

terraform destroy


Terraform Project Structure Using Shared Backend

terraform-project/
├── terraform-backend-setup/           # One-time setup for S3 + DynamoDB
│   └── main.tf
│
├── ec2-instance-project/              # First EC2 module project
│   ├── backend.tf                     # Remote backend config
│   ├── main.tf                        # Uses EC2 module
│   ├── variables.tf
│   ├── terraform.tfvars
│   ├── outputs.tf
│   └── modules/
│       └── ec2_instance/
│           ├── main.tf
│           ├── variables.tf
│           └── outputs.tf
│
├── ec2-instance-project-2/            # Second EC2 project using same backend
│   ├── backend.tf                     # Same S3 bucket, different key
│   ├── main.tf
│   ├── variables.tf
│   ├── terraform.tfvars
│   ├── outputs.tf
│   └── modules/
│       └── ec2_instance/
│           ├── main.tf
│           ├── variables.tf
│           └── outputs.tf




