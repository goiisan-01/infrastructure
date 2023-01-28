resource "aws_instance" "main" {
  ami           = "ami-0b5eea76982371e91" 
  instance_type = var.instance_type
  iam_instance_profile = aws_iam_instance_profile.profile.name
  key_name = "new-key"
  vpc_security_group_ids = [aws_security_group.main.id]

  tags = {
    Name = var.ec2_name
  }
}