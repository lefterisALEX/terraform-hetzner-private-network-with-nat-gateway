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
