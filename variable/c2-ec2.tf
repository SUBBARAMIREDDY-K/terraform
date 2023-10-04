resource "aws_instance" "web-app" {
  ami                    = var.aws_ami_id
  instance_type          = "t2.micro"
  key_name               = "terraform-key"
  count                  = var.aws_instance_count
  user_data              = <<-EOF
        #!/bin/bash
        sudo yum update -y
        sudo yum install httpd -y
        sudo systemctl enable httpd
        sudo systemctl start httpd
        echo "<h1>Welcome to StackSimplify ! AWS Infra created using Terraform in us-east-1 Region</h1>" > /var/www/html/index.html
    EOF
  vpc_security_group_ids = [aws_security_group.vpc_ssh.id, aws_security_group.vpc_web.id]
  tags = {
    "Name" = "My-vm"
  }
}