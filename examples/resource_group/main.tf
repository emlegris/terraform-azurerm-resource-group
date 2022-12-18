module "rg" {
  source = "../.."

  create                = var.create
  prefix_name           = var.prefix_name
  suffix_name           = var.suffix_name
  full_env_code         = var.full_env_code
  location              = var.location
  management_lock_level = var.management_lock_level
  management_lock_notes = var.management_lock_notes

  tags = {
    "Environment" = "lab"
    "Deployment"  = "terraform"
  }
}
