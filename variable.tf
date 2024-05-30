variable "project_name" {
    type= string  
    }

variable "environment" {
    type = string
    default = "dev"
  }

variable "common_tags" {
  type = map
}

variable "cidr_block_vpc" {
    default = "10.0.0.0/16"
  }


variable "vpc_tags" {
  type = map
  default = {}
}

variable "igw_tags" {
  default = {}
}

variable "public_subnet_cidrs" {
   validation {
    condition     = length(var.public_subnet_cidrs) == 2
    error_message = "Please provide 2 valid public subnet CIDRs"
  }
}


variable "public_subnet_cidrs_tags" {
  default = {}
}

variable "private_subnet_cidrs" {
   validation {
    condition     = length(var.private_subnet_cidrs) == 2
    error_message = "Please provide 2 valid public subnet CIDRs"
  }
}


variable "private_subnet_cidrs_tags" {
  default = {}
}


variable "database_subnet_cidrs" {
   validation {
    condition     = length(var.database_subnet_cidrs) == 2
    error_message = "Please provide 2 valid public subnet CIDRs"
  }
}


variable "database_subnet_cidrs_tags" {
  default = {}
}


variable "nat_gw_tags" {
  default = {}
}
variable "public_route_tags" {
  default = {}
}
variable "private_route_tags" {
  default = {}
}

variable "database_route_tags" {
  default = {}
}
variable "database_subnet_group_tags" {
  default = {}
}

variable "peering_tags" {
  default = {}
}
variable "acceptor_vpc_id" {
  default = ""
}

variable "is_peering_required" {
  default = false
}

