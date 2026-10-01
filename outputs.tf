# Here we follow a different method to access the outputs of a resource from a module
# module = child module or the referencing module
# vpc = our internal_reference_name with in the parent or root module
# vpc_id = we are referencing this name from the outputs of child module and it is given as vpc_id for id of vpc
output "vpc_id" {
    value = module.vpc.vpc_id
}