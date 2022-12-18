locals {
  rg_name = lower(format("rg-%s-%s-%s-%s", var.prefix_name, var.full_env_code, var.suffix_name, var.create == true ? random_string.random_4[0].result : ""))
}