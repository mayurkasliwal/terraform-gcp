variable "project" {
  type        = string
  description = "project name"
}
variable "region" {
  type        = string
  description = "region name"
}
variable "zone" {
  type        = string
  description = "region name"
}
variable "namespace" {
  type        = string
  description = "namespace name"
}
variable "env" {
  type        = string
  description = "project name"
}
variable "proxy_name" {
  type        = string
  description = "project name"
}
variable "firewall_tags" {
  type        = list(string)
  description = "project name"
}
variable "kms_project" {
  type = string
}
variable "boot_disk_name" {
  type = string
}
variable "boot_disk_auto_delete" {
  type = string
}
variable "boot_disk_size" {
  type = string
}
variable "boot_disk_type" {
  type = string
}
variable "instance_service_account" {
  type = string

}
variable "instance_scopes" {
  type = list(string)

}
variable "machine_type" {
  type = string
}

variable "network" {
  type    = string
  default = "hsbc-default-network"
}

variable "subnetwork" {
  type    = string
  default = "gkenodes-europe-west2"

}

variable "shared_project" {
  type    = string

}
variable "staticIP_name_nic0" {
  type    = string

}
variable "staticIP_name_nic1" {
  type    = string

}


