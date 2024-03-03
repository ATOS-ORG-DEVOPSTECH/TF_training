#ResourceGroup
rgname   = "" #Name of existing resource group
location = "West Europe" #Azure reqion

#Tags
tags = {
  ManagedBy = "", #Deployed by Terraform
  Owner     = "", #Your name
  Stage     = "" #Purpose of your machine eg. WebServer
}

#VNet
vnetname  = "" #Name of existing VNet
subnetname = "" #Name of existing Subnet in above Vnet

#VM
pass            = "Changeme1!"
diskname        = "test"
nicname         = "test"

vm_map = {
  "vm1" = {
    name           = "" #This value will be part of VM Name
    size           = "" #VM Size eg. Standard_B1s https://azureprice.net/
    admin_password = "Changeme1!"
    additional_security_rules = []
  }
}
