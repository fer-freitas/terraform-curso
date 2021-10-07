variable "amis" {
  type = map(string)

  default = {
    "us-east-1" = "ami-09e67e426f25ce0d7"
    "us-east-2" = "ami-00399ec92321828f5"
  }
}

variable "cdirs_acesso_remoto" {
  type    = list(string)
  default = ["201.63.25.34/32"]
}

variable "key_name" {
  type    = string
  default = "terraform-aws"
}
