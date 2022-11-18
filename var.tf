variable "var-mahesh" {
  type        = string
  description = "string value"
  default     = "default.txt"
}

variable "var-mahesh1" {
  type        = number
  description = "number value"
  default     = 1234
}

variable "var-mahesh2" {
  type        = list(any)
  description = "list value"
  default     = [1, 2, "abc", "def"]
}

variable "var-mahesh3" {
  type        = map(any)
  description = "map value"
  default = {
    filename = "mahesh-map.txt"
    content  = "Map Content"
  }
}

variable "var-mahesh4" {
  type = object({         
    name = string
    dob   = number
  })
  description = "object value"
  default = {
    name = "Mahesh Jindal"
    dob  = 1234
  }
}