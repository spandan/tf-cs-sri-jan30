resource "aws_instance" "user14" {
  ami="ami-0993d3759749c153c"
  #ami=var.ami-id
  #ami=data.aws_ami.amazon_linux_2023.id
  instance_type = var.instance_type
  
  tags = {
    Name = var.tag_name
    owner=var.tag_owner
 }
}
