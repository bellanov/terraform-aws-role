# Variables
# 
# Input variables allow you to customize modules without altering their source code.
#================================================

variable "assume_role_principal" {
  type        = map(string)
  description = "Identity whose credentials are being used."
}

variable "name" {
  type        = string
  description = "Name of the Role."
}

variable "policy" {
  type        = string
  description = "IAM Policy defining the role's permissions."
}