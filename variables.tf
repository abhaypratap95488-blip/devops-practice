variable "subscription_id" {
  description = "Azure subscription ID"
  type        = string
}

variable "resource_group_name" {
  description = "Azure Resource Group name"
  type        = string
  default     = "rg-devops-practice"
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "Central India"
}
