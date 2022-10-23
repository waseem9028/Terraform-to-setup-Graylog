#Elasticsearch
resource "docker_image" "elasticsearch" {
  name = "docker.elastic.co/elasticsearch/elasticsearch-oss:6.8.5"
  keep_locally = true
} 

resource "docker_container" "elasticsearch" {
  count = 1
  name  = "elasticsearch"
  env = [
  "ES_JAVA_OPTS=-Xms512m -Xmx512m",
  "discovery.type=single-node",
  "http.host=0.0.0.0"
  ]
  restart = "always"
  image = "${docker_image.elasticsearch.latest}"
}