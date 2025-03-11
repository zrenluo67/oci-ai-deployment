variable "compartment_id" {
  description = "The OCID of the compartment where resources will be created"
  type        = string
}

variable "region" {
  description = "OCI region"
  type        = string
  default     = "ap-singapore-1"
}

variable "vcn_cidr" {
  description = "CIDR block for the VCN"
  type        = string
  default     = "10.0.0.0/16"
}

variable "user_ocid" {
  description = "The OCID of your user"
  type        = string
}

variable "fingerprint" {
  description = "The fingerprint for your API key"
  type        = string
}

variable "private_key_path" {
  description = "Path to your private key file"
  type        = string
}

variable "tenancy_ocid" {
  description = "The OCID of your Oracle Cloud tenancy"
  type        = string
}