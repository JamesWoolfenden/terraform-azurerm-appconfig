variable "tags" {
  description = "This is to help you add tags to your cloud objects"
  type        = map
}

variable "location" {
  type=string
  default="uksouth"
}

variable "rg_name" {
  type=string
  default="pike"
}
