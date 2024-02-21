output "endpoint_ocid" {
  value = try(var.create_custom_endpoint ? oci_generative_ai_endpoint.endpoint[0].id: "Not Applicable","NA")
}