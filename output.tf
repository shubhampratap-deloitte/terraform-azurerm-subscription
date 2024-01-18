output "billing_enrollment_account_scope_id" {
  description = "ID of the billing enrollment account scope."
  value       = data.azurerm_billing_enrollment_account_scope.subscription.id
}
output "created_subscription_id" {
  description = "ID of the newly created Azure subscription."
  value       = azurerm_subscription.subscription_create.id
}
output "management_group_subscription_association_id" {
  description = "ID of the management group subscription association."
  value       = azurerm_management_group_subscription_association.subscription_associate.id
}