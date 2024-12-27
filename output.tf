output "nat_gateway_ip" {
  value = hcloud_server.nat_gateway.ipv4_address
}

