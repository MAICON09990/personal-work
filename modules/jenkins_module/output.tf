output "ust_jenkins_server_pblic_ip" {
  value = aws_instance.jenkins_server.id
}

output "ami" {
  value = data.aws_ami.ubuntu.id
}