variable "key_name" {
  default = "ramya"
}

variable "pvt_key" {
  default = "/root/.ssh/hkey.pem"
}

variable "us-east-zones" {
  default = ["us-east-1a", "us-east-1b"]
}

variable "sg-id" {
  default = "sg-0c7ab7d3a7c9e70c0"
}
