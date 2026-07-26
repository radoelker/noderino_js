output "resource_group_name" {
  value = azurerm_resource_group.main.name
}

output "app_service_name" {
  value = azurerm_linux_web_app.main.name
}

output "default_hostname" {
  value = azurerm_linux_web_app.main.default_hostname
}

output "azure_client_id" {
  description = "-> GitHub Secret AZURE_CLIENT_ID"
  value       = azuread_application.github_deploy.client_id
}

output "azure_tenant_id" {
  description = "-> GitHub Secret AZURE_TENANT_ID"
  value       = data.azurerm_client_config.current.tenant_id
}

output "azure_subscription_id" {
  description = "-> GitHub Secret AZURE_SUBSCRIPTION_ID"
  value       = data.azurerm_client_config.current.subscription_id
}
