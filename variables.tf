variable "notification_hubs" {
  description = <<EOT
Map of notification_hubs, attributes below
Required:
    - location
    - name
    - namespace_name
    - resource_group_name
Optional:
    - tags
    - apns_credential (block)
    - browser_credential (block)
    - gcm_credential (block)
Nested notification_hub_authorization_rules (azurerm_notification_hub_authorization_rule):
    Required:
        - name
        - namespace_name
        - resource_group_name
    Optional:
        - listen
        - manage
        - send
EOT

  type = map(object({
    location            = string
    name                = string
    namespace_name      = string
    resource_group_name = string
    tags                = optional(map(string))
    apns_credential = optional(object({
      application_mode = string
      bundle_id        = string
      key_id           = string
      team_id          = string
      token            = string
    }))
    browser_credential = optional(object({
      subject           = string
      vapid_private_key = string
      vapid_public_key  = string
    }))
    gcm_credential = optional(object({
      api_key = string
    }))
    notification_hub_authorization_rules = optional(map(object({
      name                = string
      namespace_name      = string
      resource_group_name = string
      listen              = optional(bool) # Default: false
      manage              = optional(bool) # Default: false
      send                = optional(bool) # Default: false
    })))
  }))

  validation {
    condition = alltrue(concat(
      [for kk in keys(var.notification_hubs) : !strcontains(kk, "/")],
      flatten([for k0, v0 in var.notification_hubs : [for kk in keys(coalesce(v0.notification_hub_authorization_rules, {})) : !strcontains(kk, "/")]])
    ))
    error_message = "Map keys in this package must not contain '/': it is used internally as a nesting-key separator, so a key containing it can silently collide two different nested entries into one. Rename the offending key(s)."
  }
}
