resource "digitalocean_droplet" "web" {
  count     = var.instance_count
  name      = "web-${count.index}"
  size      = var.instance_size
  image     = var.image
  region    = var.region
  user_data = var.user_data == "" ? file("${path.module}/files/cloud-init.yaml") : var.user_data
}

resource "digitalocean_loadbalancer" "public" {
  count  = var.load_balancing_enabled ? 1 : 0
  name   = "web-servers-loadbalancer"
  region = var.region

  forwarding_rule {
    entry_port     = 80
    entry_protocol = "http"

    target_port     = 80
    target_protocol = "http"
  }

  healthcheck {
    port     = 22
    protocol = "tcp"
  }

  droplet_ids = digitalocean_droplet.web.*.id
}
