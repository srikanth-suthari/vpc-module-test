# While using the modules
# We don't create any resources but we just pass the values to the module resources, which are already created.

module "vpc" {
    source = "../terraform-vpc-module"

    vpc_cidr = var.vpc_cidr
    project_name = var.project_name
    environment = var.environment
    vpc_tags = var.vpc_tags
}