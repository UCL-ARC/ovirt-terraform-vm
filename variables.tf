variable "cluster_id" {
  description = "Target cluster ID"
  type        = string
}

variable "vm_authorized_ssh_key" {
  description = "The ssh key to use"
  default     = ""
  type        = string
}

variable "vm_clone" {
  description = "Create as linked clone"
  default     = false
  type        = bool
}

variable "vm_cloudinit_script" {
  description = "The cloud-init script to use"
  default     = ""
}

variable "vm_cpu_cores" {
  description = "Number of CPU cores"
  default     = "2"
  type        = number
}

variable "vm_cpu_sockets" {
  description = "Nubmer of sockets"
  default     = "1"
  type        = number
}

variable "vm_cpu_threads" {
  description = "Number of threads per core"
  default     = "1"
  type        = number
}

variable "vm_dns_search" {
  description = "The DNS search domains"
  default     = ""
}

variable "vm_dns_servers" {
  description = "DNS servers"
  default     = ""
}

variable "vm_high_availability" {
  description = "Make VM highly available"
  default     = false
  type        = bool
}

variable "vm_hostname" {
  description = "Hostname for the VM"
  default     = ""
  type        = string
}

variable "vm_memory" {
  description = "The amount of memory (in MB)"
  default     = "4096"
  type        = number
}

variable "vm_name" {
  description = "Name for the VM"
  type        = string
}

variable "vm_nic_boot_proto" {
  description = "The boot protocol for the vNIC"
  default     = "static"
  type        = string
}

variable "vm_nic_device" {
  description = "The vNIC adaptor"
  default     = ""
  type        = string
}

variable "vm_nic_gateway" {
  description = "Network gateway"
  default     = ""
  type        = string
}

variable "vm_nic_ip_address" {
  description = "The IP address"
  default     = ""
  type        = string
}

variable "vm_nic_netmask" {
  description = "The netmask"
  default     = ""
  type        = string
}

variable "vm_nic_on_boot" {
  description = "Activate vNIC on boot"
  default     = true
  type        = bool
}

variable "vm_template_id" {
  description = "The ID of template to use"
  type        = string
}

variable "vm_timezone" {
  description = "VM timezone"
  default     = "Europe/London"
  type        = string
}

variable "vm_user_name" {
  description = "The user name for the VM"
  default     = ""
  type        = string
}