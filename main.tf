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

## Virtual Private Cloud
#########################################################################################

resource "aws_vpc" "vpc" {
  cidr_block           = var.cidr_block
  enable_dns_support   = true
  enable_dns_hostnames = true
}

module "vpc" {
source = "../modules/CloudEndureVPC"

  region                = var.region
  cidr_block            = var.cidr_block
  private_cidr          = var.private_cidr
  public_cidr           = var.public_cidr
  az                    = var.az
  on_prem_net           = var.on_prem_net
  ec2_service_name      = var.ec2_service_name
}