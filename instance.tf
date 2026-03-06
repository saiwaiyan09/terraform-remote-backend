resource "aws_instance" "hellocloud" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  subnet_id     = aws_subnet.hellocloud.id
  key_name      = aws_key_pair.hellocloud.key_name
  associate_public_ip_address = true
  vpc_security_group_ids = [aws_security_group.hellocloud.id]
   
   
  tags = {
    Name = "${var.prefix}-hellocloud-instance"
    Department = "${var.department}"
    }
}