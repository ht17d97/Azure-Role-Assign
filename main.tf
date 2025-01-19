resource "azurerm_resource_group" "rg" {
  name     = "example"
  location = "South India"
}
resource "azuread_user" "example" {
  user_principal_name = "John.dee@himanshutariyal2025outlook.onmicrosoft.com"
  display_name        = "John. Doe"
  mail_nickname       = "jdoe"
  password            = "SecretP@sswd99!"
}
resource "azurerm_role_assignment" "reader" {
  scope                = azurerm_resource_group.rg.id
  role_definition_name = "Reader"
  principal_id         = azuread_user.example.object_id
  
}
