module "subscription" {
  source        = "app.terraform.io/edj_demo_org_000/subscription/azurerm"
  version       = "1.0.12"
  subscriptions = var.subscription_subscriptions
}
