resource "aws_subnet" "public_subnet" {
  vpc_id                  = aws_vpc.voting_app_vpc.id
  cidr_block              = var.subnets.public.cidr_block
  availability_zone       = var.subnets.public.availability_zone
  map_public_ip_on_launch = true
}

resource "aws_subnet" "private_subnet" {
  vpc_id            = aws_vpc.voting_app_vpc.id
  cidr_block        = var.subnets.private.cidr_block
  availability_zone = var.subnets.private.availability_zone
}

