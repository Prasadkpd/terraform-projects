variable "kubernetes_version"{
    default = 1.27
    description = "Kubernetes Version"
}

variable "vpc_cidr"{
    default = "10.0.0.0/16"
    description = "default CIDR range of the VPC"
}

variable "aws_region" {
  default = "us-west-1"
  description = "aws region"
}