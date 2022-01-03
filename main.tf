provider "aws" {
    access_key = var.access_key
    secret_key = var.secret_key
    region = var.aws_region
}

module "vpc" {
    source = "./modules/vpc"
    cidr = var.cidr
    env = var.env
}

module "mainsubnet" {
  source = "./modules/subnet"
  vpc_id = module.vpc.id
  cidr = module.vpc.cidr_block
  availability_zone = var.availability_zone
  env = var.env

}  
