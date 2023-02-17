data "archive_file" "lambda_archives" {
  type        = "zip"
  source_file = var.filename
  output_path = "var.filename/.zip"
}


resource "aws_lambda_function" "this" {
   
   function_name                  =  var.function_name
   role                           =  var.role_arn
   handler                        =  var.handler
   runtime                        = "python3.8"
  
   filename                       =  data.archive_file.lambda_archives.output_path
   source_code_hash =               data.archive_file.lambda_archives.output_base64sha256
}
