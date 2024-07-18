provider "aws" {
    region = "ap-south-1"
  
}

resource "aws_instance" "terraform" {
    ami = "ami-0ad21ae1d0696ad58"
    instance_type = "t2.micro"
    key_name = "md-public-key"
    subnet_id = "subnet-03d45251a0551419b"
    
}

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
''' variable '''

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "ami_id" {
  description = "EC2 ami id"
  type        = string
  default     = "ami-12345"
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "my-ec2" {
  ami           = var.ami_id
  instance_type = var.instance_type
}

