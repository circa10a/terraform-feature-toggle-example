module "web_servers" {
  source                 = "./modules/web_servers"
  instance_count         = var.instance_count
  load_balancing_enabled = var.load_balancing_enabled
}
