variable "aws_region" {
  type        = string
  default     = "eu-west-2"
  description = "AWS region"
}

variable "ecr_values" {
  type        = any
  default     = {}
  description = "AWS ECR configuration"
}

variable "ecs_values" {
  type        = any
  default     = {}
  description = "AWS ECS configuration"
}

variable "lb_values" {
  type        = any
  default     = {}
  description = "AWS Load Balancer configuration"
}

variable "vpc" {
  type        = any
  default     = {}
  description = "AWS VPC configuration"
}

variable "container" {
  type        = any
  default     = {}
  description = "Container configuration to deploy"
}

variable "image" {
  type        = string
  default     = "771840051868.dkr.ecr.eu-west-2.amazonaws.com/app-registry:84362fb3d101a31956f1744a7b06dbe4b74bfd17"
  description = "AWS region"
}
