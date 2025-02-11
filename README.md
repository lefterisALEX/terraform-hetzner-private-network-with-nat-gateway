## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_hcloud"></a> [hcloud](#requirement\_hcloud) | ~> 1.45 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_hcloud"></a> [hcloud](#provider\_hcloud) | ~> 1.45 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [hcloud_firewall.nat_gateway](https://registry.terraform.io/providers/hetznercloud/hcloud/latest/docs/resources/firewall) | resource |
| [hcloud_network.private](https://registry.terraform.io/providers/hetznercloud/hcloud/latest/docs/resources/network) | resource |
| [hcloud_network_route.default](https://registry.terraform.io/providers/hetznercloud/hcloud/latest/docs/resources/network_route) | resource |
| [hcloud_network_subnet.private](https://registry.terraform.io/providers/hetznercloud/hcloud/latest/docs/resources/network_subnet) | resource |
| [hcloud_server.nat_gateway](https://registry.terraform.io/providers/hetznercloud/hcloud/latest/docs/resources/server) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_location"></a> [location](#input\_location) | Name of the Hetzner datacenter location | `string` | `"nbg1"` | no |
| <a name="input_nat_gateway_ip"></a> [nat\_gateway\_ip](#input\_nat\_gateway\_ip) | The static IP to assign to the NAT gateway. | `string` | `"192.168.100.2"` | no |
| <a name="input_nat_gateway_name"></a> [nat\_gateway\_name](#input\_nat\_gateway\_name) | Name of the NAT gateway server. | `string` | `"nat-gateway"` | no |
| <a name="input_nat_gateway_server_type"></a> [nat\_gateway\_server\_type](#input\_nat\_gateway\_server\_type) | The server type of the NAT gateway. | `string` | `"cx22"` | no |
| <a name="input_network_name"></a> [network\_name](#input\_network\_name) | Name of the private network. | `string` | `"private"` | no |
| <a name="input_network_zone"></a> [network\_zone](#input\_network\_zone) | Name of the Hetzner network zone | `string` | `"eu-central"` | no |
| <a name="input_private_subnet"></a> [private\_subnet](#input\_private\_subnet) | The IP range for the private subnet. | `string` | `"192.168.100.0/24"` | no |
| <a name="input_ssh_keys"></a> [ssh\_keys](#input\_ssh\_keys) | List of SSH keys to associate with the servers. | `list(string)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_nat_gateway_ip"></a> [nat\_gateway\_ip](#output\_nat\_gateway\_ip) | n/a |
| <a name="output_private_network_id"></a> [private\_network\_id](#output\_private\_network\_id) | n/a |
