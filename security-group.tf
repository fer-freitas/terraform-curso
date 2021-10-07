resource "aws_security_group" "acesso-ssh" {
  name        = "acesso-ssh"
  description = "acesso-ssh"

  ingress = [
    {
      description = "SSH from VPC"
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      cidr_blocks = var.cdirs_acesso_remoto
      ipv6_cidr_blocks : null
      prefix_list_ids : null
      self : null
      security_groups : null
    }
  ]

  tags = {
    Name = "ssh"
  }
}

resource "aws_security_group" "acesso-ssh-us-east-2" {
  provider    = aws.us-east-2
  name        = "acesso-ssh"
  description = "acesso-ssh"

  ingress = [
    {
      description = "SSH from VPC"
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      cidr_blocks = var.cdirs_acesso_remoto
      ipv6_cidr_blocks : null
      prefix_list_ids : null
      self : null
      security_groups : null
    }
  ]

  tags = {
    Name = "ssh"
  }
}
