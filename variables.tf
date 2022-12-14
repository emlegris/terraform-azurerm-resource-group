variable "prefix_name" {
  description = "The Prefix name which should be used for this Resource Group. Changing this forces a new Resource Group to be created."
  type        = string
}

variable "suffix_name" {
  description = "The Suffix name which should be used for this Resource Group. Changing this forces a new Resource Group to be created."
  type        = string
}

variable "location" {
  description = "The Azure Region where the Resource Group should exist. Changing this forces a new Resource Group to be created."
  type        = string
}

variable "full_env_code" {
  description = "Environment code including environment and region."
  type        = string
}

variable "management_lock_level" {
  description = "Specifies the Level to be used for this Lock. Possible values are CanNotDelete and ReadOnly. Changing this forces a new resource to be created."
  type        = string
  default     = null
}

variable "management_lock_notes" {
  description = "Specifies some notes about the lock. Maximum of 512 characters. Changing this forces a new resource to be created."
  type        = string
  default     = null
}

variable "tags" {
  description = "A mapping of tags which should be assigned to the Resource Group."
  type        = map(any)
  default     = {}
}
