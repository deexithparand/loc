resource "docker_image" "image" {
    name = "${var.image_name}:${var.image_tag}"
    keep_locally = var.keep_locally
    platform = var.platform
}