provider "aws"{
    region="ap-south-1"
     profile    = "default"
}

resource "aws_instance" "my_ec2" {
  ami           = "${var.image}"
  instance_type = "${var.ec2_type}"


  tags = {
    Name="${var.my_first}"
    Team="cisrun"
  
}
}