variable subscriptionid {
   type = string
}

variable vnet_name_lz {
   type = string
}

variable rg_lz {
   type = string
}

variable location_lz {
   type = string
}

variable address_space_lz {
   type = list
}

variable tags_lz {
   type = map(string)
}

variable "subnets_lz" {
  description = "Map of subnet configurations"
  type = map(object({
    address_prefixes = list(string)
    security_group   = optional(string) # Optional security group association
  }))
}