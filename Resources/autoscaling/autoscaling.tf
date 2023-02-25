resource "aws_launch_template" "main" {
  name_prefix   = var.ec2_name
  image_id      = "ami-0b5eea76982371e91" 
  instance_type = var.instance_type
}

resource "aws_autoscaling_group" "main" {
  availability_zones = ["us-east-1a"]
  desired_capacity   = 3
  max_size           = 10
  min_size           = 1
  load_balancers     = [aws_lb.main.id]

  launch_template {
    id      = aws_launch_template.main.id
    version = "$Latest"
  }
}


