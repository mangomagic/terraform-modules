locals {
  environments = {
    dev = {
      do_project = "Development"
      region     = "sgp1"
      ip_range   = "10.10.0.0/16"
    }
    stage = {
      do_project = "Staging"
      region     = "nyc1"
      ip_range   = "10.20.0.0/16"
    }
    prod = {
      do_project = "Production"
      region     = "nyc2"
      ip_range   = "10.30.0.0/16"
    }
  }

  web_project      = split("-", var.workspace)[0]
  environment_slug = split("-", var.workspace)[1]
  env              = local.environment_slug # alias for environment_slug
  region           = lookup(local.environments, local.environment_slug).region
}
