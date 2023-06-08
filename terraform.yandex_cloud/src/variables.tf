###cloud vars
variable "token" {
  type        = string
  description = "OAuth-token; https://cloud.yandex.ru/docs/iam/concepts/authorization/oauth-token"
}

variable "cloud_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}
variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network & subnet name"
}


###ssh vars

variable "vms_ssh_root_key" {
  type        = string
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDiiO0rw5KT/eChfFXbEKGS58XmFHijmkMPqIJUou/09M+oiORS5Ar/s+tRHOodlUa3LAwjuTWh3HdmjSFz8heP4e4rDE8iMt3Etkwzs0GGu9PCWNmQ/un4tFXyQza13QT3SA1V4dYPYq4I8cLrjymU5MW3KABv1xwtuQeo1FQztaqZDqPTKNWs8y4aHmi1mq2nHjSJLbg1Bo47lrLj1/cF2y8Qghhcw6NrYQEdPST37tb+YhEEyRHivrIzWVAMJWjfMqi2JDrbA3cBGqJJgjBPBP3x0sbutOoHYdQrJFrjgzESgNbmt121a12XSTr0Mtbo0d+f3WEIFOmVEy5yx0OtTaj4p7HoSAa6jrpKDFxMkMyKJWcn8aKp2EIgA/DgrSu5RHHmmL5lJOko0jw3kxzeuVP4P/nJzy8Ah1GvD/yUQq8swGqS41LpuDbqk6VPeFra9HwSNT2591EbU1Hf1eVLeWlcm8PahHdLREgCqXC+7v+K5UlGxH6UxK8JU2XbTaM= sergeo@Sergeys-MacBook-Air.local"
  description = "ssh-keygen -t ed25519"
}

###resource vars

variable "vm_web_resources" {
  type = map
  default = { 
    cores         = 2,
    memory        = 2,
    core_fraction = 5
  }
}

variable "vm_db_resources" {
  type = map
  default = { 
    cores         = 2,
    memory        = 2,
    core_fraction = 20
  }
}

variable "vm_metadata" {
  type = map
  default = {
    port = 1
    ssh  = "ubuntu:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDiiO0rw5KT/eChfFXbEKGS58XmFHijmkMPqIJUou/09M+oiORS5Ar/s+tRHOodlUa3LAwjuTWh3HdmjSFz8heP4e4rDE8iMt3Etkwzs0GGu9PCWNmQ/un4tFXyQza13QT3SA1V4dYPYq4I8cLrjymU5MW3KABv1xwtuQeo1FQztaqZDqPTKNWs8y4aHmi1mq2nHjSJLbg1Bo47lrLj1/cF2y8Qghhcw6NrYQEdPST37tb+YhEEyRHivrIzWVAMJWjfMqi2JDrbA3cBGqJJgjBPBP3x0sbutOoHYdQrJFrjgzESgNbmt121a12XSTr0Mtbo0d+f3WEIFOmVEy5yx0OtTaj4p7HoSAa6jrpKDFxMkMyKJWcn8aKp2EIgA/DgrSu5RHHmmL5lJOko0jw3kxzeuVP4P/nJzy8Ah1GvD/yUQq8swGqS41LpuDbqk6VPeFra9HwSNT2591EbU1Hf1eVLeWlcm8PahHdLREgCqXC+7v+K5UlGxH6UxK8JU2XbTaM= sergeo@Sergeys-MacBook-Air.local"
  }
}