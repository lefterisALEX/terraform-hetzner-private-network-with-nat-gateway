## Usage
To provision the provided configurations you need to execute:
```
terraform init
terraform plan
terraform apply --auto-approve
```

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_hcloud"></a> [hcloud](#requirement\_hcloud) | 1.49.1 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_hcloud_networking"></a> [hcloud\_networking](#module\_hcloud\_networking) | ../.. | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|To provision the provided configurations you need to execute:
| <a name="input_hcloud_token"></a> [hcloud\_token](#input\_hcloud\_token) | The Hetzner Cloud API token. | `string` | n/a | yes |
| <a name="input_tailscale_auth_key"></a> [tailscale\_auth\_key](#input\_tailscale\_auth\_key) | The authentication key for Tailscale. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_nat_gateway_ip"></a> [nat\_gateway\_ip](#output\_nat\_gateway\_ip) | n/a |
