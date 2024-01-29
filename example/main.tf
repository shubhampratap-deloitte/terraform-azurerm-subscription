module "subscription" {
  source        = "app.terraform.io/edj_demo_org_000/subscription/azurerm"
  version       = "x.x.x"
  subscriptions = var.subscription_subscriptions
}
