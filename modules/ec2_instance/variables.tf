variable "ami_value" {
    description = "value for the ami"
}


variable "instance_type_value" {
    description = "value for the inatance_type_value"
    type        = string
}


variable "subnet_id_value" {
    description = "value for the subnet_id"
}

variable "name" {
  description = "Name tag for the EC2 instance"
  type        = string
}

