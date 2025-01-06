# Virtual Network ID
variable "vnet_id" {
  description = "The ID of the virtual network for the private cluster"
  type        = string
}

# Enable Private Cluster
variable "enable_private_cluster" {
  description = "Enable a private AKS cluster"
  type        = bool
  default     = true
}

# Enable DNS Zone Registration
variable "enable_registration" {
  description = "Enable automatic DNS zone registration"
  type        = bool
  default     = false
}

# Virtual Network ID
variable "resource_group_name" {
  description = "Resource group name"
  type        = string
}

variable location {
   type = string
}

variable cluster_name {
   type = string
}

variable dns_prefix {
   type = string
}

variable default_node_pool_name {
   type = string
}

variable default_node_pool_vm_size {
   type = string
}

variable default_node_pool_node_count {
   type = number
}

variable default_node_pool_os_disk_size_gb {
   type = string
}

variable subnet_id {
   type = string
}

variable network_plugin {
   type = string
}

variable network_policy {
   type = string
}

variable service_cidr {
   type = string
}


variable tags {
   type = map(string)
}


variable default_node_pool_max_pods {
   type = number
}