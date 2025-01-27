variable "key_name" {
  type        = string
  description = "terraform_key_name"
}

variable "instance_type" {
  type        = string
  description = "UBUNTU INSTANCE TYPE"
}

variable "terraform_instance_tags" {
  type        = string
  description = "EC2 instance tags"
   default     = "terraform_module"
}


variable "instance_tags" {
  type        = string
  description = "EC2 instance tags"
}


variable "associate_public_ip_address" {
  type        = bool
  description = "ASSOCIATED PUBLIC IP"
}
