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
variable "client_id" {
  type        = string
  default     = null
  description = "Azure Client ID (Application Object ID)"
}

variable "client_secret" {
  type        = string
  default     = null
  description = "The Client Secret for the Client ID"
}

variable "tenant_id" {
  type        = string
  default     = null
  description = " The Azure Tenant ID."
}

variable "subscription_id" {
  type        = string
  default     = null
  description = "The Azure Subscription ID."
}

