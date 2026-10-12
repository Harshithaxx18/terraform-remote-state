variable "aws_region" {
  description = "AWS region where resources will be managed"
  type        = string
}

variable "project_id" {
  description = "Project identifier used for resource tagging"
  type        = string
}

variable "state_bucket" {
  description = "S3 bucket containing the existing Terraform state"
  type        = string
}

variable "state_key" {
  description = "Object key of the existing Terraform state file"
  type        = string
}

