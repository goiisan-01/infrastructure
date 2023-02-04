resource "aws_nat_gateway" "main" {
  subnet_id     = aws_subnet.public.id
  connectivity_type = "private"

  tags = {
    Name = var.ngw_name
  }

  depends_on = [aws_internet_gateway.gw]
}
