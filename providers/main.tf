module "vpc1" {
  source      = "../module/vpc"
  vpc_network = var.vpc_network
  pub_network = var.pub_network
  pri_network = var.pri_network

}

module "ec2" {
  source         = "../module/ec2"
  instance_type  = var.instance_type
  subnet_id = module.vpc1.subnet_id
  aws_sg_id = module.sg.sg_id
}

module "sg" {
  source         = "../module/securitygrp"
 vpc_id = module.vpc1.vpc_id
}

