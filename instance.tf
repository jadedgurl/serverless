provider "aws" {
  region = "sa-east-1"
  access_key=var.AWS_ACCESS_KEY
  secret_key=var.AWS_SECRET_KEY
}
resource "aws_instance" "web" {
  ami = "ami-08899a44b331db0194"
  instance_type = "t3.micro"
  
  tags = {
    Name = "serverless"
  }
}
