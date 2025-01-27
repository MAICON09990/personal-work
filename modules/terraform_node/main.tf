resource "aws_instance" "ust_terraform_node" {
  ami                         = data.aws_ami.ubuntu.id
  instance_type               = var.instance_type
  key_name                    = var.key_name
  associate_public_ip_address = var.associate_public_ip_address
  user_data                   = file("${path.module}/userdata.sh")
  tags = {
    Name = var.terraform_instance_tags
  }
}