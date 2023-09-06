variable "stand" {
  description = "Stand name"
  type        = string
  default     = ""
}

variable "region_code" {
  description = "Region code"
  type        = string
  default     = ""
}

variable "aws_dhcp_domain_name" {
  description = "the suffix domain name to use by default when resolving non Fully Qualified Domain Names"
  type        = string
  default     = ""
}

variable "aws_dhcp_domain_name_servers" {
  description = "List of name servers to configure in /etc/resolv.conf. If you want to use the default AWS nameservers you should set this to A"
  type        = list(string)
  default     = ["AmazonProvidedDNS"]
}


