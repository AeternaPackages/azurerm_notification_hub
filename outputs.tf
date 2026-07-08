# --- azurerm_notification_hub ---
output "notification_hubs" {
  description = "All notification_hub resources"
  value       = module.notification_hubs.notification_hubs
  sensitive   = true
}
output "notification_hubs_apns_credential" {
  description = "List of apns_credential values across all notification_hubs"
  value       = [for k, v in module.notification_hubs.notification_hubs : v.apns_credential]
  sensitive   = true
}
output "notification_hubs_browser_credential" {
  description = "List of browser_credential values across all notification_hubs"
  value       = [for k, v in module.notification_hubs.notification_hubs : v.browser_credential]
  sensitive   = true
}
output "notification_hubs_gcm_credential" {
  description = "List of gcm_credential values across all notification_hubs"
  value       = [for k, v in module.notification_hubs.notification_hubs : v.gcm_credential]
  sensitive   = true
}
output "notification_hubs_location" {
  description = "List of location values across all notification_hubs"
  value       = [for k, v in module.notification_hubs.notification_hubs : v.location]
}
output "notification_hubs_name" {
  description = "List of name values across all notification_hubs"
  value       = [for k, v in module.notification_hubs.notification_hubs : v.name]
}
output "notification_hubs_namespace_name" {
  description = "List of namespace_name values across all notification_hubs"
  value       = [for k, v in module.notification_hubs.notification_hubs : v.namespace_name]
}
output "notification_hubs_resource_group_name" {
  description = "List of resource_group_name values across all notification_hubs"
  value       = [for k, v in module.notification_hubs.notification_hubs : v.resource_group_name]
}
output "notification_hubs_tags" {
  description = "List of tags values across all notification_hubs"
  value       = [for k, v in module.notification_hubs.notification_hubs : v.tags]
}


# --- azurerm_notification_hub_authorization_rule ---
output "notification_hub_authorization_rules" {
  description = "All notification_hub_authorization_rule resources"
  value       = module.notification_hub_authorization_rules.notification_hub_authorization_rules
  sensitive   = true
}
output "notification_hub_authorization_rules_listen" {
  description = "List of listen values across all notification_hub_authorization_rules"
  value       = [for k, v in module.notification_hub_authorization_rules.notification_hub_authorization_rules : v.listen]
}
output "notification_hub_authorization_rules_manage" {
  description = "List of manage values across all notification_hub_authorization_rules"
  value       = [for k, v in module.notification_hub_authorization_rules.notification_hub_authorization_rules : v.manage]
}
output "notification_hub_authorization_rules_name" {
  description = "List of name values across all notification_hub_authorization_rules"
  value       = [for k, v in module.notification_hub_authorization_rules.notification_hub_authorization_rules : v.name]
}
output "notification_hub_authorization_rules_namespace_name" {
  description = "List of namespace_name values across all notification_hub_authorization_rules"
  value       = [for k, v in module.notification_hub_authorization_rules.notification_hub_authorization_rules : v.namespace_name]
}
output "notification_hub_authorization_rules_notification_hub_name" {
  description = "List of notification_hub_name values across all notification_hub_authorization_rules"
  value       = [for k, v in module.notification_hub_authorization_rules.notification_hub_authorization_rules : v.notification_hub_name]
}
output "notification_hub_authorization_rules_primary_access_key" {
  description = "List of primary_access_key values across all notification_hub_authorization_rules"
  value       = [for k, v in module.notification_hub_authorization_rules.notification_hub_authorization_rules : v.primary_access_key]
  sensitive   = true
}
output "notification_hub_authorization_rules_primary_connection_string" {
  description = "List of primary_connection_string values across all notification_hub_authorization_rules"
  value       = [for k, v in module.notification_hub_authorization_rules.notification_hub_authorization_rules : v.primary_connection_string]
  sensitive   = true
}
output "notification_hub_authorization_rules_resource_group_name" {
  description = "List of resource_group_name values across all notification_hub_authorization_rules"
  value       = [for k, v in module.notification_hub_authorization_rules.notification_hub_authorization_rules : v.resource_group_name]
}
output "notification_hub_authorization_rules_secondary_access_key" {
  description = "List of secondary_access_key values across all notification_hub_authorization_rules"
  value       = [for k, v in module.notification_hub_authorization_rules.notification_hub_authorization_rules : v.secondary_access_key]
  sensitive   = true
}
output "notification_hub_authorization_rules_secondary_connection_string" {
  description = "List of secondary_connection_string values across all notification_hub_authorization_rules"
  value       = [for k, v in module.notification_hub_authorization_rules.notification_hub_authorization_rules : v.secondary_connection_string]
  sensitive   = true
}
output "notification_hub_authorization_rules_send" {
  description = "List of send values across all notification_hub_authorization_rules"
  value       = [for k, v in module.notification_hub_authorization_rules.notification_hub_authorization_rules : v.send]
}



