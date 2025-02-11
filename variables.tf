variable "deploy_nat_gateway" {
  description = "Set to true to deploy the NAT gateway, false to skip it"
  type        = bool
  default     = false
}
variable "network_name" {
  description = "Name of the private network."
  type        = string
  default     = "private"
}
variable "network_zone" {
  description = "Name of the Hetzner network zone"
  type        = string
  default     = "eu-central"
}

variable "location" {
  description = "Name of the Hetzner datacenter location"
  type        = string
  default     = "nbg1"
}

variable "private_subnet" {
  description = "The IP range for the private subnet."
  type        = string
  default     = "192.168.100.0/24"
}

variable "ssh_keys" {
  description = "List of SSH keys to associate with the servers."
  type        = list(string)
  default     = []
}

variable "nat_gateway_ip" {
  description = "The static IP to assign to the NAT gateway."
  type        = string
  default     = "192.168.100.2"
}

variable "nat_gateway_server_type" {
  description = "The server type of the NAT gateway."
  type        = string
  default     = "cx22"
}

variable "nat_gateway_name" {
  description = "Name of the NAT gateway server."
  type        = string
  default     = "nat-gateway"
}
