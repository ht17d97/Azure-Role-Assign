data "azurerm_subscription" "primary" {
}

data "azurerm_client_config" "example" {
}

data "azuread_user" "example_user" {
  user_principal_name = "John@himanshutariyal2025outlook.onmicrosoft.com"
}

resource "azurerm_role_assignment" "example" {
  scope                = data.azurerm_subscription.primary.id
  role_definition_name = "Contributor"
  principal_id         = data.azurerm_client_config.example.object_id
}
