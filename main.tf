module "workspaces" {
  source = "modules/terraform-tfe-workspaces"

  organization   = "cloudandaistacks"
  oauth_token_id = var.oauth_token_id
  vcs_org        = "scloudandaistacks"
  vcs_repo       = "terraform"
  #tf_version     = "1.x.y"
  workspaces         = var.workspaces
  slacks             = var.slacks
  triggers           = var.triggers
  TFC_WORKSPACE_NAME = var.TFC_WORKSPACE_NAME

  var_sets = var.var_sets

#   vars = {
#     AWS_ACCESS_KEY_ID = var.aws_access_key_id
#   }

#   sec_vars = {
#     AWS_SECRET_ACCESS_KEY = var.aws_secret_access_key
#   }
}

