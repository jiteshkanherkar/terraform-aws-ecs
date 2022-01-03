resource "aws_subnet" "main-subnet" {
  vpc_id = var.vpc_id
  cidr_block= var.cidr
  availability_zone = var.availability_zone 
  tags = {
    "name" = "${var.env}_subnet"
  }
}