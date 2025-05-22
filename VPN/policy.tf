resource "oci_identity_policy" "compartment_policy" {
  name           = "manage-${var.compartment_name}-resources"
  description    = "Allow users to list, create, update, and delete resources in ${var.compartment_name}."
  compartment_id = var.compartment_ocid

  statements = [
    "Allow group ${var.group_name} to manage all-resources in compartment ${var.compartment_name}"
  ]
}
