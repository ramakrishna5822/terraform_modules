resource "aws_vpc" "kumar" {
    cidr_block = var.cidr_block
    enable_dns_hostnames = true
    tags = {
      Name = var.vpc_name
    }
  
}
resource "aws_internet_gateway" "kumar" {
    vpc_id = "${aws_vpc.kumar.id}"
	tags = {
        Name = "${var.vpc_name}-igw"
    }
}
