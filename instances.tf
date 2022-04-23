resource "aws_instance" "elk_server" {
  count                  = var.number_of_instances
  ami                    = data.aws_ami.ubuntu_image.id
  instance_type          = "m5.large"
  subnet_id              = data.aws_subnet.public.id
  vpc_security_group_ids = [aws_security_group.elk_server_sg.id]
  key_name               = var.my_keypair

  tags = {
    Name = "elk_server_${count.index + 1}"
  }
}