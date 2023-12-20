output "environments" {
  description = "Environment settings"
  value       = local.environments
}

output "settings" {
  value = lookup(local.environments, local.environment_slug)
}

output "web_project" {
  value = local.web_project
}

# The environment short name e.g. dev, stage, prod 
output "environment_slug" {
  value = local.environment_slug
}

# alias of environment_slug
output "env" {
  value = local.environment_slug
}

output "region" {
  value = local.region
}
