variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "ami" {
  type = string
  default     = "ami-046c2381f11878233"
}

output "instance_id" {
  description = "The id of the EC2 instance"
  value = aws_instance.this.id
}