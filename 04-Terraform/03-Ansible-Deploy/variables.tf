variable "key_name" {
  default = "cparis"
}

variable "pvt_key" {
  default = "/root/.ssh/vkey.pem"
}

variable "us-east-zones" {
  default = ["us-east-1a", "us-east-1b"]
}

variable "sg-id" {
  default = "sg-0cb44331fc3ea085f"
}
