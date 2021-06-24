resource "aws_instance" "test01" {
    ami                         = "ami-06631ebafb3ae5d34"
    availability_zone           = "ap-northeast-1c"
    instance_type               = "t3.small"
    monitoring                  = false
    # Edit key name
    # Ex. xxx.pem -> "xxx"
    key_name                    = ""
    subnet_id                   = aws_subnet.test-subnet-public-c.id
    vpc_security_group_ids      = [ aws_security_group.public-test.id ]
    associate_public_ip_address = true
    source_dest_check           = true

    tags = {
        Name = "test01"
    }
}
