resource "aws_nat_gateway" "main" {
  subnet_id     = aws_subnet.main.id
  connectivity_type = "private"

  tags = {
    Name = var.ngw_name
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.

  depends_on = [aws_internet_gateway.gw]
}
