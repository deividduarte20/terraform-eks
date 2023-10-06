variable "name-cluster" {
  default = "duarte"
}

variable "instance-type" {
  default = "t3a.medium"
}

variable "key" {
  default = "deividdua"
}

variable "instance-ami" {
  default = "ami-04cb4ca688797756f"
}

variable "name-sg" {
  default = "allow_tls"
}

variable "cluster-version" {
  default = "1.28"
}