terraform {
  cloud {
    organization = "digital-ocean" # @TODO Check this is correct
    workspaces {
      tags = [""] # @TODO Add TF Cloud workspace
    }
  }
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
  required_version = ">= 1.3.0"
}

provider "digitalocean" {
  token = var.do_token
}
