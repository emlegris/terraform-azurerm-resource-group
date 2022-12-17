module "rg" {
  source = "../.."

  prefix_name   = "web"
  suffix_name   = "ngx"
  full_env_code = "lab-cc"
  location      = "canadacentral"
  create        = true
  tags = {
    "Environment" = "lab"
    "Deployment"  = "terraform"
  }
}
