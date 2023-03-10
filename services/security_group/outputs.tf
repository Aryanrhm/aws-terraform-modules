output "id" {
    value = aws_security_group.security_group.id
    description = "The ID of created security group"
  
}

output "vpc_id" {
    value = aws_security_group.security_group.vpc_id
    description = "The VPC ID which the sg is created in"
  
}
