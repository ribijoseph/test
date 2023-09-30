resource "aws_instance" "jenkins" {
  ami           = "ami-02bb7d8191b50f4bb"
  instance_type = var.instance_type
  vpc_security_group_ids = [var.aws_sg_id]
  subnet_id = var.subnet_id
}
