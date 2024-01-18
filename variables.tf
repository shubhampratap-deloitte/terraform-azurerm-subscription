variable "subscription_management_group_id_name" {
  type        = string
  description = "(Required) The ID of the Management Group to associate the Subscription with. *Changing this forces a new Management to be created.*"

}
variable "subscription_name" {
  type        = string
  description = "(Required) The Name of the Subscription. This is the Display Name in the portal."
}
variable "enrollment_account_name" {
  type        = string
  description = "Details of the Enrollment Account Name"

}
variable "billing_account_name" {
  type        = string
  description = "(Optional) The Azure Billing Scope ID. Can be a Microsoft Customer Account Billing Scope ID, a Microsoft Partner Account Billing Scope ID or an Enrollment Billing Scope ID."

}
