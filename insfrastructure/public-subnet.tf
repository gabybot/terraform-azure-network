resource "azurerm_subnet" "subnet-publica" {
    name = "${var.NOMBRE_PUBLIC_SUBNET}"
    resource_group_name = "${var.RESOURCE_GROUP_NAME}"
    virtual_network_name = "${var.VN_NAME}"
    address_prefixes = ["172.30.0.0/18"]
  
}