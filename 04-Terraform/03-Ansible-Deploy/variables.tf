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
  default = "sg-068a9dc6432429a9f"
}
