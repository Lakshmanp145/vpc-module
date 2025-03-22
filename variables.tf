variable "project" {
    
}

variable "environment" {
    
}
variable "common_tags" {
    
}

variable "vpc_tags" {
    default = {}   
}

variable "cidr_block" {
    
}

variable "enable_dns_hostnames" {
    default = true
}

variable "igw_tags" {
    default = {}
}

variable "public_subnet_cidrs" {
    type = list #we are iterating
    validation {
    condition     = length(var.public_subnet_cidrs) == 2 
    error_message = "please provide valid two public_subnet_cidrs"
  }
}


variable "public_subnet_tags" {
    default = {}
}

variable "private_subnet_cidrs" {
    type = list #we are iterating
    validation {
    condition     = length(var.private_subnet_cidrs) == 2 
    error_message = "please provide valid two private_subnet_cidrs"
  }
}

variable "private_subnet_tags" {
    default = {}
}

variable "database_subnet_cidrs" {
    type = list #we are iterating
    validation {
    condition     = length(var.database_subnet_cidrs) == 2 
    error_message = "please provide valid two database_subnet_cidrs"
  }
}

variable "database_subnet_tags" {
    default = {}
}

variable "nat_tags" {
    default = {}
}

variable "nat_gateway_tags" {
    default = {}
}

variable "public_route_table_tags" {
    default = {}
} 

variable "private_route_table_tags" {
    default = {}
}

variable "database_route_table_tags" {
    default = {}
}

variable "is_peering_required" {
    default = false
}

variable "aws_vpc_peering_tags" {
    default = {}
}