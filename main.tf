terraform {
  required_providers {
    oci = {
      source  = "oracle/oci"
      version = "~> 5.0" # Ensure compatibility with the latest provider
    }
  }
}

provider "oci" {
  region = "us-ashburn-1"
}

resource "oci_datascience_project" "ai_project" {
  compartment_id = var.compartment_id
  display_name   = "AI Training Project"
}

resource "oci_core_subnet" "ai_subnet" {
  compartment_id = var.compartment_id
  vcn_id         = oci_core_vcn.ai_vcn.id  # Use the VCN created earlier
  cidr_block     = "10.0.0.0/16"           # Adjust based on your requirements
  display_name   = "AI Subnet"
}

resource "oci_datascience_notebook_session" "ai_notebook" {
  compartment_id = var.compartment_id
  project_id     = oci_datascience_project.ai_project.id
  display_name   = "AI Notebook"
  
  notebook_session_configuration_details {
    shape     = "VM.Standard.E3.Flex" # Free-tier compatible
    subnet_id = oci_core_subnet.ai_subnet.id  # Reference subnet_id here
  }
}

resource "oci_core_vcn" "ai_vcn" {
  compartment_id = var.compartment_id
  cidr_block     = var.vcn_cidr
  display_name   = "My AI VCN"
  dns_label      = "aivcn"
}
