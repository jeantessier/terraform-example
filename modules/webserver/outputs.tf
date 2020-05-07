output "container_name" {
  value = docker_container.nginx.name
  description = "The name of the Docker container"
}

output "port_number" {
  value = docker_container.nginx.ports[0].external
  description = "The port number assigned to the Docker container"
}
