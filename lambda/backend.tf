## Backend ###
# S3
###############

terraform {
  backend "s3" {
    bucket = "khatrig-githubaction"
    key = "lambda-flutter.tfstate"
    region = "us-east-1"
  }
}
