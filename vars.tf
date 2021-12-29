variable "access_key" {
  description = "aws access key"
  default     = "AKIARTMKF7RP7O52RIVS"
}

variable "secret_key" {
  description = "aws secret key to login"
  default     = "NEI27cz7JXjOgelUYgqhOjJ23qXagg8do3RZuM2t"
}

variable "env" {
  description = "Name of the environment. Example: prod"
  default     = "Dev"
}

variable "s3_bucket" {
  description = "S3 bucket for terraform state."
  default     = "terraform28122021"
}

variable "region" {
  description = "please enter aws region"
  default     = "us-east-1"
}

variable "availability_zone" {
  type        = string
  description = "please enter aws availability zone"
  default = "us-east-1a"
}

variable "instanceType" {
  type        = string
  description = "please enter instance type for creating an ec2 instance"
  default = "t2.micro"
}

variable "projectName" {
  type        = string
  description = "please enter Project Name"
  default     = "Dev"
}

variable "ebsType" {
  default = "gp2"
}

variable "ebsSize" {
  type        = number
  description = "please enter root-block-device volume attaching to an ec2 instance"
  default = "30"
}

variable "main_vpc_cidr" {
  default = "10.0.0.0/24"
}

variable "public_subnets" {
  default = "10.0.0.128/26"
}

variable "private_subnets" {
  default = "10.0.0.192/26"
}
