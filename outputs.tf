# outputs.tf

output "alb_hostname" {
  value = aws_alb.main.dns_name
}

output "ecr_repository_url" {
  value = aws_ecr_repository.ecr_repository.repository_url
}

output "confirmation" {
    value = "Well done. Good job!"
}