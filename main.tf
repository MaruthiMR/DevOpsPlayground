provider "aws" {
    region = "ap-south-1"
  
}

resource "aws_instance" "terraform" {
    ami = "ami-0ad21ae1d0696ad58"
    instance_type = "t2.micro"
    key_name = "md-public-key"
    subnet_id = "subnet-03d45251a0551419b"
    
}
