# General cluster configuration
variable "cluster_name" {
  description = "The name of the AKS cluster"
  type        = string
}

variable "location" {
  description = "The Azure region where the cluster will be created"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group"
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

variable "node_pool_tags" {
  description = "Tags for the node pool"
  type        = map(string)
  default     = {}
}

# Networking configuration
variable "subnet_id" {
  description = "The subnet ID where the AKS cluster nodes will be deployed"
  type        = string
}

variable "vnet_id" {
  description = "The ID of the virtual network for the private cluster"
  type        = string
}

variable "private_dns_zone_id" {
  description = "The ID of the private DNS zone for the Kubernetes API server"
  type        = string
  default     = null
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
