terraform {
  backend "s3" {
    bucket         = "jkotipal-terraform-state-eu-north-1"   # Replace with your unique S3 bucket name
    key            = "ec2-instance/terraform.tfstate"
    region         = "eu-north-1"
    dynamodb_table = "terraform-locks"  # Use the DynamoDB table name
    encrypt        = true
  }
}

