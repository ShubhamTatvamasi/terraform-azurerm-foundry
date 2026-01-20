resource "azurerm_ai_foundry" "foundry" {
  name                = "${var.prefix}-foundry"
  location            = azurerm_ai_services.aiservices.location
  resource_group_name = azurerm_resource_group.rg.name
  storage_account_id  = azurerm_storage_account.sa.id
  key_vault_id        = azurerm_key_vault.kv.id

  identity {
    type = "SystemAssigned"
  }
  tags = {
    environment = "ai-foundry"
  }
}
