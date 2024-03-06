region = "us-east-1"
vpc_cidr_block = "10.0.0.0/16"
public_subnet_cidr_block = "10.0.1.0/24"
private_subnet_1_cidr_block = "10.0.2.0/24"
private_subnet_2_cidr_block = "10.0.3.0/24"

variable "aws_region" {
  description = "The AWS region to deploy resources."
  type        = string
}

