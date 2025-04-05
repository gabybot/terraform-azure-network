module "infraestructure" {
  source = "./insfrastructure"
  NOMBRE_PUBLIC_SUBNET = var.NOMBRE_PUBLIC_SUBNET
  RESOURCE_GROUP_NAME = var.RESOURCE_GROUP_NAME
  NOMBRE_RT_PUBLICA = var.NOMBRE_RT_PUBLICA
  parametros-rt-publica = var.parametros-rt-publica
  VN_NAME = var.VN_NAME
  nombre-grupo-seguridad = var.nombre-grupo-seguridad

}
