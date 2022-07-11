terraform {
  backend "s3" {
    # Replace this with your bucket name!
    bucket = "test-state-test-backend"
    key    = "./vpc/terraform.tfstate"
    region = "eu-west-2"
    # Replace this with your DynamoDB table name!
    dynamodb_table = "test-state-test-backend-locks"
    encrypt        = true
  }
}
