resource "aws_subnet" "public-subnet1" {
    vpc_id = "${aws_vpc.kumar.id}"
    cidr_block = var.cidr_block_subnet1
    availability_zone = "us-east-1a"
    map_public_ip_on_launch = true
    tags = {
      "Name" = "${var.vpc_name}-public-subnet1"
    }  
}

resource "aws_subnet" "public-subnet2" {
    vpc_id = "${aws_vpc.kumar.id}"
    cidr_block = var.cidr_block_subnet2
    availability_zone = "us-east-1b"
  
   map_public_ip_on_launch = true
    tags = {
      "Name" = "${var.vpc_name}-public-subnet2"
    }  
}
