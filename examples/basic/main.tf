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
  
  nat_gateway_name = "jbndc"
  nat_gateway_ip =  "192.168.2.111"
  nat_gateway_server_type =  "cx33"
  deploy_nat_gateway = true
}
