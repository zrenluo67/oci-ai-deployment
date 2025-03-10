output "notebook_url" {
  value = oci_datascience_notebook_session.ai_notebook.notebook_session_url
}

output "bucket_url" {
  value = "https://objectstorage.us-ashburn-1.oraclecloud.com/n/your-oci-namespace/b/ai-training-data"
}
