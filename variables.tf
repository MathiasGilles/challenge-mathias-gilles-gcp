variable "region" {
  description = "region"
  type        = string
  default = "europe-west1"
}

variable "zone" {
  description = "zone"
  type        = string
  default = "europe-west1-d"
}

variable "project_id" {
  description = "project_id"
  type        = string
  default = "gothic-state-294710"
}

variable "credentials_file_name" {
  description = "name of the json file"
  type = string
  default = "gothic-state-294710-45f8a2da3b65.json"
}

variable "suffix" {
  description = "suffix for resources name"
  type        = string
  default     = "mathiasgilles"
}