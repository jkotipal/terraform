output "ec2_instance_id" {
  value = module.ec2_instance.instance_id
}

output "ec2_public_ip" {
  value = module.ec2_instance.public_ip
}

output "ec2_private_ip" {
  value = module.ec2_instance.private_ip
}

output "ec2_az" {
  value = module.ec2_instance.availability_zone
}

