output "ec2-instances" {
  description = "Instance Details"
  value       = aws_instance.web-server
}


output "instance-ids" {
  description = "Instance IDs"
  value       = aws_instance.web-server.*.id
}