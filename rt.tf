resource "aws_route_table" "test-public-rtb" {
    vpc_id = aws_vpc.test-vpc.id

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.test-igw.id
    }

    tags = {
        Name = "test-rtb"
    }
}

resource "aws_route_table_association" "public-c" {
    subnet_id = aws_subnet.test-subnet-public-c.id
    route_table_id = aws_route_table.test-public-rtb.id
}

resource "aws_route_table_association" "public-d" {
    subnet_id = aws_subnet.test-subnet-public-d.id
    route_table_id = aws_route_table.test-public-rtb.id
}

resource "aws_route_table_association" "public-a" {
    subnet_id = aws_subnet.test-subnet-public-a.id
    route_table_id = aws_route_table.test-public-rtb.id
}