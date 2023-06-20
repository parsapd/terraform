provider "aws" {
  region = var.aws_region
}


resource "aws_instance" "myFirstInstance" {
  subnet_id   = "subnet-015222d16cb160b2e"
  ami           = var.ami_id
  key_name = var.key_name
  instance_type = var.instance_type
  vpc_security_group_ids = [var.security_group]
  tags= {
    Name = var.tag_name
  }
}

