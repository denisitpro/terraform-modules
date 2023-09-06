# Description
Module create dhcp network for specific region aws

# Example usage
```commandline
module "dhcp_eu_central_1" {
  source      = "./modules/dhcp"
  stand       = "stand1"
  region_code = "euc1"
  aws_dhcp_domain_name = "example.com"
  aws_dhcp_domain_name_servers = ["1.1.1.1", "8.8.8.8"]
  providers = {
    aws = aws
  }
}
resource "aws_vpc_dhcp_options_association" "euc1_dhcp_options_assoc" {
  vpc_id          = module.vpc_eu_central_1.euc1_vpc_id
  dhcp_options_id = module.dhcp_eu_central_1.current_dhcp_id
}


module "dhcp_eu_west_2" {
  source      = "./modules/dhcp"
  region_code = "euw2"
  aws_dhcp_domain_name = "example.net"
  providers = {
    aws = aws.eu-west-2
  }
}

resource "aws_vpc_dhcp_options_association" "euw2_dhcp_options_assoc" {
  provider        = aws.eu-west-2
  vpc_id          = module.vpc_eu_west_2.euw2_vpc_id
  dhcp_options_id = module.dhcp_eu_west_2.current_dhcp_id
  depends_on      = [module.dhcp_eu_west_2]
}


```
