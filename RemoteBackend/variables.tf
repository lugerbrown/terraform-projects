# Project variables
variable "location" {
  type = string
  description = "The location for the deployment"
}

variable "rsgname" {
  type = string
  description = "Resouce Group name"
}
variable "remotestatersgname" {
  type = string
  description = "Remote state Resouce Group name"
}

variable "stgactname" {
  type = string
  description = "Storage Account name"
}

