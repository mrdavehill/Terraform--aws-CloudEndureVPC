## Variables
#########################################################################################
variable "region" {
    type    = string
    default = "eu-west-2"
}

variable "cidr_block" {
  type        = string
  description = "VPC primary CIDR block"
  default     = "10.255.1.0/24"
}

variable "public_cidr" {
    type    = string
    default = "10.255.1.128/25"
}

variable "private_cidr" {
    type    = string
    default = "10.255.1.0/25"
}

variable "az" {
    type    = string
    default = "eu-west-2a"
}

variable "on_prem_net" {
  type        = string
  description = "On-prem server Vlan"
  default     = "172.16.0.0/24"
}

variable "ec2_service_name" {
  type    = string
  description = "EC2 API endpoint - it's regional"
  default = "com.amazonaws.eu-west-2.ec2"
}