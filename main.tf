variable "rg_names1" {
    type = map(string)
}

resource "azurerm_resource_group" "rg_grp1" {
for_each = var.rg_names1
  name = each.key
  location = each.value
}