# web servers

A terraform module to create digitaloceean droplets with nginx installed behind a loadbalancer

## Usage

```hcl
module "do_load_balanced_nginx" {
  source = "git::https://github.com/circa10a/terraform-feature-toggle-example.git//modules/web_servers"
}
```

## Inputs

| Variable                  | Type     | Default              |
|---------------------------|----------|----------------------|
| `instance_count`          | `number` | `1`                  |
| `load_balancing_enabled`  | `bool`   | `false`              |
| `instance_size`           | `string` | `"s-1vcpu-1gb"`      |
| `image`                   | `string` | `"ubuntu-20-04-x64"` |
| `region`                  | `string` | `"nyc3"`             |
| `user_data`               | `string` | `""`                 |

## Outputs

| Outputs                   | Type           |
|---------------------------|----------------|
| `droplet_ips`             | `list(string)` |
| `load_balancer_ip`        | `string`       |
