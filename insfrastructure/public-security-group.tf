resource "azurerm_network_security_group" "grupo-seguridad-publico" {
  name                = var.nombre-grupo-seguridad
  location            = "eastUS"
  resource_group_name = var.RESOURCE_GROUP_NAME
}

resource "azurerm_network_security_rule" "regla-grupo-seguridad-publicco" {
  name                        = "SSH"
  priority                    = 1001
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "22"
  destination_address_prefix  = "*"
  source_address_prefix       = "*"
  resource_group_name         = var.RESOURCE_GROUP_NAME
  network_security_group_name = azurerm_network_security_group.grupo-seguridad-publico.name

}

resource "azurerm_network_security_rule" "regla-http" {
  name                        = "HTTP"
  priority                    = 1002
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "80"
  destination_address_prefix  = "*"
  source_address_prefix       = "*"
  resource_group_name         = var.RESOURCE_GROUP_NAME
  network_security_group_name = azurerm_network_security_group.grupo-seguridad-publico.name

}
