resource "oci_core_security_list" "private-security-list" {
  compartment_id = var.compartment_ocid
  vcn_id         = module.vcn.vcn_id

  display_name = "security-list-for-private-subnet"
}
