resource "aws_instance" "ec2_instance" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.key_name

  tags = {
    Created_By = var.created_by
    Name       = "${var.env_name}_${var.instance_name}"
  }
}