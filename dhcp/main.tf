resource "aws_vpc_dhcp_options" "this" {
  domain_name         = var.aws_dhcp_domain_name
  domain_name_servers = var.aws_dhcp_domain_name_servers
  tags = {
    Name = "${var.stand}-${var.region_code} - module dhcp options"
  }
}
