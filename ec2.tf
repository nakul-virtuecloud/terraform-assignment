# Create a new instance of the latest Ubuntu 14.04 on an
# t2.micro node with an AWS Tag naming it "HelloWorld"
provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "my_ec2_instance" {
  ami           = "ami-00bb6a80f01f03502"
  instance_type = "t2.micro"

  tags = {
    Name = "firstinstance"
  }
}