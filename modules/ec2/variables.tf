variable "instance_type" {
  type    = string
  default = "t3.micro"
}

locals {
  ami     = "ami-0a716d3f3b16d290c"
}

output "instance_id" {
  description = "The id of the EC2 instance"
  value = aws_instance.import.id
}