variable "key_name" {
  default = "mumbairamya"
}

variable "pvt_key" {
  default = "/root/.ssh/skey.pem"
}

variable "us-east-zones" {
  default = ["us-east-1a", "us-east-1b"]
}

variable "sg-id" {
  default = "sg-0484b4afd54545174"
}
