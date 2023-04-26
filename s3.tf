resource "aws_s3_bucket" "tfstate_s3" {
    bucket = "terraform-hb-backend"
}

resource "aws_s3_bucket_versioning" "tfstate_s3_versioning" {
    bucket = aws_s3_bucket.tfstate_s3.id
    versioning_configuration {
      status = "Enabled"
    }
}

output "s3_bucket_arn" {
  value = aws_s3_bucket.tfstate_s3.arn
  description = "The ARN of the S3 bucket"
}