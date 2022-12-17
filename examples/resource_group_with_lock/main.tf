module "rg" {
  source = "../.."

  prefix_name           = "web"
  suffix_name           = "ngx"
  full_env_code         = "lab-cc"
  location              = "canadacentral"
  management_lock_level = "CanNotDelete"
  management_lock_notes = "This resource is protected"
  create                = true
  tags = {
    "Environment" = "lab"
    "Deployment"  = "terraform"
  }
}
