variable "region" {
  description = "default region"
  type = string
  default = "us-east-2"
}


variable "bucket" {
  description = "The name of the S3 bucket"
  type        = string
  default     = "ust-bucket-mg"
}

variable "table" {
  description = "The name of the DynamoDB table"
  type        = string
  default     = "ust-terraform-lock-table-mg"
}





variable "instance_type" {
  type        = string
  description = "EC2 instance type"
  default     = "t2.medium"
}

variable "key_name" {
  type        = string
  description = "jenkins_key_name"
   default     = "k8s"
}

variable "instance_tags" {
  type        = string
  description = "EC2 instance tags"
   default     = "jenkins_module"
}

variable "terraform_instance_tags" {
  type        = string
  description = "EC2 instance tags"
   default     = "terraform_module"
}

variable "associate_public_ip_address" {
  type        = bool
  description = "associate ip address value"
   default     = true
}


#vpc variables

variable "vpc_name"{
    type = string
    description = "vpc name"
    default = "ust_vpc"
} 

variable "rolearn" {
  type        = string
  description = "IAM rolearn"
  default     = "arn:aws:iam::891377014465:role/kobs35"
}

variable "cluster_name" {
  type    = string
  default = "ust-cluster"
}


variable "env_name" {
  type    = string
  default = "dev"
}