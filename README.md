# AWS DevOps Infrastructure Setup

Production-grade AWS infrastructure setup using Terraform, featuring ECS, CI/CD pipelines, and monitoring.

## Architecture Overview

- VPC with public/private subnets
- ECS cluster with auto-scaling
- Application Load Balancer (ALB)
- CI/CD pipeline using AWS CodePipeline
- S3 storage with encryption
- CloudWatch monitoring
- OpenTelemetry integration

## Prerequisites

- AWS CLI configured
- Terraform installed (v1.0+)
- Docker installed
- Valid AWS credentials

## Quick Start

1. Clone repository:
```bash
git clone https://github.com/yourusername/aws-devops-portfolio
cd aws-devops-portfolio
```

2. Initialize Terraform:
```bash
cd terraform
terraform init
```

3. Deploy infrastructure:
```bash
terraform plan
terraform apply
```

4. Configure CI/CD:
- Update ECR repository in buildspec.yml
- Configure CodePipeline source repository
- Push code to trigger pipeline

## Infrastructure Components

### Networking
- VPC (10.0.0.0/16)
- Public/Private subnets
- Internet Gateway
- NAT Gateway

### Compute
- ECS Cluster
- Auto-scaling (1-4 instances)
- CPU-based scaling policy

### Security
- Encrypted S3 storage
- Security groups
- IAM roles
- HTTPS endpoints

### Monitoring
- CloudWatch logs
- Container insights
- OpenTelemetry tracing
- Custom metrics

## Maintenance

### Updating Infrastructure
```bash
terraform plan -out=tfplan
terraform apply tfplan
```

### Cleanup
```bash
terraform destroy
```

## Security Notes

- S3 buckets use AES-256 encryption
- ALB restricted to HTTPS
- Private subnets for containers
- Least privilege IAM policies

## Contributing

1. Fork repository
2. Create feature branch
3. Submit pull request

## License

MIT
