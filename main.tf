terraform {
   required_version = ">= 1.4.0"
   required_providers {
     aws = {
       source  = "hashicorp/aws"
       version = ">= 5.0.0"
     }
   }
 }

 provider "aws" {
   region = "us-east-1"
 }

 module "vpc" {
  source = "./modules/vpc/"
}

 module "web_server_sg" {
  source = "./modules/security_group/"

  vpc_id = module.vpc.vpc_id
  vpc_cidr_block = module.vpc.vpc_cidr_block
}

 module "ec2_instance" {
  source = "./modules/ec2/"

  subnet_id = module.vpc.public_subnet_id
  security_group = module.web_server_sg.security_group_id
}

 module "s3" {
  source = "./modules/s3/"
}

 module "amplify_app" {
  source = "./modules/amplify/"
}
