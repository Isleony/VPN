resource "oci_core_security_list" "private-security-list" {
  compartment_id = var.compartment_ocid
  vcn_id         = module.vcn.vcn_id

  display_name = "security-list-for-private-subnet"

  # Regras de entrada (Ingress)
  ingress_security_rules {
    protocol    = "tcp"
    source      = "0.0.0.0/0"
    source_type = "CIDR_BLOCK"
    tcp_options {
      min = 22  # SSH
      max = 22
    }
  }

  ingress_security_rules {
    protocol    = "tcp"
    source      = "0.0.0.0/0"
    source_type = "CIDR_BLOCK"
    tcp_options {
      min = 443  # HTTPS
      max = 443
    }
  }

  # Regras de saída (Egress)
  egress_security_rules {
    protocol    = "all"
    destination = "0.0.0.0/0"
    destination_type = "CIDR_BLOCK"
  }
}
