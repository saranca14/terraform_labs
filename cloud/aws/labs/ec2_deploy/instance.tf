resource "aws_instance" "this" {
  ami           = "ami-038056f5d3df2259d"
  instance_type = var.instance_type
  tags = {
    name = "my_ec2"
  }
}