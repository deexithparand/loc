# fed from tfvars
variable "environment" {
  description = "environment where the infrastructure is provisioned"
  type = string
}

variable "distro_config_set" {
  description = "config of distros with which docker images will be created"
  type = map(object({
    image_name = string
    image_tag = string
    keep_locally = bool

    container_instance_count = number
    external_port_number     = number
    internal_port_number     = number
  }))
}
