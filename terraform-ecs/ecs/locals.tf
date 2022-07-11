locals {
  region = var.aws_region
  ecr_defaults = {
    repository_name = "app-registry"
  }
  ecr = merge(local.ecr_defaults, var.ecr_values)

  ecs_defaults = {
    cluster_name = "ecs-cluster"
    service_name = "ecs-service"
  }
  ecs = merge(local.ecs_defaults, var.ecs_values)

  lb_defaults = {
    name     = "tf-alb"
    internal = false
    target_group = {
      name     = "tf-alb-tg"
      port     = 80
      protocol = "HTTP"
    }
  }
  lb = merge(local.lb_defaults, var.lb_values)

  vpc_defaults = {
    id = ""
  }
  vpc             = data.terraform_remote_state.vpc.outputs.vpc_id
  use_default_vpc = data.terraform_remote_state.vpc.outputs.vpc_id

  container_defaults = {
    name  = "app-registry"
    image = "771840051868.dkr.ecr.eu-west-2.amazonaws.com/app-registry:df05643e9b2de5633cdf29bd09e98110d6435af7"
    ports = [80]
  }
  container = merge(local.container_defaults, var.container)
}
