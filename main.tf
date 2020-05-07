variable "server_port" {
  description = "The port the server will use for HTTP requests"
  type        = number
  default     = 0
}

data "docker_registry_image" "nginx" {
  name = "nginx:latest"
}

resource "docker_image" "nginx" {
  name          = data.docker_registry_image.nginx.name
  keep_locally  = true
  pull_triggers = [data.docker_registry_image.nginx.sha256_digest]
}

resource "docker_container" "nginx" {
  image = docker_image.nginx.latest
  name  = "tutorial_${terraform.workspace}"
  ports {
    internal = 80
//    external = var.server_port
  }
}

output "container_name" {
  value = docker_container.nginx.name
  description = "The name of the Docker container"
}

output "port_number" {
  value = docker_container.nginx.ports[0].external
  description = "The port number assigned to the Docker container"
}
