provider "aws" {
  region = "eu-central-1"
}

resource "aws_instance" "GithubActionsInstanz" {
  count = 5  
  ami           = "ami-0eddb4a4e7d846d6f"
  instance_type = "t2.micro"
  key_name = "terraformKey"
  tags = {
    Name = "Meine Github Actions Instanz ${count.index}"
  }
}

output "instance_public_ips" {
    value = aws_instance.GithubActionsInstanz.*.public_ip
}


## terraform init
## terraform plan
## terraform apply


## terraform destroy