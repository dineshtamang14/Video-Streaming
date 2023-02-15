# importing module of shared variable
module "shared_vars" {
  source = "../shared-vars"
}

resource "aws_iam_role" "media_convert_role" {
  name = "MediaConvertCustomRole"

  managed_policy_arns = ["arn:aws:iam::aws:policy/AmazonS3FullAccess", "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"]
}

