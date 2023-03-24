output "test_iam_user_complete_details" {
    value = "aws_iam_user.test_iam_user"
}

output "test_s3_bucket_complete_details" {
    value = "aws_s3_bucket_versioning.test_s3_bucket"
}

output "test_s3_bucket_versioning" {
    value = "aws_s3_bucket_versioning.test_s3_bucket.versioning_configuration[0].status"
}