variable "NOMBRE_PUBLIC_SUBNET" {}
variable "RESOURCE_GROUP_NAME" {}
variable "VN_NAME" {}
variable "NOMBRE_RT_PUBLICA" {}
variable "parametros-rt-publica" {
  description = "parametros para tabla de ruta publica"
  type        = map(string)
}
variable "nombre-grupo-seguridad" {}
