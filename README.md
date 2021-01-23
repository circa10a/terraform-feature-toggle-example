# terraform feature toggle example <img src="https://i.imgur.com/fAS7XqO.png" height="5%" width="5%" align="left"/>

A repo to demonstrate enabling/disabling of infrastructure features

![alt text](https://media.giphy.com/media/xT5LMWOExnRmXt2vFS/giphy.gif)

## Usage

### Module

```hcl
module "do_load_balanced_nginx" {
  source = "git::https://github.com/circa10a/terraform-feature-toggle-example.git/"
}
```

### Local

Clone the repository then install modules and provider

```bash
git clone https://github.com/circa10a/terraform-feature-toggle-example.git/
cd terraform-feature-toggle-example/
terraform init
```

## Config

Configuration has defaults in `default.auto.tfvars`

## Inputs

| Variable                  | Type     | Default              |
|---------------------------|----------|----------------------|
| `instance_count`          | `number` | `1`                  |
| `load_balancing_enabled`  | `bool`   | `false`              |

## Outputs

| Outputs                   | Type           |
|---------------------------|----------------|
| `droplet_ips`             | `list(string)` |
| `load_balancer_ip`        | `string`       |
