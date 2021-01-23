terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "2.4.0"
    }
  }
}

# Will find DIGITALOCEAN_TOKEN environment variable
provider "digitalocean" {}
