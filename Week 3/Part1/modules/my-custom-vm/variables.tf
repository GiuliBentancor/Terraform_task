variable "size" {
     type    = string
}

variable "location" {
     type = string
}

variable "resource_group_name" {
     type = string
}

variable "subnet_id" {
     type = string 
}
variable "instance_name" {
     type = string
}

variable "network_interface_name" {
     type = string
}

## Others
variable "adminusername_vm" {
     type    = string
     default = "adminuser"
}

variable "computername_vm" { 
     type = string 
     default = "week3server"
}