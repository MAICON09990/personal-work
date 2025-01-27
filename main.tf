module "s3" {
  source = "./modules/s3"
  bucket = var.bucket
  table  = var.table
}


module "jenkins_module" {
  source                      = "./modules/jenkins_module"
  instance_type               = var.instance_type
  key_name                    = var.key_name
  instance_tags               = var.instance_tags
  associate_public_ip_address = var.associate_public_ip_address

}

module "terraform_node" {
  source                      = "./modules/terraform_node"
  instance_type               = var.instance_type
  key_name                    = var.key_name
  instance_tags               = var.terraform_instance_tags
  associate_public_ip_address = var.associate_public_ip_address
}