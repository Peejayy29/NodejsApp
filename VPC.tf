variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

resource "aws_vpc" "my_vpc" {
  cidr_block           = var.vpc_cidr_block
  enable_dns_support   = true
  enable_dns_hostnames = true
}
variable "public_subnet_cidr_block" {
  description = "CIDR block for the Public Subnet"
  type        = string
  default     = "10.0.1.0/24"
}

resource "aws_subnet" "public_subnet" {
  vpc_id                  = aws_vpc.my_vpc.id
  cidr_block              = var.public_subnet_cidr_block
  map_public_ip_on_launch = true
  availability_zone       = "us-east-1a"  

  tags = {
    name = "PublicSubnet"
  }
}
variable "private_subnet_1_cidr_block" {
  description = "CIDR block for the private Subnet 1"
  type        = string
  default     = "10.0.2.0/24"
}
resource "aws_subnet" "private_subnet_1" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = var.private_subnet_1_cidr_block
  availability_zone = "us-east-1a"  

  tags = {
    name = "PrivateEC2"
  }
}
variable "private_subnet_2_cidr_block" {
  description = "CIDR block for the Public Subnet"
  type        = string
  default     = "10.0.3.0/24"
}
resource "aws_subnet" "private_subnet_2" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = var.private_subnet_2_cidr_block
  availability_zone = "us-east-1b" 

  tags = {
    name = "PrivateRDS"
  }
}
