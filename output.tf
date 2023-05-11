# This file output 

output "instance_id" {
    description = "EC2 instance ID"
    value = aws_instance.linux_server.id  
}

output "instance_public_ip" {
    description = "EC2 Public IP"
    value = aws_instance.linux_server.public_ip
  
}