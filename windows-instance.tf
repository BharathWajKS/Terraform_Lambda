data "aws_ami" "windows" {
     most_recent = true

     filter {
        name   = "name"
        values = ["Windows_Server-2019-English-Full-Base-*"]

 }

     filter {
       name   = "virtualization-type"
       values = ["hvm"]

 }

     owners = ["801119661308"] # Canonical

}

resource "aws_instance" "windows" {
  ami                      = data.aws_ami.windows.id
  instance_type            = var.instanceType
  availability_zone        = var.availability_zone
root_block_device {
        volume_type  = var.ebsType
        volume_size  = var.ebsSize

}

lifecycle {
     ignore_changes = [ami]
     }

tags = {
        Name    = "${var.projectName}-ec2-instance"
        Project = var.projectName
        Enviroment = "${var.env}"
  }

}