variable "size_vm" {
     type    = string
     default = "Standard_F2"
}

variable "adminusername_vm" {
     type    = string
     default = "adminuser"
}

variable "computername_vm" { 
     type = string 
     default = "week2server"
}
variable "location" {
     type = string
}

variable "resource_group_name" {
     type = string
}

variable "ssh_vm"{
     type = string
}