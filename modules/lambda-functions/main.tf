resource "aws_lambda_function" "lambda_function" {
   
   function_name                  =  var.function_name
   role                           =  var.role_arn
   handler                        =  var.handler
   runtime                        = "python3.8"
    
   #source_code_hash =               data.archive_file.lambda_archives.output_base64sha256
   source_code_hash         =      filebase64(var.source_path)
  data_archive     = data.archive.lambda_zip.output_path
}

data "archive" "lambda_zip" {
  type        = "zip"
  source_file = var.source_path
  output_path = "/${var.function_name}.zip"
   
}
