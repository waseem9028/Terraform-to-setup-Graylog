terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "2.15.0"
    }
  }
}
provider "docker" {
  #host = "tcp://docker:2375/"
  #host = "tcp://127.0.0.1:2375/"
  host = "unix:///var/run/docker.sock"
}