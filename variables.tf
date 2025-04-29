variable "ami_value" {
  description = "value for the ami"
}

variable "instance_type_value" {
  description = "value for the instance type"
  type        = string
}

variable "subnet_id_value" {
  description = "value for the subnet id"
}

variable "name" {
  description = "Name tag for the EC2 instance"
  type        = string
}

