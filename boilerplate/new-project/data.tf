data "digitalocean_vpc" "this" {
  name = format("vpc-%s-%s", local.env, local.region)
}
