output "container_name" {
  value = module.webserver.container_name
  description = "The name of the Docker container"
}

output "port_number" {
  value = module.webserver.port_number
  description = "The port number assigned to the Docker container"
}
