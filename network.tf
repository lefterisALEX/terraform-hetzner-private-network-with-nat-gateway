locals {
  ubuntu_version = "ubuntu-22.04"
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
  network_id  = hcloud_network.private.id
  destination = "0.0.0.0/0"
  gateway     = var.nat_gateway_ip
}


resource "hcloud_firewall" "nat_gateway" {
  name = "nat-gateway"
}
