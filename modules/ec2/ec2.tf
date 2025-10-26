resource "aws_instance" "this" {
  ami = var.ami
  instance_type = var.instance_type
  tags = {
    Name = "terraform-create"
  }
  user_data_replace_on_change = false
}