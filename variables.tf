variable "cidr" {
  default = "10.0.0.0/16"
}

variable "ami" {
  default = "ami-0261755bbcb8c4a84"
}

variable "instance_type" {
  default = "t2.micro"
}


variable "lb_type" {
  default = "application"
}