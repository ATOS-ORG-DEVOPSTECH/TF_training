terraform {
  backend "azurerm" {
    resource_group_name  = "A738999_Storage_TF"
    storage_account_name = "terraformbackendtf"
    container_name       = "vms"
    key                  = "" #Put here your Github repo name
  }
}

variable "vm_map" {}
variable "tags" {}
variable "rgname" {}
variable "location" {}
variable "vnetname" {}
variable "subnetname" {}
variable "pass" {}
variable "diskname" {}
variable "nicname" {}

module "" {  #Put the same value like in line #6
  source = "../../../Terraform-Modules/Azure/vm" #Clone this module to your laptop or use below line #36 if you have github ssh key configured
  #source = "git@github.com:ATOS-ORG-DEVOPSTECH/Terraform-Modules/blob/main/Azure.git?ref=master" 
  vm_map     = var.vm_map
  tags       = var.tags
  rgname     = var.rgname
  vnetname   = var.vnetname
  subnetname = var.subnetname
  pass       = var.pass
  diskname   = var.diskname
  nicname    = var.nicname
}
