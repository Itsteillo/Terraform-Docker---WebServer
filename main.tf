terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.24.0"
    }
  }

  required_version = ">= 1.6.2"
}

provider "aws" {
  region  = "us-east-1"
}

data "local_file" "html_file" {
  filename = "index.html"
  
}

resource "aws_instance" "web_server" {
  ami           = "ami-queVallasAUsar"
  instance_type = "t2.micro"
  key_name = "nombredelpardellaves"
  vpc_security_group_ids = ["idDelGrupoDeSeguridad"]
  associate_public_ip_address = true
  
  user_data = <<-EOF
                #!/bin/bash
                sudo apt-get update -y
                sudo apt-get install apache2 -y
                systemctl enable apache2
                systemctl start apache2
                echo "${data.local_file.html_file.content}" > /var/www/html/index.html
                EOF

  tags = {
    Name = "ServidorWeb"
  }
  
}
