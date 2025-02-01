################################################################################
# General Variables from root module
################################################################################
variable "cluster_name" {
  type    = string
}

variable "vpc_id" {
  type        = string
  description = "vpc id value"

}

variable "private_subnets" {
  type        = list(any)
  description = "subnet id value"
}

variable "rolearn" {
  type        = string
  description = "rolearn id value"

}