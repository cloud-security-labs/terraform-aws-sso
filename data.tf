data "aws_organizations_organization" "this" {}

data "aws_ssoadmin_instances" "this" {}

data "aws_identitystore_group" "this" {
  for_each          = local.group_list
  identity_store_id = local.identity_store_id
  filter {
    attribute_path  = "DisplayName"
    attribute_value = each.key
  }
}

# Future use
# data "aws_identitystore_user" "this" {
#
# }
