
# VPC
output "vpc_id" {
  description = "ID of project VPC"
  value       = module.vpc.vpc_id
}

/*
# CIDR blocks
output "cidr_block" {
  description = "The CIDR block of the VPC"
  value       = module.vpc.cidr_block
}

# Subnets
output "private_cidr" {
  description = "List of IDs of private subnets"
  value       = module.vpc.private_cidr
}

output "public_cidr" {
  description = "List of IDs of public subnets"
  value       = module.vpc.public_cidr
}

# NAT gateways
output "nat_public_ips" {
  description = "List of public Elastic IPs created for AWS NAT Gateway"
  value       = module.vpc.nat_public_ips
}

# AZs
output "az" {
  description = "A list of availability zones spefified as argument to this module"
  value       = module.vpc.az
}
*/
