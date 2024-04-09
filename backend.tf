terraform {
  backend "s3" {
    bucket = "my-terraform-state-file-storage"
    key    = "path/terraform.tfstate"
    region = "ap-south-1"
  }
}

# bucket should be created before running "terraform init" same bucket name have to provide here
