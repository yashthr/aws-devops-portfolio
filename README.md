# AWS DevOps Infrastructure Portfolio

Production-grade AWS infrastructure featuring ECS, CI/CD pipelines, monitoring, and security best practices.

## Architecture Components

- VPC with public/private subnets
- ECS Fargate cluster with auto-scaling
- Application Load Balancer (ALB)
- CI/CD pipeline with AWS CodePipeline
- Encrypted S3 storage
- CloudWatch monitoring
- OpenTelemetry integration
- Security scanning with Trivy

## Prerequisites

- AWS CLI configured
- Terraform >= 1.0.0
- Docker
- AWS Account with appropriate permissions

## Repository Structure

```
aws-devops-portfolio/
├── terraform/
│   ├── main.tf             # Core infrastructure
│   ├── variables.tf        # Variable definitions
│   ├── providers.tf        # AWS provider config
│   └── parameters.tf       # Parameter store setup
├── cicd/
│   ├── buildspec.yml       # Build configuration
│   ├── taskdef.json       # ECS task definition
│   └── appspec.yaml       # CodeDeploy config
└── monitoring/
    └── otel-config.yaml   # OpenTelemetry config
```

## Quick Start

1. Clone and configure:
```bash
git clone https://github.com/yourusername/aws-devops-portfolio
cd aws-devops-portfolio

# Update AWS region and bucket in providers.tf
# Update environment name in variables.tf
```

2. Initialize and deploy:
```bash
cd terraform
terraform init
terraform plan
terraform apply
```

3. Push code to trigger pipeline:
```bash
git add .
git commit -m "Initial deployment"
git push
```

## Security Features

- S3 encryption
- Secrets in AWS Secrets Manager
- Container security scanning
- Private subnets for containers
- ALB with HTTPS
- Parameter Store for configuration

## Monitoring

Access metrics and logs:
1. CloudWatch Dashboard: AWS Console > CloudWatch
2. Container Insights: ECS Cluster > Insights
3. Trace Analysis: X-Ray Console

## Environment Variables

Required AWS environment variables:
```bash
export AWS_ACCESS_KEY_ID="your_access_key"
export AWS_SECRET_ACCESS_KEY="your_secret_key"
export AWS_DEFAULT_REGION="us-west-2"
```

## Cleanup

Remove all resources:
```bash
terraform destroy
```

## License

MIT

## Contributing

1. Fork repository
2. Create feature branch
3. Submit pull request
