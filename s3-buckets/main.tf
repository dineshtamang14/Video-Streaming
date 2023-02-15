# importing module of shared variable
module "shared_vars" {
  source = "../shared-vars"
}

# video input bucket
resource "aws_s3_bucket" "video_input" {
  bucket = "video-input-bucket"

  tags = {
    Name        = "video-input-bucket"
    Environment = "${module.shared_vars.env_suffix}"
  }
}

resource "aws_s3_bucket_acl" "video_input_acl" {
    bucket = aws_s3_bucket.video_input.id
    acl = "private"
}


# video output bucket
resource "aws_s3_bucket" "video_output" {
  bucket = "video-output-bucket"

  tags = {
    Name        = "video-output-bucket"
    Environment = "${module.shared_vars.env_suffix}"
  }
}

resource "aws_s3_bucket_acl" "video_output_acl" {
    bucket = aws_s3_bucket.video_output.id
    acl = "private"
}