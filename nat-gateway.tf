resource "hcloud_server" "nat_gateway" {
  count = var.deploy_nat_gateway ? 1 : 0

  name         = var.nat_gateway_name
  server_type  = var.nat_gateway_server_type
  image        = local.ubuntu_version
  location     = var.location
  ssh_keys     = var.ssh_keys
  firewall_ids = [hcloud_firewall.nat_gateway[0].id]

  network {
    network_id = hcloud_network.private.id
    ip         = var.nat_gateway_ip
  }

  public_net {
    ipv4_enabled = true
    ipv6_enabled = false
  }

  user_data = templatefile("${path.module}/templates/cloud-init.yml", {
    private_subnet = var.private_subnet
  })

  depends_on = [
    hcloud_network_subnet.private
  ]
}
