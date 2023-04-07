resource "aws_instance" "apache" {
    ami = "ami-007855ac798b5175e"
    instance_type = "t2.micro"
    associate_public_ip_address = true 
    key_name = "sai4"
    subnet_id = data.aws_subnet.default.id
    user_data = file("script.sh")
    vpc_security_group_ids = ["sg-066515f8a62ef83dd"]

  }