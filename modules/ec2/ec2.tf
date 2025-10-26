resource "aws_instance" "this" {
  ami = local.ami
  instance_type = var.instance_type
  tags = {
    Name = "terraform-create"
  }
  user_data_replace_on_change = false
}

resource "aws_instance" "import" {
  ami                     = local.ami
  instance_type           = var.instance_type
  tags = {
    Name = "terraform-import"
  }
  user_data_replace_on_change = false
}