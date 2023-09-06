resource "aws_key_pair" "this" {
  key_name   = var.aws_key_pair_key_name
  public_key = var.aws_key_pair_public_key
  tags       = var.aws_key_pair_tags
}
