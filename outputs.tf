# --- azurerm_notification_hub ---
output "notification_hubs_id" {
  description = "Map of id values across all notification_hubs, keyed the same as var.notification_hubs"
  value       = module.notification_hubs.notification_hubs_id
}

output "notification_hubs_apns_credential" {
  description = "Map of apns_credential values across all notification_hubs, keyed the same as var.notification_hubs"
  value       = module.notification_hubs.notification_hubs_apns_credential
  sensitive   = true
}

output "notification_hubs_browser_credential" {
  description = "Map of browser_credential values across all notification_hubs, keyed the same as var.notification_hubs"
  value       = module.notification_hubs.notification_hubs_browser_credential
  sensitive   = true
}

output "notification_hubs_gcm_credential" {
  description = "Map of gcm_credential values across all notification_hubs, keyed the same as var.notification_hubs"
  value       = module.notification_hubs.notification_hubs_gcm_credential
  sensitive   = true
}

output "notification_hubs_location" {
  description = "Map of location values across all notification_hubs, keyed the same as var.notification_hubs"
  value       = module.notification_hubs.notification_hubs_location
}

output "notification_hubs_name" {
  description = "Map of name values across all notification_hubs, keyed the same as var.notification_hubs"
  value       = module.notification_hubs.notification_hubs_name
}

output "notification_hubs_namespace_name" {
  description = "Map of namespace_name values across all notification_hubs, keyed the same as var.notification_hubs"
  value       = module.notification_hubs.notification_hubs_namespace_name
}

output "notification_hubs_resource_group_name" {
  description = "Map of resource_group_name values across all notification_hubs, keyed the same as var.notification_hubs"
  value       = module.notification_hubs.notification_hubs_resource_group_name
}

output "notification_hubs_tags" {
  description = "Map of tags values across all notification_hubs, keyed the same as var.notification_hubs"
  value       = module.notification_hubs.notification_hubs_tags
}

# --- azurerm_notification_hub_authorization_rule ---
output "notification_hub_authorization_rules_id" {
  description = "Map of id values across all notification_hub_authorization_rules, keyed the same as var.notification_hub_authorization_rules"
  value       = module.notification_hub_authorization_rules.notification_hub_authorization_rules_id
}

output "notification_hub_authorization_rules_listen" {
  description = "Map of listen values across all notification_hub_authorization_rules, keyed the same as var.notification_hub_authorization_rules"
  value       = module.notification_hub_authorization_rules.notification_hub_authorization_rules_listen
}

output "notification_hub_authorization_rules_manage" {
  description = "Map of manage values across all notification_hub_authorization_rules, keyed the same as var.notification_hub_authorization_rules"
  value       = module.notification_hub_authorization_rules.notification_hub_authorization_rules_manage
}

output "notification_hub_authorization_rules_name" {
  description = "Map of name values across all notification_hub_authorization_rules, keyed the same as var.notification_hub_authorization_rules"
  value       = module.notification_hub_authorization_rules.notification_hub_authorization_rules_name
}

output "notification_hub_authorization_rules_namespace_name" {
  description = "Map of namespace_name values across all notification_hub_authorization_rules, keyed the same as var.notification_hub_authorization_rules"
  value       = module.notification_hub_authorization_rules.notification_hub_authorization_rules_namespace_name
}

output "notification_hub_authorization_rules_notification_hub_name" {
  description = "Map of notification_hub_name values across all notification_hub_authorization_rules, keyed the same as var.notification_hub_authorization_rules"
  value       = module.notification_hub_authorization_rules.notification_hub_authorization_rules_notification_hub_name
}

output "notification_hub_authorization_rules_primary_access_key" {
  description = "Map of primary_access_key values across all notification_hub_authorization_rules, keyed the same as var.notification_hub_authorization_rules"
  value       = module.notification_hub_authorization_rules.notification_hub_authorization_rules_primary_access_key
  sensitive   = true
}

output "notification_hub_authorization_rules_primary_connection_string" {
  description = "Map of primary_connection_string values across all notification_hub_authorization_rules, keyed the same as var.notification_hub_authorization_rules"
  value       = module.notification_hub_authorization_rules.notification_hub_authorization_rules_primary_connection_string
  sensitive   = true
}

output "notification_hub_authorization_rules_resource_group_name" {
  description = "Map of resource_group_name values across all notification_hub_authorization_rules, keyed the same as var.notification_hub_authorization_rules"
  value       = module.notification_hub_authorization_rules.notification_hub_authorization_rules_resource_group_name
}

output "notification_hub_authorization_rules_secondary_access_key" {
  description = "Map of secondary_access_key values across all notification_hub_authorization_rules, keyed the same as var.notification_hub_authorization_rules"
  value       = module.notification_hub_authorization_rules.notification_hub_authorization_rules_secondary_access_key
  sensitive   = true
}

output "notification_hub_authorization_rules_secondary_connection_string" {
  description = "Map of secondary_connection_string values across all notification_hub_authorization_rules, keyed the same as var.notification_hub_authorization_rules"
  value       = module.notification_hub_authorization_rules.notification_hub_authorization_rules_secondary_connection_string
  sensitive   = true
}

output "notification_hub_authorization_rules_send" {
  description = "Map of send values across all notification_hub_authorization_rules, keyed the same as var.notification_hub_authorization_rules"
  value       = module.notification_hub_authorization_rules.notification_hub_authorization_rules_send
}


