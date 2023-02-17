# main.tf

variable "lambda_functions" {
  type = map(object({
    source_path = string
    handler = string
    runtime = string
    memory_size = number
    timeout = number
  }))
}

module "lambda_functions" {
  source = "github.com/<your_username>/<your_module_name>/lambda-functions"

  lambda_functions = var.lambda_functions
}
