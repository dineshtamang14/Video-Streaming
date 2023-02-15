output "vpcid" {
    value = "${local.vpcid}"
    sensitive = false
    description = "vpc id based on the environment"
    depends_on = []
}

output "env_suffix" {
  value = "${local.env}"
  sensitive = false
  description = "Environment Name"
  depends_on = []
}

output "region" {
  value = "${local.region_name}"
  sensitive = false
  description = "default region"
}