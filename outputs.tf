# Here we follow a different method to access the outputs of a resource from a module
# module = child module or the referencing module
# vpc = our internal_reference_name with in the parent or root module
# vpc_id = we are referencing this name from the outputs of child module and it is given as vpc_id for id of vpc

# Syntax for accessing the ouputs from the child module
# output "internal_reference_name_for_parent_module" {
# value = module.<internal_resource_name>.<name_of_the_output_of_child_module>
# }

output "vpc_id" {
    value = module.vpc.vpc_id
}

output "vpc_region" {
    value = module.vpc.vpc_region
}

output "igw_id" {
    value = module.vpc.igw_id
}

output "public_subnet_ids" {
    description = "List of public subnet IDs"
    value = module.vpc.public_subnet_ids
}

output "private_subnet_ids" {
    description = "List of private subnet IDs"
    value = module.vpc.private_subnet_ids
}

output "database_subnet_ids" {
    description = "List of database subnet IDs"
    value = module.vpc.database_subnet_ids
}