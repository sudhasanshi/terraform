provider "aws" {
    region = "ap-south-1"
  
}
provider "aws" {
    region = "us-east-1"
    alias = "virginia"
  
}
resource "aws_instance" "ec2-mumbai" {
 ami ="ami-03f4878755434977f"
 instance_type ="t2.micro"  
 tags = {
    Name = "my-ec2"
 }
}

resource "aws_instance" "ec2-virginia" {
 ami ="ami-0c7217cdde317cfec"
 instance_type ="t2.micro"  
 provider = aws.virginia
 tags = {
    Name = "my-ec2"
 }
}
