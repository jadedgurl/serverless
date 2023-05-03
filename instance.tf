provider "aws" {
  region = "sa-east-1"
  access_key=var.AWS_ACCESS_KEY
  secret_key=var.AWS_SECRET_KEY
}
resource "aws_instance" "web" {
  ami = "ami-0da62eb5869c785b9"
  instance_type = "t3.micro"
  
  tags = {
    Name = "serverless"
  }
}
