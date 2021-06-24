resource "aws_security_group" "public-test" {
    name        = "public-test"
    description = "public-test"
    vpc_id      = aws_vpc.test-vpc.id

    ingress {
        from_port       = 22
        to_port         = 22
        protocol        = "tcp"
        # Add source IP Addresses
        # Ex. cidr_blocks     = ["123.456.789.123/32"]
        cidr_blocks     = []
    }

    egress {
        from_port       = 0
        to_port         = 0
        protocol        = "-1"
        cidr_blocks     = ["0.0.0.0/0"]
    }

    tags = {
        Name = "public-test"
    }
}
