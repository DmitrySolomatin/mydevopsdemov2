data "aws_caller_identity" "current" {}

resource "null_resource" "build" {
  provisioner "local-exec" {
    command = "make build"
    
    working_dir = var.working_dir
    environment = {
        tag = var.image_tag
        registry_id = data.aws_caller_identity.current.account_id
        repository_region = var.aws_region
        app_name = var.app_name
    }
  }
}
