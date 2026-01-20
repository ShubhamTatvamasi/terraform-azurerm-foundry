resource "azurerm_ai_services" "aiservices" {
  name                = "${var.prefix}-aiservices"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  sku_name            = "S0"
  tags = {
    environment = "ai-foundry"
  }
  identity {
    type = "SystemAssigned"
  }
}
