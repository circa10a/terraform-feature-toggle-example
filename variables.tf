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
