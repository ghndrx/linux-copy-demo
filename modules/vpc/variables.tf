variable "network_name" {
  type        = string
  description = "Name of the VPC network to create"
}

variable "subnets_cidr_list" {
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24", "10.0.4.0/24"]
  description = "List of CIDR blocks for the subnets to create within the VPC network"
}

variable "region" {
  type        = string
  description = "Region where the VPC subnets will be created"
}
