resource "oci_objectstorage_bucket" "ai_data_bucket" {
  compartment_id = var.compartment_id
  namespace      = "axwndbj4e3nc"
  name           = "ai-training-data"
  storage_tier   = "Standard"
}
