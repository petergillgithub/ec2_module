output "ec2_Instance_id" {
  value = aws_instance.main.id

}

output "security_groups_id" {
  value = aws_security_group.main.id

}

output "ec2_Instance" {
  value = aws_instance.main

}

output "security_groups" {
  value = aws_security_group.main

}