terraform {
  required_providers {
    hcloud = {
      source = "hetznercloud/hcloud"
      version = "1.49.1"
    }
  }
}

provider "hcloud" {
  token =  var.hcloud_token
}

module "hcloud_networking" {
  source = "../.."

  tailscale_auth_key = var.tailscale_auth_key
}
