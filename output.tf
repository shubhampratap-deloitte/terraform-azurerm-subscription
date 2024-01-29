output "subscription_details" {
  value = { for s in azurerm_subscription.subscription_create : s.name => s }
  description = "The attributes of the azurerm_subscription resource for that subscription, such as its ID, name, tags, etc."
}

output "subscription_association_details" {
  value = { for a in azurerm_management_group_subscription_association.subscription_associate : a.subscription_id => a }
  description = "The attributes of the azurerm_management_group_subscription_association resource for that association, such as the management group ID and the subscription ID"
}
