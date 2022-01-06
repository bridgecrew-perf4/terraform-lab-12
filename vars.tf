variable "instance_count" {
  description = "Number of EC2 instances "
  type        = number
  default = 3
}

variable "ec2_instance_type" {
  description = "Define the instance_type"
  type        = string
  default = "t2.micro"
}

variable "region" {
  description = "Define the region default "
  type        = string
  default = "us-east-1"
}


