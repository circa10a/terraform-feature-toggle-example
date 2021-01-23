output "droplet_ips" {
  value = digitalocean_droplet.web.*.ipv4_address
}

output "load_balancer_ip" {
  value = var.load_balancing_enabled ? digitalocean_loadbalancer.public.0.ip : ""
}
