resource "aws_instance" "web" {
  ami           = "ami-0b5eea76982371e91"
  instance_type = var.instance_type

  tags = {
    Name = var.ec2_name
  }
}