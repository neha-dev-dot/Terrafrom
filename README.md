# Terraform AWS Learning Repository

Welcome to my **Terraform AWS Projects** repository!  
This repository contains a collection of hands-on Terraform code examples that I’ve created while learning how to provision and manage AWS infrastructure using Infrastructure as Code (IaC).

---

## 📁 Project Structure

Inside the `terraform/` folder, you’ll find subfolders, each containing Terraform configurations for different AWS services and use cases:

| Folder Name                  | Description |
|-----------------------------|-------------|
| `aws-ec2/`                  | Launching and managing EC2 instances |
| `aws-s3/`                   | Creating and configuring S3 buckets |
| `aws-vpc/`                  | Setting up custom VPCs, subnets, and routing |
| `aws-vpc-ec2-nginx/`        | Deploying EC2 instance with NGINX inside a VPC |
| `project-static-website/`   | Hosting a static website on AWS S3 |
| `tf-backend/`               | Terraform remote backend (S3 & DynamoDB) setup |
| `tf-data-sources/`          | Exploring Terraform data sources |

---

## 🔧 Tools & Technologies

- **Terraform v1.x**
- **AWS Provider**
- AWS Services: EC2, S3, VPC, Route Tables, Security Groups, IAM, etc.
- Version Control: Git & GitHub

---

## 🚀 Getting Started

1. Make sure you have Terraform installed.
2. Configure your AWS CLI credentials.
3. Navigate to any folder and run the following:

```bash
terraform init
terraform plan
terraform apply
