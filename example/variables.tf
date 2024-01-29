variable "subscription_subscriptions" {
  description = <<DESCRIPTION
A map of the subscription to create. The key is name of subscription and value is an object with the following attributes:

- `billing_account_name` - the name of the billing account
- `enrollment_account_name` - the name of the enrollment_account_name
- 'subscription_name' - the name of the new subscription
- 'management_group_id_name' = Name of the Management Group you want to associate this with
- `tags` - a map of type string
  type = map(object({
    name     = string
    location = string
    tags     = map(string)
  }))
}
DESCRIPTION
  type = map(object({
    billing_account_name     = string
    enrollment_account_name  = string
    management_group_id_name = string
    tags                     = map(string)

  }))
}

variable "client_id" {}
variable "client_secret" {}
variable "subscription_id" {}
variable "tenant_id" {}