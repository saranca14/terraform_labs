resource "aws_instance" "this" {
  ami = "ami-038056f5d3df2259d"
  instance_type = "t2.micro"
}