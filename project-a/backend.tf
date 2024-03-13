terraform {
    backend "s3" {
        bucket = "terraform-sep-2023-backend-bucket-cgdm"
        key = "terraform.tfstate" # the path where you want to create your terraform.tfstate file
        workspace_key_prefix = "workspace/project-a"
        region = "us-east-1"
    }

}