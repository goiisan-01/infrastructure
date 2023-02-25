# resource "aws_security_group" "main" {
#   name        = var.sg_name
#   vpc_id      = var.vpc_id

#   ingress {
#     from_port        = 443 # for HTTPS connection
#     to_port          = 443 # for HTTPS connection
#     protocol         = "tcp"
#     cidr_blocks      = ["0.0.0.0/0"]
#   }

#   ingress {
#     from_port        = 80 # for HTTP connection
#     to_port          = 80 # for HTTP connection
#     protocol         = "tcp"
#     cidr_blocks      = ["0.0.0.0/0"]
#   }

#   ingress {
#     from_port        = 22 # for SSH connection
#     to_port          = 22 # for SSH connection
#     protocol         = "tcp"
#     cidr_blocks      = ["0.0.0.0/0"]
#   }

#   egress {
#     from_port        = 0 # for the whole internet
#     to_port          = 0 # for the whole internet
#     protocol         = "-1"
#     cidr_blocks      = ["0.0.0.0/0"]
#   }

#   tags = {
#     Name = var.sg_name
#   }
# }