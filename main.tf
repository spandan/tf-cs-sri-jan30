provider "aws" {
  region = "us-west-1"
}

module "Vms_app1" {
  source = "git::https://github.com/spandan/tf-sri-01302026//ec2-instance?ref=main"
  region-1 = "us-west-1"
  instance_type = "t3.micro"
  subnets = ["subnet-084785ce11bb38827", "subnet-0e100c7e306c1812d"]
  num_of_vm = 1
  env = "dev"
}

output "vm_private_ips01" {
  value = module.Vms_app1.vm_priv_pips
}
module "Web_SG01" {
  source = "git::https://github.com/spandan/tf-sri-01302026//ec2-instance?ref=main"
  project = "vishwa"
  vpc_id = data.aws_vpc.default.id
}

data "aws_vpc" "default" {
  default = true
}