module "lambda_functions_1" {
  source = "../modules/lambda-functions"
  function_name = "lambda_fn_1"
  role_arn = "arn:aws:iam::558940753150:role/lambda-full-acces"
  handler = "lambda_function_1.lambda_handler"
  #filename = "${path.module}/cod1/lambda_function_1.py"
   source_path = "cod1/lambda_function_1.zip"
}
  
  
module "lambda_function_2" {
  source         = "../modules/lambda-functions"
  function_name = "lambda_fn_2"
  role_arn = "arn:aws:iam::558940753150:role/lambda-full-acces"
  handler = "lambda_function_2.lambda_handler"
  #source_path = "code2/lambda_function_2.zip"
  
}
