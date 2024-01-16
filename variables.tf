variable "subscription_management_group_id_name" {
  type        = string
  description = "Id of the Management Group You want the Subscription to be Associated"

}
variable "subscription_name" {
  type = string
}
variable "enrollment_account_name" {
  type        = string
  description = "Details of the Enrollment Account Name"

}
variable "billing_account_name" {
  type        = string
  description = "Detail of the Billing Account Name"

}

variable "client_id" {
  type    = string
  default = null
}

variable "client_secret" {
  type    = string
  default = null
}

variable "tenant_id" {
  type    = string
  default = null
}

variable "subscription_id" {
  type    = string
  default = null
}

