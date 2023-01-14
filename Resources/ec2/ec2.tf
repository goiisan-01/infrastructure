resource "aws_instance" "main" {
  ami           = "ami-0b5eea76982371e91" 
  instance_type = var.instance_type
  iam_instance_profile = aws_iam_instance_profile.profile.arn
  key_name = "new-key"
  #security_groups = [aws_security_group.main.id]

  tags = {
    Name = var.ec2_name
  }
}