## Backend ###
# S3
###############

terraform {
  backend "s3" {
    bucket = "khatrig-githubaction"
    key = "lambda-flutter-test.tfstate"
    region = "us-east-1"
  }
}
