variable "name_nsg" {
  description = "The name of the Network Security Group"
  type        = string
}

variable "location_nsg" {
  description = "The location/region where the NSG will be created"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which the NSG will be created"
  type        = string
}

variable "tags_nsg" {
  description = "A map of tags to assign to the NSG"
  type        = map(string)
  default     = {}
}

variable "security_rules" {
  description = "A list of security rules to apply to the NSG"
  type = list(object({
    name                       = string
    priority                   = number
    direction                  = string
    access                     = string
    protocol                   = string
    source_port_range          = string
    destination_port_range     = string
    source_address_prefix      = string
    destination_address_prefix = string
  }))
  default = []
}
