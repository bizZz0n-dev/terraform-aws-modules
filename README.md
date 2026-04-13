# terraform-aws-modules

Reusable Terraform modules for AWS infrastructure.

## Modules

| Module | Purpose |
|---|---|
| `vpc` | VPC + public/private subnets + IGW |
| `ec2` | EC2 instance + Elastic IP + key pair + security group |
| `acm` | ACM certificate with DNS validation |
| `cloudfront-s3` | CloudFront distribution + private S3 bucket + OAC |
| `ecs` | ECS Fargate cluster + service |
| `rds` | RDS PostgreSQL/MySQL |

## Usage

```hcl
source = "github.com/bizZz0n-dev/terraform-aws-modules//vpc?ref=v1.0.0"
```
