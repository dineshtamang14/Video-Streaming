# for terraform state file
terraform {
    backend "s3" {
        bucket = "video-streaming-state"
        key = "video-streaming/streaming.tfstate"
        region = "us-east-1"
    }
}

provider "aws" {
  region = "${var.region}"
  shared_config_files = ["~/.aws/config"]
  shared_credentials_files = ["~/.aws/credentials"]
}

# importing modules
module "s3_module" {
  source = "./s3-buckets"
}