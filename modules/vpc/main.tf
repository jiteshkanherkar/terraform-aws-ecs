resource "aws_vpc" "devvpc" {
  cidr_block = var.cidr
  tags ={
      name=var.env
  }
}