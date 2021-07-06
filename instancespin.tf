resource "aws_instance" "web" {
  ami           = ami-0ab4d1e9cf9a1215a
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform"
  }
}