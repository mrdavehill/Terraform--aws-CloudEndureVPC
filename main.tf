## Provider
#########################################################################################
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = var.region
}

## Infrastructure module
#########################################################################################
module "vpc" {
  source = "git::https://github.com/mrdavehill/Terraform--modules-CloudEndureVPC.git"

  cidr_block            = var.cidr_block
  region                = var.region
  private_cidr          = var.private_cidr
  public_cidr           = var.public_cidr
  az                    = var.az
  on_prem_net           = var.on_prem_net
  ec2_service_name      = var.ec2_service_name
}