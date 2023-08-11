#Project variables

variable "location" {
  type = string
  description = "value of location for the deployment"
  default = "westus2"
}

variable "rsgName" {
    type = string
    description = "Resource Group Name"
    default = "TerraLabformRG"
}