# AWS Terraform config file
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# declare imported AWS_ACCESS_KEY_ID variables
variable "AWS_ACCESS_KEY_ID" {
  type = string
}

# declare imported AWS_SECRET_ACCESS_KEY variables
variable "AWS_SECRET_ACCESS_KEY" {
  type = string
}

# configure the AWS provider
provider "aws" {
  region = "us-east-1"
  access_key = var.AWS_ACCESS_KEY_ID
  secret_key = var.AWS_SECRET_ACCESS_KEY
}

# select an existing security group
data "aws_security_group" "selected" {
  name = "terraform-sg"
}

# create multiple AWS instances
resource "aws_instance" "web" {
  count = 3
  ami = "ami-080e1f13689e07408"
  instance_type = "t2.micro"
  key_name = "id_rsa"
  vpc_security_group_ids = [data.aws_security_group.selected.id]

  tags = {
    Name = "wsv-${count.index+1}"
  }
}

# create an AWS load balancer
resource "aws_elb" "load_balancer" {
  name = "test-elb"
  availability_zones = ["us-east-1a", "us-east-1b", "us-east-1c"]

  listener {
    instance_port = 80
    instance_protocol = "HTTP"
    lb_port = 80
    lb_protocol = "HTTP"
  }

  instances = aws_instance.web[*].id
}

# create a domain name
resource "aws_route53_zone" "domain" {
  name = "authorslens.com.ng"
}

# add an A-record
resource "aws_route53_record" "terraform_test" {
  zone_id = aws_route53_zone.domain.zone_id
  name = "terraform-test.authorslens.com.ng"
  type = "A"

  alias {
    name = aws_elb.load_balancer.dns_name
    zone_id = aws_elb.load_balancer.zone_id
    evaluate_target_health = true
  }
}

# output the load balancer DNS
output "load_balancer_dns_name" {
  value = aws_elb.load_balancer.dns_name
}

# add the public IP to host-inventory file
resource "local_file" "host_inventory_file" {
  content = join("\n", aws_instance.web.*.public_ip)
  filename = "${path.module}/host-inventory"
}

# execute the ansible playbook
resource "null_resource" "ansible_provisioner" {
  depends_on = [aws_instance.web]

  provisioner "local-exec" {
    when = create
    command = "ansible-playbook -i ${path.module}/host-inventory playbook.yml"
  }
}
