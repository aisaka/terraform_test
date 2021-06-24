resource "aws_vpc" "test-vpc" {
    cidr_block           = "172.16.0.0/16"
    enable_dns_hostnames = false
    enable_dns_support   = true
    instance_tenancy     = "default"

    tags = {
        Name = "test-vpc"
    }
}

resource "aws_subnet" "test-subnet-public-c" {
    vpc_id                  = aws_vpc.test-vpc.id
    cidr_block              = "172.16.0.0/24"
    availability_zone       = "ap-northeast-1c"
    map_public_ip_on_launch = true

    tags = {
        Name = "test-subnet-public-c"
    }
}

resource "aws_subnet" "test-subnet-public-d" {
    vpc_id                  = aws_vpc.test-vpc.id
    cidr_block              = "172.16.1.0/24"
    availability_zone       = "ap-northeast-1d"
    map_public_ip_on_launch = true

    tags = {
        Name = "test-subnet-public-d"
    }
}

resource "aws_subnet" "test-subnet-public-a" {
    vpc_id                  = aws_vpc.test-vpc.id
    cidr_block              = "172.16.2.0/24"
    availability_zone       = "ap-northeast-1a"
    map_public_ip_on_launch = true

    tags = {
        Name = "test-subnet-public-a"
    }
}