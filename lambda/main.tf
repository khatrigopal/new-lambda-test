module "lambda_functions_1" {
  source = "../modules/lambda-functions"
  function_name = "lambda_function_1"
  role_arn = "arn:aws:iam::123456789012:role/lambda-role"
  handler = "lambda_function_1.lambda_handler"
  filename = "./cod1/lambda_function_1"
   #filename = "${path.module}/cod1/lambda_function_1.zip"
}
