terraform {
  required_providers {
    databricks = {
      source  = "databrickslabs/databricks"
      version = "0.3.7"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "3.70.0"
    }
  }
}
