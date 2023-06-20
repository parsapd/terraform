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
  root_block_device {
    volume_size           = var.vm_root_volume_size
    volume_type           = var.vm_root_volume_type
    delete_on_termination = true
    encrypted             = true
  }
}

