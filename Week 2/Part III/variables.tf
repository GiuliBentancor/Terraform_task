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

variable "numberOfInstances" {
     type = map(any)
}

variable "environment" {
     type = string
     default = "dev"
}