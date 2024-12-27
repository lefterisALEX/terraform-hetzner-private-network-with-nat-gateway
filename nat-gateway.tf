resource "hcloud_server" "nat_gateway" {
  name         = var.nat_gateway_name
  server_type  = var.nat_gateway_server_type
  image        = local.ubuntu_version
  location     = var.location
  ssh_keys     = var.ssh_keys
  firewall_ids = [hcloud_firewall.nat_gateway.id]

  network {
    network_id = hcloud_network.private.id
    ip         = var.nat_gateway_ip
  }

  public_net {
    ipv4_enabled = true
    ipv6_enabled = false
  }

  # Userdata script: https://community.hetzner.com/tutorials/how-to-set-up-nat-for-cloud-networks#step-6---cloud-init
  user_data = templatefile("${path.module}/templates/cloud-init.yml", {
    private_subnet = var.private_subnet
  })

  depends_on = [
    hcloud_network_subnet.private
  ]
}
