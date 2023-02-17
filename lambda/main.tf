module "lambda_functions_1" {
  source = "../modules/lambda-functions"
  function_name = "lambda_function_1"
  role_arn = "arn:aws:iam::558940753150:role/lambda-full-acces"
  handler = "lambda_function_1.lambda_handler"
  filename = "${path.module}/cod1/lambda_function_1.py"
   #filename = "${path.module}/cod1/lambda_function_1.zip"
}
