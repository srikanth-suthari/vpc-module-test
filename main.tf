# While using the modules
# We don't create any resources but we just pass the values to the module resources, which are already created.

module "vpc" {
    # source = "../terraform-vpc-module"
    source = "git::https://github.com/srikanth-suthari/terraform-vpc-module.git?ref=main" #by default it takes main

    vpc_cidr = var.vpc_cidr
    project_name = var.project_name
    environment = var.environment
    vpc_tags = var.vpc_tags

    # public subnets
    public_subnet_cidrs = var.public_subnet_cidrs
    private_subnet_cidrs = var.private_subnet_cidrs
    database_subnet_cidrs = var.database_subnet_cidrs
}