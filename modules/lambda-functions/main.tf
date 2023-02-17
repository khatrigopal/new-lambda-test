resource "archive_file" "lambda_archives" {
  type        = "zip"
  source_file = var.filename
  output_path = var.filename
}

resource "aws_lambda_function" "this" {
   filename                       =  var.filename
   function_name                  =  var.function_name
   role                           =  var.role_arn
   handler                        =  var.handler
   runtime                        = "python3.8"
   source_code_hash = filebase64sha256(each.value.filename)
}