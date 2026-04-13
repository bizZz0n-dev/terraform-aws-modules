terraform {
  required_version = ">= 1.3.0"
  backend "s3" {}
  required_providers {
    aws = { source = "hashicorp/aws", version = "~> 5.0" }
  }
}

resource "aws_ecs_cluster" "this" {
  name = var.cluster_name
  tags = {
    Env          = var.env
    Region       = var.region
    DesiredCount = tostring(var.desired_count)
    SubnetCount  = tostring(length(var.private_subnet_ids))
  }
}

resource "aws_ecs_cluster_capacity_providers" "this" {
  cluster_name       = aws_ecs_cluster.this.name
  capacity_providers = ["FARGATE", "FARGATE_SPOT"]
  default_capacity_provider_strategy {
    capacity_provider = "FARGATE"
    weight            = 1
  }
}

resource "aws_security_group" "ecs_tasks" {
  name        = "${var.service_name}-${var.env}-ecs-tasks"
  description = "ECS tasks security group"
  vpc_id      = var.vpc_id

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name         = "${var.service_name}-ecs-tasks"
    Env          = var.env
    Region       = var.region
    DesiredCount = tostring(var.desired_count)
    SubnetCount  = tostring(length(var.private_subnet_ids))
  }
}
