variable subscriptionid {
   type = string
}

variable vnet_name_sp {
   type = string
}

variable rg_sp {
   type = string
}

variable location_sp {
   type = string
}

variable address_space_sp {
   type = list
}

variable tags_sp {
   type = map(string)
}

variable "subnets_sp" {
  description = "Map of subnet configurations"
  type = map(object({
    address_prefixes = list(string)
    security_group   = optional(string) # Optional security group association
  }))
}