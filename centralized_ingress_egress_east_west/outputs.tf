output "vpc_id" {
  value       = module.vpc-inspection.vpc_id
  description = "The VPC Id of the newly created VPC."
}
output "private1_subnet_id" {
  value       = module.subnet-private-az1.id
  description = "The Private Subnet ID for AZ 1"
}
output "public1_subnet_id" {
  value       = module.subnet-public-az1.id
  description = "The Public Subnet ID for AZ 1"
}
output "fwaas1_subnet_id" {
  value       = module.subnet-fwaas-az1.id
  description = "The Fwaas Subnet ID for AZ 1"
}

output "public2_subnet_id" {
  value       = module.subnet-public-az2.id
  description = "The subnet ID in the Public Subnet in AZ 2"
}
output "fwaas2_subnet_id" {
  value       = module.subnet-fwaas-az2.id
  description = "The Fwaas Subnet ID for AZ 2"
}
output "private2_subnet_id" {
  value         = module.subnet-private-az2.id
  description = "The Private Subnet ID for AZ 2"
}
output "z_east_instance_public_az1_ssh" {
  value = "Jump Box linux az1 ssh: ssh -i ${var.keypair}.pem ubuntu@${element(module.east_instance_public_az1.public_eip, 0)}"
}
output "z_east_instance_private_az1_ssh" {
  value = "east private linux az1 ssh: ssh -i ${var.keypair}.pem ubuntu@${local.linux_east_az1_ip_address}"
}
output "z_east_instance_private_az2_ssh" {
  value = "east linux az2 ssh: ssh -i ${var.keypair}.pem ubuntu@${local.linux_east_az2_ip_address}"
}
output "z_west_instance_private_az1_ssh" {
  value = "west private linux az1 ssh: ssh -i ${var.keypair}.pem ubuntu@${local.linux_west_az1_ip_address}"
}
output "z_west_instance_private_az2_ssh" {
  value = "west linux az2 ssh: ssh -i ${var.keypair}.pem ubuntu@${local.linux_west_az2_ip_address}"
}
