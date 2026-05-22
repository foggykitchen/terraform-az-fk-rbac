module "rbac" {
  source = "github.com/foggykitchen/terraform-az-fk-rbac"

  scope                = azurerm_resource_group.foggykitchen_rg.id
  principal_id         = azuread_group.readers.object_id
  role_definition_name = var.role_definition_name
}
