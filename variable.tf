
variable "instance_ami" {
  description = "instance ami"
  type =  string
  default = "ami-03bb6d83c60fc5f7c"
}

variable "instance_type" {
  description = "instance type name"
  type =  string
  default = "t2.micro"
}

variable "key_name" {
    type = string
    default = "user" 
}

variable "instance_name" {
  type = string
  default = "my-ec2"
}

variable "security_group_name" {
  description = "The name of the security group"
  type        = string
  default     = "terraform-example-instance"
}

variable "location" {
  default = "ap-south-1"
}

variable "create-bucket" {
    type = bool
    default = true
  
}
