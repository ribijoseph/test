resource "aws_vpc" "vpc1" {
  cidr_block = var.vpc_network
  enable_dns_hostnames = true
  tags = {
    Name ="my_vpc"
  }
}

resource "aws_subnet" "public" {
    vpc_id = aws_vpc.vpc1.id
    cidr_block = var.pub_network
    
}
resource "aws_subnet" "private" {
    vpc_id = aws_vpc.vpc1.id
    cidr_block = var.pri_network
    
}