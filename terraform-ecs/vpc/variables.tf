variable "region" {
  default = "eu-west-2"
}

variable "environment" {
  default = "test"
}

variable "vpc_private_subnets" {
  default = ["10.0.51.0/24", "10.0.52.0/24", "10.0.53.0/24"]
}

variable "vpc_public_subnets" {
  default = ["10.0.48.0/24", "10.0.49.0/24", "10.0.50.0/24"]
}

variable "vpc_cidr" {
  default = "10.0.48.0/20"
}
