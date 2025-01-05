variable "subscriptionid" {
  type = string
}

variable "rg_lz" {
  type = string
}

variable "rg_sp" {
  type = string
}

variable "location_lz" {
  type = string
}

variable "location_sp" {
  type = string
}

variable "address_space_sp" {
  type = list(string)
}

variable "address_space_lz" {
  type = list(string)
}

variable "tags_lz" {
  type = map(string)
}

variable "tags_sp" {
  type = map(string)
}

variable "subnets_lz" {
  description = "Map of subnet configurations"
  type = map(object({
    address_prefixes = list(string)
    security_group   = optional(string) # Optional security group association
  }))
}

variable "vnet_name_lz" {
  type = string
}

variable "vnet_name_sp" {
  type = string
}

variable "subnets_sp" {
  description = "Map of subnet configurations"
  type = map(object({
    address_prefixes = list(string)
    security_group   = optional(string) # Optional security group association
  }))
}

#nsg
variable "name_nsg" {
  type = string
}

variable "location_nsg" {
  type = string
}

variable "tags_nsg" {
  type = map(string)
}