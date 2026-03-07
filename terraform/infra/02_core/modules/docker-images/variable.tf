variable "image_name" {
    description = "name of the image to be pulled"
    type = string
}

variable "image_tag" {
    description = "tag of the respective image that will be pulled"
    type = string
}

variable "keep_locally" {
    description = "if enabled to true, images won't get cleared on terraform destroy"
    type = bool
}

# default inside modules is for constants
variable "platform" {
    description = "for running on my mac ( deexith's mac = constant )"
    type = string
    default = "linux/arm64"
}

# variable "image_label" {
#     description = "labels or tags given to the image"
#     type = map(string)
#     default = {
#       "project" = "fuc"
#       "environment" = "dev"
#     }
# }

