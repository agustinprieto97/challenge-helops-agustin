variable "tag_version" {
  type    = string   # Specify the data type of the variable
  default = "latest" # Optional default value
}

variable "aws_region" {
  type    = string   # Specify the data type of the variable
  default = "eu-north-1" # Optional default value
}

variable "image_name" {
  type    = string   # Specify the data type of the variable
  default = "ghcr.io/agustinprieto97/challenge-helops-agustin" # Optional default value
}