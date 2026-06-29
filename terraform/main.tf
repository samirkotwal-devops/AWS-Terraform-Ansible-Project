resource "aws_instance" "web" {
  ami           = "ami-08f44e8eca9095668"
  instance_type = "t3.micro"

  tags = {
    Name = "Terraform-EC2"
  }
}
