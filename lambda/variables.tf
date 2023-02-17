variable "filename" {
  description = "The filename of the Python file for the AWS Lambda function."
  default = ""
}


variable "role_arn" {
  description = "The ARN of the IAM role for the AWS Lambda function."
}


variable "function_name" {
  description = "The name of the AWS Lambda function."
  default = ""
}


variable "handler" {
  description = "The name of the Python function that AWS Lambda calls to start execution."
  default = ""
}
