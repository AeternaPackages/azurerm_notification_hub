locals {
  notification_hubs = { for k1, v1 in var.notification_hubs : k1 => { apns_credential = v1.apns_credential, browser_credential = v1.browser_credential, gcm_credential = v1.gcm_credential, location = v1.location, name = v1.name, namespace_name = v1.namespace_name, resource_group_name = v1.resource_group_name, tags = v1.tags } }

  notification_hub_authorization_rules = merge([
    for k1, v1 in var.notification_hubs : {
      for k2, v2 in coalesce(v1.notification_hub_authorization_rules, {}) :
      "${k1}/${k2}" => merge(v2, {
        notification_hub_name = module.notification_hubs.notification_hubs_name["${k1}"]
      })
    }
  ]...)
}

module "notification_hubs" {
  source            = "git::https://github.com/AeternaModules/azurerm_notification_hub.git?ref=v4.80.0"
  notification_hubs = local.notification_hubs
}

module "notification_hub_authorization_rules" {
  source                               = "git::https://github.com/AeternaModules/azurerm_notification_hub_authorization_rule.git?ref=v4.80.0"
  notification_hub_authorization_rules = local.notification_hub_authorization_rules
  depends_on                           = [module.notification_hubs]
}

