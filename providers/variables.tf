variable "vpc_network" {
  default = "10.0.0.0/16"
}

variable "pub_network" {
  default = "10.0.0.0/20"
}

variable "pri_network" {
  default = "10.0.128.0/20"
}



variable "instance_type" {
  default = "t2.xlarge"
}
 