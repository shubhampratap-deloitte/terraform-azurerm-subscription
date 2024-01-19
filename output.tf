output "subscription_details" {
  value = { for s in azurerm_subscription.subscription_create : s.name => s }
  description = "The details of the created subscriptions"
}

output "subscription_association_details" {
  value = { for a in azurerm_management_group_subscription_association.subscription_associate : a.subscription_id => a }
  description = "The details of the subscription associations with management groups"
}
