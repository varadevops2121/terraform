resource "aws_instance" "db" {

    ami = data.aws_ami.ami_id.id
    vpc_security_group_ids = ["sg-0b3a7ad726e46614a"]
    instance_type = "t3.micro"
    tags = {
        Name = "data-source-practice"
    }
}