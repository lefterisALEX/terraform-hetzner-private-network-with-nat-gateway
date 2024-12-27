# private-network-with-nat-gateway 

## Description
Terraform module to create a  private network with NAT gateway and optionally a Tailscale node for VPN access. Provisions:
- Private network
- NAT Gateway for outbound internet access
- Tailscale node for secure remote access (optionally)
- Firewall

## Usage Example
```hcl
terraform {
  required_providers {
    hcloud = {
      source = "hetznercloud/hcloud"
      version = "1.49.1"
    }
  }
}

variable "tailscale_auth_key" {
  description = "The authentication key for Tailscale."
  type        = string
  sensitive   = true
}

variable "hcloud_token" {
  description = "The Hetzner Cloud API token."
  type        = string
  sensitive   = true
}

provider "hcloud" {
  token =  var.hcloud_token
}

module "hcloud_networking" {
  source             = "./modules/infra"
  tailscale_auth_key = var.tailscale_auth_key
  private_subnet     = "192.168.100.0/24"
  ssh_keys           = ["main"]
  nat_gateway_ip     = "192.168.100.2"
}

output "nat_gateway_ip" {
  value = module.hcloud_networking.nat_gateway_ip

}
