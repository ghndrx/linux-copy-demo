provider "google" {
  credentials = file(var.credentials_file)
  project     = var.project_id
  region      = var.region
}

module "firewall" {
  source     = "./modules/firewall"
  network_name = var.network_name
  depends_on = [
    module.vpc
  ]
}

module "compute" {
    source = "./modules/compute"
    project_id = var.project_id
    region = var.region
    zone = var.zone
    instance_type = var.instance_type
    image_name = var.image_name
    network_name = var.network_name
    subnets_cidr_list = var.subnets_cidr_list
    depends_on = [
       module.vpc
    ]
}

module "vpc" {
  source            = "./modules/vpc"
  network_name      = var.network_name
  subnets_cidr_list = var.subnets_cidr_list
  region = var.region
  }