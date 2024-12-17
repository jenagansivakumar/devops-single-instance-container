terraform {
  backend "s3" {
    bucket = "guis3bucketvotingapp" ## think of a unique name for the s3 bucket
    key    = "terraform/statefile.tfstate"
    region = "eu-north-1"

    dynamodb_table = "voting-app-table"
  }
}
