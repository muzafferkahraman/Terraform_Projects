terraform {
  required_providers {
    libvirt = {
      source = "dmacvicar/libvirt"
    }
  }
} 

# Configure the libvirt provider
provider "libvirt" {
  uri = "qemu+ssh://${var.username}@${var.host}/system?keyfile=${var.ssh_key_path}"
}

# Variables (replace with your actual values)
variable "username" {
  type = string
  description = "Username for SSH access to the KVM host"
  default="root"
}

variable "host" {
  type = string
  description = "IP address or hostname of the KVM host"
  default="10.85.8.146"
}

variable "ssh_key_path" {
  type = string
  description = "/root/.ssh/id_rsa"
  default= "/root/.ssh/id_rsa"
}


