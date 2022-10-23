#mongoDB
resource "docker_image" "mongo" {
  name = "mongo:4.2"
  keep_locally = true
} 

resource "docker_container" "mongo" {
  count = 1
  name  = "mongo"
  restart = "always"
  image = "${docker_image.mongo.latest}"
}