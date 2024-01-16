data "azurerm_billing_enrollment_account_scope" "subscription" {
  billing_account_name    = var.billing_account_name
  enrollment_account_name = var.enrollment_account_name
}

resource "azurerm_subscription" "subscription_create" {
  subscription_name = var.subscription_name
  billing_scope_id  = data.azurerm_billing_enrollment_account_scope.subscription.id
}

resource "azurerm_management_group_subscription_association" "subscription_associate" {
  management_group_id =  "/providers/Microsoft.Management/managementGroups/${var.subscription_management_group_id_name}"
   subscription_id     =  "/subscriptions/${azurerm_subscription.subscription_create.id}"
}