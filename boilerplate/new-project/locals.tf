locals {
  env      = module.do.environment_slug
  region   = lookup(module.do.settings, "region")
  ip_range = lookup(module.do.settings, "ip_range")
}
