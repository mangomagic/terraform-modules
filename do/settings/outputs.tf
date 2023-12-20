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

output "environment_slug" {
  value = local.environment_slug
}
