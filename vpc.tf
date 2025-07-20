module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "~> 5.1"

  name = "${local.prefix}-vpc"
  cidr = "10.0.0.0/16"

  azs             = ["ap-southeast-1a", "ap-southeast-1b"]
  public_subnets  = ["10.0.1.0/24", "10.0.2.0/24"]
  enable_nat_gateway = false
  single_nat_gateway = true
}

