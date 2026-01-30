terraform {
  backend "s3" {
    bucket="tf-state-user14-01292026"
    key="dev/terraform.tfstate"
    region = "us-west-1"
    encrypt = true
    use_lockfile = true
  }
}
