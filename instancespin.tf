provider "aws" {
region = "us-east-1"
}
resource "aws_instance" "web" {
  ami           = "ami-0ab4d1e9cf9a1215a"
  instance_type = "t2.micro"
  key_name= "donsamosa"

  tags = {
    Name = "Terraform"
  }
}

output "instance_ip_addr" {
  value = "aws_instance.web.private_ip"
}
