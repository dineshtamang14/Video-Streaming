locals {
    env = "${terraform.workspace}"

  # vpc Environment Variable
  vpcid_env = {
    default = "vpc-075e85e43a3ad0bee"
    staging = "vpc-075e85e43a3ad0bee"
    production = "vpc-075e85e43a3ad0bee"
  }

  vpcid = "${lookup(local.vpcid_env, local.env)}"

  region_name = "us-east-1"
}