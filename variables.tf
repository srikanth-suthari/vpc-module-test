variable "vpc_cidr" {
    type = string
    default = "10.0.0.0/16"
    # description = "Please provide VPC CIDR"
}

variable "vpc_tags" {
    type = map
    default = {
      Purpose = "vpc-module-test"
    }
}

variable "project_name" {
  type = string
  default = "roboshop"
}

variable "environment" {
  type = string
  default = "dev"
}

variable "public_subnet_cidrs" {
  type = list
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}
