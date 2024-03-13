terraform {
    backend "s3" {
        bucket = "terraform-sep-2023-backend-bucket-cgdm"
        key = "session-5/terraform.tfstate" # the path where you want to create your terraform.tfstate file
        region = "us-east-1"
    }

}