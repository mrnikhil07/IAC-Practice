cat file1.tf
=================================================================================================================================================================================================

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"                                           --------------->> provider aws
      version = "6.4.0"
    }
  }
}

provider "aws" {
  region     = "ap-south-1"
  access_key ="access_key"                                               ------------------------->> crate user and access key 
  secret_key ="Secret_key" 

resource "aws_instance" "fisrtEC2" {                                      
  ami           = "ami_id"                                               ---> use what you want like Amazon linux, and Ubuntu (AMI_ID)
  instance_type = "t2.micro"                                              

  tags = {                     
    Name = "fisrtEcompute"                                               -------------------> Argument : there are multiple argument but i use only basic.
  }
}

resource "aws_instance" "secondEC2" { 
  ami           = "ami-0f918f7e67a3323f0"                                -------------------> Argument : there are multiple argument but i use only basic.
  instance_type = "t2.micro"

  tags = {
    Name = "secondEcompute"
  }
}

resource "aws_instance" "thirdEC2" {
  ami           = "ami-0f918f7e67a3323f0"
  instance_type = "t2.micro"
                                                                        -------------------> Argument : there are multiple argument but i use only basic.
  tags = {
    Name = "thirdEcompute"
  }
}
