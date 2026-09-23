module "aws_vpc" {
    source = "../terraform-vpc-module"

    vpc_cidr = var.vpc_cidr
    project_name = var.project_name
    environment = var.environment
    vpc_tags = var.vpc_tags
}