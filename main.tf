data "azurerm_billing_enrollment_account_scope" "billing_enrollment_account" {
  for_each = var.subscriptions

  billing_account_name    = each.value.billing_account_name
  enrollment_account_name = each.value.enrollment_account_name
}

resource "azurerm_subscription" "subscription_create" {
  for_each = var.subscriptions

  subscription_name = each.key
  billing_scope_id  = data.azurerm_billing_enrollment_account_scope.billing_enrollment_account[each.key].id
  tags = each.value.tags
}

resource "azurerm_management_group_subscription_association" "subscription_associate" {
  for_each = var.subscriptions

  management_group_id =  "/providers/Microsoft.Management/managementGroups/${each.value.management_group_name}"
  subscription_id     =  "/subscriptions/${azurerm_subscription.subscription_create[each.key].id}"
}
