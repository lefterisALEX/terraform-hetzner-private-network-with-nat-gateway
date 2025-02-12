locals {
  nat_gateway_ip = var.nat_gateway_ip != "" ? var.nat_gateway_ip : cidrhost(var.private_subnet, -2)
}
