# main.tf



module "lambda_functions" {
  source = "../modules/lambda/"

  lambda_functions = var.lambda_functions
}
