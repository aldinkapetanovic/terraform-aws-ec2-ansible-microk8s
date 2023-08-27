variable "AWS_REGION" {
  default = "eu-west-2"
}

variable "PATH_TO_PRIVATE_KEY" {
  default = "microk8skey"
}

variable "PATH_TO_PUBLIC_KEY" {
  default = "microk8skey.pub"
}

variable "n" {
  description = "Total number of instances (including masters + spare and workers)"
  type        = number
  default     = 7
}

variable "masters" {
  description = "Number of master nodes"
  type        = number
  default     = 4
}
