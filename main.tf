# Specify required Provider and version
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = var.region
}

# Configure EC2 instances
resource "aws_instance" "webserver" {
    count = var.instance_count
    ami           = "ami-04505e74c0741db8d"
    instance_type = var.ec2_instance_type

    tags = {
        Name = "webserver-${count.index}"
  }
}