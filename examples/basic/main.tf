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

  private_subnet = "10.122.0.0/24"
}
