output "nat_gateway_ip" {
  value = length(hcloud_server.nat_gateway) > 0 ? hcloud_server.nat_gateway[0].ipv4_address : null
}

output "private_network_id" {
  value = hcloud_network.private.id
}
