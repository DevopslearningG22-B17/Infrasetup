module "resource_group" {
    source = "../../Module/Azurerm_Resource_group"
    resource_group = var.prod_resource_group
  
}

variable "prod_resource_group" {
    type = map(any)
}