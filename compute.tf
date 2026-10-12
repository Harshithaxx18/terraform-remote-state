data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = var.ami_name_filter
    values = [var.ami_name_pattern]
  }

  filter {
    name   = var.ami_architecture_filter
    values = [var.ami_architecture]
  }

  filter {
    name   = var.ami_virtualization_filter
    values = [var.ami_virtualization_type]
  }
}

resource "aws_instance" "this" {
  ami           = data.aws_ami.amazon_linux.id
  instance_type = "t2.micro"

  subnet_id = data.terraform_remote_state.base_infra.outputs.public_subnet_id

  vpc_security_group_ids = [
    data.terraform_remote_state.base_infra.outputs.security_group_id
  ]

  tags = {
    Name      = "${var.project_id}-ec2"
    Terraform = "true"
    Project   = var.project_id
  }
}
