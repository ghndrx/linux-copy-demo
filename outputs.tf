output "vpc_subnets_out" {
    value = module.vpc.vpc_subnets
}
output "vm1_public_ip" {
    value = module.compute.vm1_ip
}
output "vm2_public_ip" {
    value = module.compute.vm2_ip
}