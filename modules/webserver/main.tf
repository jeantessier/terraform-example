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
  name  = "tutorial_${var.cluster_name}"
  ports {
    internal = 80
  }
}
