Hey!

Create a single AZ CloudEndure VPC with private and public subnets, an IGW, NAT gateway and VGW, route tabls, NACLs and SGs

Routing is nailed down to send CloudEndure console traffic out the IGW and on-prem traffic to the VGW

The site-to-site VPN needs to be manually added to the VGW

There are seven variables, these are the examples I've used:

region = "eu-west-2"

cidr_block = "10.255.1.0/24"

public_cidr = "10.255.1.128/25"

private_cidr" = "10.255.1.0/25"

az = "eu-west-2a"

on_prem_net = "172.16.0.0/24"

ec2_service_name = "com.amazonaws.eu-west-2.ec2"

![Diagram v1.0](CloudEndure%20AWS%20WAN%20version%201.0%20-%20Terraform%20Documentation.jpg)
