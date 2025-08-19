# Terraform AWS ALB + EC2 + S3 Demo

This project provisions an **AWS Application Load Balancer (ALB)** with two EC2 instances running Apache, fronted by the ALB. Each instance serves a different webpage to demonstrate load balancing functionality. An **S3 bucket** is also created and EC2 instances are given an **IAM role** for S3 access.

---

## 🚀 Architecture
- **VPC** with two public subnets (in different AZs).  
- **EC2 Instances** (2) with Apache + custom HTML pages.  
- **Application Load Balancer (ALB)** distributing HTTP traffic.  
- **S3 Bucket** for object storage.  
- **IAM Role + Instance Profile** attached to EC2s for S3 access.  

---


