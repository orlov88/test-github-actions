terraform {
  backend "s3" {
    # Replace this with your bucket name!
    bucket = "test-state-test-backend"
    key    = "./terraform.tfstate"
    region = "eu-west-2"
    # Replace this with your DynamoDB table name!
    dynamodb_table = "test-state-backend-locks"
    encrypt        = true
  }
}
