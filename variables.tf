# DEFINING ALL VARIABLES
variable "aws_owner_id" {
  description = "Contains the Owner ID of the ami for amazon linux"
  type        = string
}

variable "aws_ami_name" {
  description = "Name of the ami I want for my project"
  type        = string
}

variable "aws_vpc_name" {
  description = "Name of the vpc of my project"
  type        = string
}

variable "ec2_type" {
  description = "Type of my ec2 instance"
  type        = string
  default     = "t3.small"
}

variable "public_subnet_name" {
  type = string
}

variable "my_keypair" {
  default = "aws_keypair"
}

variable "number_of_instances" {
  description = "Number of instances for my public subnet"
}

variable "elk_ports" {
  type        = list(number)
  description = "list of ELK ingress ports"
}