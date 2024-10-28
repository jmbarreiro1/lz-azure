variable subscriptionid {
   type = string
}

variable rg {
   type = string
}

variable rgsp {
   type = string
}

variable location {
   type = string
}

variable address_space_sp {
   type = list(string)
}

variable address_space_lz {
   type = list(string)
} 


variable address_prefixes_lz {
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

variable vnet_name_lz {
   type = string
}