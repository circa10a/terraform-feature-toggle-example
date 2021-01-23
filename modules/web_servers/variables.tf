variable "instance_count" {
  type        = number
  default     = 1
  description = "Number of web servers"
}

variable "load_balancing_enabled" {
  type        = bool
  default     = false
  description = "Put droplets behind load balancer or not"
}

variable "instance_size" {
  type        = string
  default     = "s-1vcpu-1gb"
  description = "Instance class"
}

variable "image" {
  type        = string
  default     = "ubuntu-20-04-x64"
  description = "Droplet image"
}

variable "region" {
  type        = string
  default     = "nyc3"
  description = "Region to deploy droplets and load balancer"
}

variable "user_data" {
  type        = string
  default     = ""
  description = "User data to bootstrap droplets with, if not provided, cloud-init.yaml will be used to install nginx"
}
