resource "aws_instance" "main" {
  ami           = "ami-0b5eea76982371e91" 
  instance_type = var.instance_type
  iam_instance_profile = aws_iam_instance_profile.profile.name
  key_name = "new-key"
  user_data = filebase64("${path.module}/user_data.sh")
  subnet_id = var.subnet_id
  vpc_security_group_ids = [aws_security_group.main.id]
  associate_public_ip_address = var.associate_public_ip

  tags = {
    Name = var.ec2_name
  }
}

