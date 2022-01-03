variable "vpc_id" {
    description = "VPC id"
}

variable "cidr" {
    description = "VPC cidr block. Example: 10.0.0.0/16"
}

variable "env" {
  description="Environment"
}
variable "availability_zone" {
  description = "availability zone"
  default = "ap-south-1_1a"
}
