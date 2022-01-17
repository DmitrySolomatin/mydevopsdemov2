resource "aws_ecr_repository" "ecr_repository" {
  name = local.repository_name
}

variable "app_name" {
  type = string
  default = "mydemoapp"
}

locals {
  repository_name = "mydemoapp"
}