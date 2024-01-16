data "azurerm_billing_enrollment_account_scope" "subscription" {
  billing_account_name    = "1234567890"
  enrollment_account_name = "0123456"
}

resource "azurerm_subscription" "test" {
  subscription_name = "My Example EA Subscription"
  billing_scope_id  = data.azurerm_billing_enrollment_account_scope.subscription.id
}

resource "azurerm_management_group_subscription_association" "subscription_associate" {
  management_group_id =  "/providers/Microsoft.Management/managementGroups/${var.subscription_management_group_id_name}"
#  subscription_id     =  "/subscriptions/${var.associate_subscriptions_id_name}"
  subscription_id     =  "/subscriptions/${azurerm_subscription.test.id}"
}