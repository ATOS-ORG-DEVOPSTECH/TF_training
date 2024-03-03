#THIS IS EXAMPLE OF PROPERLY FILLED TFVARS
#ResourceGroup
rgname   = "A738999" #Name of existing resource group
location = "West Europe" #Azure reqion

#Tags
tags = {
  ManagedBy = "Terraform", #Deployed by Terraform
  Owner     = "Jaroslaw Kaczynski", #Your name
  Stage     = "Sejm" #Purpose of your machine eg. WebServer
}

#VNet
vnetname  = "SejmVNET" #Name of existing VNet
subnetname = "Subnet1" #Name of existing Subnet in above Vnet

#VM
pass            = "Changeme1!"
diskname        = "test"
nicname         = "test"

vm_map = {
  "vm1" = {
    name           = "VM1" #This value will be part of VM Name
    size           = "Standard_B1s" #VM Size eg. Standard_B1s https://azureprice.net/
    admin_password = "Changeme1!"
    additional_security_rules = [
      {  #Adjust security rules to your needs (SSH and RDP are added by module!)
        name                       = "Allow http"
        priority                   = 200
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "Tcp"
        source_port_range          = "*"
        destination_port_range     = "80"
        source_address_prefix      = "*"
        destination_address_prefix = "*"
      },
      {
        name                       = "Allow https"
        priority                   = 210
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "Tcp"
        source_port_range          = "*"
        destination_port_range     = "443"
        source_address_prefix      = "*"
        destination_address_prefix = "*"
      }]
  },
   "vm2" = {  #Example piece of code for second VM, adjust to your needs or remove if its not needed
     name           = "VM2"
     size           = "Standard_B1s"
     admin_password = "Changeme1!"
     security_rules = [{
        name                       = "Allow http"
        priority                   = 200
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "Tcp"
        source_port_range          = "*"
        destination_port_range     = "80"
        source_address_prefix      = "*"
        destination_address_prefix = "*"
       },
    ]
   }
}
