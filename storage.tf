resource "oci_objectstorage_bucket" "ai_data_bucket" {
  compartment_id = var.compartment_id
  namespace      = "your-oci-namespace"
  name           = "ai-training-data"
  storage_tier   = "Standard"
}
