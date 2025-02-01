provider "aws" {
region = "us-east-1"
}

resource "aws_instance" "one" {
count = 5
ami = "ami-0f214d1b3d031dc53"
instance_type = "t2.medium"
key_name = "AWS-01"
vpc_security_group_ids = ["sg-054095cfba4ad9fbf"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["jenkins", "nexus", "Appserver-1", "Appserver-2", "Monitoring server"]
}
