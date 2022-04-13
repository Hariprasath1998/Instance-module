terraform {
  required_version = "~> 1.1.7"
}

resource "aws_instance" "web-server" {
  ami             = var.ec2-ami-id
  iam_instance_profile = var.ec2-iam-instance-profile
  instance_type   = var.ec2-instance-type
  security_groups = var.ec2-security-groups
  user_data       = var.ec2-user-data
  key_name        = var.ec2-key-name
  count           = var.ec2-instance-count * length(var.subnet-ids)
  subnet_id       = element(var.subnet-ids, count.index)

  tags = {
    Name        = "${var.project-name}-${var.project-environment}-webserver-${count.index + 1}",
    Environment = "${var.project-environment}",
    createdBy   = "${var.project-developer}"
    owner       = "${var.project-developer}"
  }

  connection {
    type        = var.ec2-connection-type
    host        = self.public_ip
    user        = var.ec2-user
    private_key = var.ec2-private-key
  }

  provisioner "file" {
    source      = var.ec2-source-file
    destination = var.ec2-destination-file
  }

  provisioner "remote-exec" {
    inline = var.ec2-inline-script
  }
}

