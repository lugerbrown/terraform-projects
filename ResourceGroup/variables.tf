#Project variables

variable "location" {
  type = string
  description = "value of location for the deployment"
  default = "West Europe"
}

variable "rsgName" {
    type = string
    description = "Resource Group Name"
    default = "TerraLabformRG"
}

variable "stgactName" {
    type = string
    description = "Storage Account Name"    
}