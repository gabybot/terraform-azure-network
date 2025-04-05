resource "azurerm_route_table" "tabla-ruta-publica" {
  name                = var.NOMBRE_RT_PUBLICA
  location            = "eastus"
  resource_group_name = var.RESOURCE_GROUP_NAME
  route = [{
  name             = var.parametros-rt-publica["nombre"]
  address_prefix = var.parametros-rt-publica["origen"]
  next_hop_type    = var.parametros-rt-publica["tipo"]
  next_hop_in_ip_address = null
}]
}
