region        = "eu-north-1"
ami_id        = "ami-05edb7c94b324f73c"
instance_type = "t3.micro"
availability_zone = {
  public_subnet  = "eu-north-1a"
  private_subnet = "eu-north-1a"
}

vpc_name       = "voting-app-vpc"
vpc_cidr_block = "10.0.0.0/16"

subnets = {
  public = {
    cidr_block        = "10.0.0.0/18"
    availability_zone = "eu-north-1a"
  }
  private = {
    cidr_block        = "10.0.128.0/18"
    availability_zone = "eu-north-1a"
  }
}

tg = {
  name                = "vote-tg"
  port                = "80"
  protocol            = "HTTP"
  path                = "/health-check-path"
  interval            = 30
  timeout             = 5
  healthy_threshold   = 5
  unhealthy_threshold = 3
}

sg = {
    name        = "security-group"

}

instances = {
  master_instance = {
    name = "master-ec2"
  }
}

rt_name                 = "public-route-table"
rt_cidr_block           = "0.0.0.0/0"
alb_name                = "voting-app-lb"
alb_type                = "application"
alb_internal            = false
alb_deletion_protection = false
alb_cross_zone          = true
alb_idle_timeout        = 60
igw                     = "voting-app-igw"

 