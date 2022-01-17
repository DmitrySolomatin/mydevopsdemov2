variable "aws_region" {
  description = "aws region"
  default = "eu-north-1"
}

variable "aws_profile" {
  description = "aws profile"
  default = "978552764709"
}

variable "ecs_task_execution_role_name" {
  description = "ECS task execution role name"
  default = "TaskExecutionRole"
}

variable "ecs_task_role_name" {
  description = "ECS task role name"
  default = "TaskRole"
}

variable "ecs_auto_scale_role_name" {
  description = "ECS auto scale role Name"
  default = "AutoScaleRole"
}

variable "counter_for_az" {
  description = "Quantity of AZ in current region"
  default     = "2"
}

variable "app_port" {
  description = "Port exposed by the docker image to redirect traffic to"
  default     = 80
}

variable "app_count" {
  description = "Number of running docker containers"
  default     = 1
}

variable "health_check_path" {
  default = "/"
}

variable "fargate_cpu" {
  description = "Fargate instance CPU units to provision (1 vCPU = 1024 CPU units)"
  default     = "512"
}

variable "fargate_memory" {
  description = "Fargate instance memory to provision (in MiB)"
  default     = "1024"
}

variable "ecr_repository_url" {
  type = string
  default = "978552764709.dkr.ecr.eu-north-1.amazonaws.com/mydemoapp"
}

variable "image_tag" {
    type = string
    default = "latest"
}

variable "working_dir" {
    type = string
    default = "/home/dmitrysolom/myterraform/mydevopsdemofinalv2_cleanterraform"
}

variable "taskdef_template" {
  default = "cb_app.json.tpl"
}

locals {
  app_image = format("%s:%s", var.ecr_repository_url, var.image_tag)
}
