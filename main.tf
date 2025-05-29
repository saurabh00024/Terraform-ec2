resource "aws_instance" "my_ec2" {
  ami           = "ami-0953476d60561c955" # Amazon Linux 2 AMI for us-east-1
  instance_type = "t2.micro"
  key_name      = "ansible-key" # Replace with your key name


  tags = {
    Name = "MyFirstEC2"
  }
}
resource "aws_security_group" "my_sg" {
  name        = "my-security-group"
  description = "Allow SSH"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}