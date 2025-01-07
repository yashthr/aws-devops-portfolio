# SSM Parameters
resource "aws_ssm_parameter" "container_port" {
  name  = "/${var.environment}/app/container-port"
  type  = "String"
  value = "8080"
}

resource "aws_ssm_parameter" "ecr_repo" {
  name  = "/${var.environment}/ecr/repository-url"
  type  = "String"
  value = aws_ecr_repository.main.repository_url
}

# Secrets Manager
resource "aws_secretsmanager_secret" "app_secrets" {
  name                    = "${var.environment}/
