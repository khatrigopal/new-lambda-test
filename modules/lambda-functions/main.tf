# modules/lambda-functions/main.tf

locals {
  functions = {
    for name, function in var.lambda_functions :
    name => {
      filename = "${name}.zip"
      function_config = {
        function_name = name
        handler = function.handler
        runtime = function.runtime
        memory_size = function.memory_size
        timeout = function.timeout
      }
    }
  }
}

resource "archive_file" "lambda_archives" {
  for_each = local.functions

  type        = "zip"
  source_dir  = each.value.source_path
  output_path = each.value.filename
}

resource "aws_lambda_function" "lambda_functions" {
  for_each = local.functions

  function_name = each.key
  role         = aws_iam_role.lambda_role.arn
  handler      = each.value.function_config.handler
  runtime      = each.value.function_config.runtime
  memory_size  = each.value.function_config.memory_size
  timeout      = each.value.function_config.timeout
  filename     = each.value.filename
  source_code_hash = filebase64sha256(each.value.filename)
}
