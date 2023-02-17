variable "lambda_functions" {
  type = map(object({
    source_path = string
    handler = string
    runtime = string
    memory_size = number
    timeout = number
  }))
}
