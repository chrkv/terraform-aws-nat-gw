variable "subnet_id" {
  description = "The Subnet ID of the subnet in which to place the gateway."
}

variable "name" {
  description = "Name of NAT GW"
}

variable "project" {
  description = "Project tag"
}

data "aws_subnet" "nat" {
  id = local.subnet_id
}

locals {
  subnet_id = var.subnet_id
  vpc_id    = data.aws_subnet.nat.vpc_id
  project   = var.project
  name      = var.name
}