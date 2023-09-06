# Description
Module create ssh key, use import

# Example usage
```commandline
module "ssh_example" {
  source                   = "git@example.com:devops/c1-tf-modules.git//ssh-keypair"
  aws_key_pair_key_name = "example_name"
  aws_key_pair_public_key = "our_key""
  aws_key_pair_tags = {
    Createdby = example
    Owner     = devops
  }
  providers = {
    aws = aws
  }
}
```
