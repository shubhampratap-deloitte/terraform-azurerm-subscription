variable "subscription_management_group_id_name" {
  type = string
  description = "Id of the Management Group You want the Subscription to be Associated"
 
} 

variable "associate_subscriptions_id_name" {
   type    = string
   description ="Provide the Subscription ID You want to Associate"
   
 }

 variable "client_id" {
  type        = string
  default     = null
}

variable "client_secret" {
  type        = string
  default     = null
}

variable "tenant_id" {
  type        = string
  default     = null
}

variable "subscription_id" {
  type        = string
  default     = null
}

