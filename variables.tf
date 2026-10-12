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

variable "ami_name_filter" {
  description = "AWS AMI filter key for the image name"
  type        = string
}

variable "ami_name_pattern" {
  description = "Pattern used to select the Amazon Linux 2023 AMI"
  type        = string
}

variable "ami_architecture_filter" {
  description = "AWS AMI filter key for CPU architecture"
  type        = string
}

variable "ami_architecture" {
  description = "CPU architecture required for the AMI"
  type        = string
}

variable "ami_virtualization_filter" {
  description = "AWS AMI filter key for virtualization type"
  type        = string
}

variable "ami_virtualization_type" {
  description = "Virtualization type required for the AMI"
  type        = string
}