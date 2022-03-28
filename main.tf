terraform {
  required_providers {
    ovirt = {
      source  = "local/ovirt/ovirt"
      version = "0.99.0"
    }
  }
}

resource "ovirt_vm" "vm" {

  name        = var.vm_name
  cluster_id  = var.cluster_id
  template_id = var.vm_template_id
  memory      = var.vm_memory

  cores   = var.vm_cpu_cores
  sockets = var.vm_cpu_sockets
  threads = var.vm_cpu_threads

  clone             = var.vm_clone
  high_availability = var.vm_high_availability

  initialization {
    user_name          = var.vm_user_name
    authorized_ssh_key = var.vm_authorized_ssh_key
    host_name          = var.vm_hostname

    dns_search  = var.vm_dns_search
    dns_servers = var.vm_dns_servers

    timezone = var.vm_timezone

    custom_script = var.vm_cloudinit_script

    nic_configuration {
      label      = var.vm_nic_device
      boot_proto = var.vm_nic_boot_proto
      address    = var.vm_nic_ip_address
      gateway    = var.vm_nic_gateway
      netmask    = var.vm_nic_netmask
      on_boot    = var.vm_nic_on_boot
    }
  }
}