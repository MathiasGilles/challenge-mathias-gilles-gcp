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
  default = ""
}

variable "credentials_file_name" {
  description = "name of the json file"
  type = string
  default = ""
}

variable "suffix" {
  description = "suffix for resources name"
  type        = string
  default     = "mathiasgilles"
}