variable "vpc_cidr" {
    type = string
    default = "10.0.0.0/16"
    # description = "Please provide VPC CIDR"
}

variable "vpc_tags" {
    type = map
    default = {
        # Project = "roboshop"
        # Terraform = true
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