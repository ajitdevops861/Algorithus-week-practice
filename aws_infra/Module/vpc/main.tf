resource "aws_vpc" "this" {
  for_each = var.vpcs

  cidr_block           = each.value.cidr_block
  enable_dns_hostnames = each.value.enable_dns_hostnames # <--- यहाँ लग गया each.value!

  tags = {
    Name = each.value.vpc_name
  }
}

resource "aws_internet_gateway" "gw" {
  for_each = var.vpcs

  vpc_id = aws_vpc.this[each.key].id
  tags   = {
    name = each.value.aws_internet_gateway_name
}
}
