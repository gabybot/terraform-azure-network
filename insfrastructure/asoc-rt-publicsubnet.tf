resource "azurerm_subnet_route_table_association" "asoc-rt-subred-publica" {
    subnet_id = azurerm_subnet.subnet-publica.id
    route_table_id = azurerm_route_table.tabla-ruta-publica.id
  
}