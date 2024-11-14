provider "aws" {
  region = "eu-central-1"
}

resource "aws_instance" "GithubActionsInstanz" {
  ami           = "ami-0eddb4a4e7d846d6f"
  instance_type = "t2.micro"
  tags = {
    Name = "Meine Github Actions Instanz"
  }
}


## terraform init
## terraform plan
## terraform apply


## terraform destroy