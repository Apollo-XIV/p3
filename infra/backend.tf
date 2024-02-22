terraform {
  # backend "s3" {
  #   bucket         = "forum-dev-state"
  #   key            = "terraform.tfstate"
  #   region         = "eu-west-1"
  #   dynamodb_table = "forum-dev-state-lock-table"
  # }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.17.0"
    }
    ansible = {
      version = "~> 1.1.0"
      source  = "ansible/ansible"
    }
  }
}



# ##### LEFT COMMENTED ON PURPOSE => used once to create new state and change locking resources
# module "s3Backend" {
#   source      = "./modules/s3Backend"
#   service     = var.service
#   environment = var.environment
# }
