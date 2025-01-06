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
variable "name_nsg_lz" {
  type = string
}

variable "name_nsg_sp" {
  type = string
}

variable "location_nsg" {
  type = string
}

variable "tags_nsg" {
  type = map(string)
}

#aks
# General cluster configuration
variable "cluster_name" {
  description = "The name of the AKS cluster"
  type        = string
}

variable "dns_prefix" {
  description = "DNS prefix for the cluster"
  type        = string
}

# Node pool configuration
variable "default_node_pool_name" {
  description = "The name of the default node pool"
  type        = string
  default     = "default"
}

variable "default_node_pool_vm_size" {
  description = "The size of the VMs in the default node pool"
  type        = string
  default     = "Standard_DS2_v2"
}

variable "default_node_pool_node_count" {
  description = "The initial number of nodes in the default node pool"
  type        = number
  default     = 1
}

variable "default_node_pool_max_pods" {
  description = "The maximum number of pods per node in the default node pool"
  type        = number
  default     = 110
}

variable "default_node_pool_os_disk_size_gb" {
  description = "The size of the OS disk in GB for the default node pool"
  type        = number
  default     = 128
}

variable "network_plugin" {
  description = "The network plugin to use ('kubenet' or 'azure')"
  type        = string
  default     = "azure"
}

variable "network_policy" {
  description = "The network policy to use ('calico' or 'azure')"
  type        = string
  default     = "calico"
}

variable "service_cidr" {
  description = "The CIDR range for the Kubernetes service network"
  type        = string
  default     = "10.0.0.0/16"
}

variable "dns_service_ip" {
  description = "The IP address within the service CIDR for the DNS service"
  type        = string
  default     = "10.0.0.10"
}

variable "docker_bridge_cidr" {
  description = "The CIDR range for the Docker bridge network"
  type        = string
  default     = "172.17.0.1/16"
}

variable "api_server_authorized_ip_ranges" {
  description = "IP ranges allowed to access the Kubernetes API server. Leave empty for no public access."
  type        = list(string)
  default     = []
}

# Private cluster configuration
variable "enable_private_cluster" {
  description = "Enable a private AKS cluster"
  type        = bool
  default     = true
}

# Tags
variable "tags" {
  description = "Tags for the AKS cluster"
  type        = map(string)
  default     = {}
}

variable "location" {
  type = string
}


variable "resource_group_name" {
  type = string
}