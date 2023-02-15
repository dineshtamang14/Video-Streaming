# importing module of shared variable
module "shared_vars" {
  source = "../shared-vars"
}

resource "aws_iam_role" "media_convert_role" {
  name = "MediaConvertCustomRole"
  managed_policy_arns = ["arn:aws:iam::aws:policy/AmazonS3FullAccess", "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"]
}

resource "aws_iam_role" "lambda_role" {
  name = "VODLambdaRole"
  managed_policy_arns = ["arn:aws:iam::aws:policy/AWSLambda_FullAccess", "arn:aws:iam::aws:policy/AmazonS3FullAccess"]
}