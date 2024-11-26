output "bucket_name" {
    description = "value of the bucket name"
    value = aws_s3_bucket.lambda_state.bucket
}


output "bucket_arn" {
    description = "value of the bucket arn"
    value = aws_s3_bucket.lambda_state.arn
}

output "bucket_region" {
    description = "value of the bucket region"
    value = aws_s3_bucket.lambda_state.region
}