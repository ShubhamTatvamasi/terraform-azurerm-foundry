resource "azurerm_ai_foundry_project" "project" {
  name               = "${var.prefix}-project"
  location           = azurerm_ai_foundry.foundry.location
  ai_services_hub_id = azurerm_ai_foundry.foundry.id
  identity {
    type = "SystemAssigned"
  }
}
