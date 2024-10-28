variable subscriptionid {
   type = string
}

variable vnet_name {
   type = string
}

variable rg {
   type = string
}

variable location {
   type = string
}

variable address_space {
   type = list
}

variable tags {
   type = map(string)
}

variable "subnets" {
  description = "Map of subnet configurations"
  type = map(object({
    address_prefixes = list(string)
    security_group   = optional(string) # Optional security group association
  }))
}