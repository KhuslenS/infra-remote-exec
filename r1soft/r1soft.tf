resource "aws_instance" "jenkins" {
  ami                         = "${var.ami}"
  instance_type               = "${var.instance_type}"
  key_name                    = "${var.key_name}"
  associate_public_ip_address = "true"
  security_groups             = ["${aws_security_group.r1soft.name}"]

  provisioner "remote-exec" {
    connection {
      host        = "${self.public_ip}"
      type        = "ssh"
      user        = "${var.user}"
      private_key = "${file("~/.ssh/id_rsa")}"
    }
    inline = [
      "",
    ]


  }
}
