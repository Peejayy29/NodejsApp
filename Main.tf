terraform {
  backend "s3" {
   bucket = "e-com-app-states"
    key    = "terraform.tfstate"
   region = "us-east-1"  
  }
}

# Define AWS provider
provider "aws" {
  region = "us-east-1"
}

