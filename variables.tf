variable "vpc_cidr" {
    type = string
    description = "Please provide VPC CIDR"
}

variable "vpc_tags" {
    type = map
    default = {
        
    }
}