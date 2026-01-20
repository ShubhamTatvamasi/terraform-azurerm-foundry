variable "prefix" {
  description = "Prefix for all resources."
  type        = string
  default     = "foundry"
}

variable "location" {
  description = "The Azure region to deploy resources into."
  type        = string
  default     = "East US2"
}

variable "subscription_id" {
  description = "The subscription ID to deploy resources into."
  type        = string
}
