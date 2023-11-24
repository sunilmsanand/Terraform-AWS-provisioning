provider "aws" {

region = "ap-southeast2"

}

resource "aws_vpc" "my_vpc" {
    cidr_block = "10.0.0.0/16"
    enable_dns_support = "true"
    enable_dns_hostnames = "true"
}

resource "aws_subnet" "public_subnet_az1" {
    vpc_id = aws_vpc.my_vpc
    cidr_block = "10.0.1.0/24"
    availability_zone = "ap-southeast2-a"
    map_public_ip_on_launch = true
  
}

resource "aws_subnet" "public_subnet_az2" {
    vpc_id = aws_vpc.my_vpc
    cidr_block = "10.0.2.0/24"
    availability_zone = "ap-southeast2-b"
    map_customer_owned_ip_on_launch = true
  
}

resource "aws_subnet" "private_subnet_az1" {
    vpc_id = aws_vpc.my_vpc
    cidr_block = "10.0.3.0/24"  
}

resource "aws_subnet" "private_subnet_az2" {
    vpc_id = aws_vpc.my_vpc
    cidr_block = "10.0.4.0/24"  
}

resource "aws_subnet" "secure_subnet_az1" {
    vpc_id = aws_vpc.my_vpc
    cidr_block = "10.0.5.0/24" 
}

resource "aws_subnet" "secure_subnet_az2" {
    vpc_id = aws_vpc.my_vpc
    cidr_block = "10.0.6.0/24"
}
