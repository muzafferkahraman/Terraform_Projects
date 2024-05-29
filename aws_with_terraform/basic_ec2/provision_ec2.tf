resource "aws_instance" "ec2" { // internal names used by Terraform
ami = "ami-0d3a2960fcac852bc" // that id belongs tothe  region eu-north-1
instance_type = "t3.micro"
tags = {
Name = "muzo" // that's the name of the EC2 instance
}
}