resource "aws_subnet" "public" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.public_subnet_cidr_block
  availability_zone = "us-east-1a"

  tags = {
    Name = var.public_subnet_name
  }
}

resource "aws_subnet" "public_2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.public_subnet_cidr_block_2
  availability_zone = "us-east-1b"

  tags = {
    Name = var.public_subnet_name
  }
}


resource "aws_subnet" "private" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.private_subnet_cidr_block
  availability_zone = "us-east-1a"

  tags = {
    Name = var.private_subnet_name
  }
}

resource "aws_subnet" "private_2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.private_subnet_cidr_block_2
  availability_zone = "us-east-1b"

  tags = {
    Name = var.private_subnet_name
  }
}