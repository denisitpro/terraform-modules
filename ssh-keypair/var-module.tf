variable "aws_key_pair_key_name" {
  description = "key name"
  type        = string
}

variable "aws_key_pair_public_key" {
  description = " public key"
  type        = string
}


variable "aws_key_pair_tags" {
  type    = map(string)
  default = {}
}
