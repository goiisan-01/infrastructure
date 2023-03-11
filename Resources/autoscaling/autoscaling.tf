resource "aws_launch_template" "main" {
  name_prefix   = var.ec2_name
  image_id      = "ami-0b5eea76982371e91" 
  instance_type = var.instance_type
  user_data = filebase64("${path.module}/user_data.sh")
  iam_instance_profile {
    name = aws_iam_instance_profile.profile.name
  }
}

resource "aws_autoscaling_group" "main" {
  availability_zones = ["us-east-1a"]
  desired_capacity   = 2
  max_size           = 10
  min_size           = 1
  target_group_arns = [aws_lb_target_group.main.arn]

  launch_template {
    id      = aws_launch_template.main.id
    version = "$Latest"
  }
  depends_on = [aws_lb.main]
}


