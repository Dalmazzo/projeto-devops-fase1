# terraform/main.tf
provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "servidor_web" {
  ami           = "ami-0c7217cdde317cfec" # Ubuntu 22.04 LTS
  instance_type = "t2.micro"

  tags = {
    Name = "Servidor-Projeto-DevOps"
  }
}