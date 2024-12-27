resource "hcloud_server" "vpn" {
  count = var.tailscale_auth_key != null && var.tailscale_auth_key != "" ? 1 : 0

  name        = var.tailscale_server_name
  server_type = var.tailscale_server_type
  image       = local.ubuntu_version
  location    = var.location
  ssh_keys    = var.ssh_keys

  network {
    network_id = hcloud_network.private.id
    ip         = var.tailscale_ip
  }

  public_net {
    ipv4_enabled = false
    ipv6_enabled = false
  }

  user_data = templatefile("${path.module}/templates/cloud-init-tailscale.yml", {
    private_subnet     = var.private_subnet
    tailscale_auth_key = var.tailscale_auth_key
  })

  depends_on = [
    hcloud_network_subnet.private
  ]
}
