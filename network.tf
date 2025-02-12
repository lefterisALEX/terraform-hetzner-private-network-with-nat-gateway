locals {
  ubuntu_version = "ubuntu-24.04"
}

resource "hcloud_network" "private" {
  name     = var.network_name
  ip_range = var.private_subnet
}


resource "hcloud_network_subnet" "private" {
  network_id   = hcloud_network.private.id
  type         = "cloud"
  network_zone = var.network_zone
  ip_range     = var.private_subnet
}

resource "hcloud_network_route" "default" {
  count = var.deploy_nat_gateway ? 1 : 0

  network_id  = hcloud_network.private.id
  destination = "0.0.0.0/0"
  gateway     = var.nat_gateway_ip
}


resource "hcloud_firewall" "nat_gateway" {
  count = var.deploy_nat_gateway ? 1 : 0

  name = "nat-gateway"
}
