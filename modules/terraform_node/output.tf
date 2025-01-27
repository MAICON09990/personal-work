output "ust_terraform_node_public_ip" {
  value = aws_instance.ust_terraform_node.id
}

output "ami" {
  value = data.aws_ami.ubuntu.id
}