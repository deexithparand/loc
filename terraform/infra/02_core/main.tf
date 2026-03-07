# pulls the image - without module reference
# resource "docker_image" "alpine" {
#   name = "alpine:latest"
# }

# pull image from docker image module
module "docker_images" {
  source = "./modules/docker-images"

  // values for each image are mapped as kv pairs and passed
  for_each = {

    alpine = {
      image_name = "alpine"
      image_tag = "latest"
      keep_locally = false
    }

    ubuntu = {
      image_name = "ubuntu"
      image_tag = "latest"
      keep_locally = false
    }

  }

  image_name = each.value.image_name
  image_tag = each.value.image_tag
  keep_locally = each.value.keep_locally
}


# Create a container
# resource "docker_container" "linux_container_01" {
#   image = docker_image.alpine.latest
#   name  = "linux-container-01"
#   ports {
#     internal = 80
#     external = 3000
#   }
#   command = ["tail", "-f", "/dev/null"]
# }