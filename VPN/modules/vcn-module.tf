module "vcn" {
  source  = "oracle-terraform-modules/vcn/oci"
  version = "3.6.0"

  compartment_id = var.compartment_ocid
  region         = var.region

  vcn_name                = var.vcn_name
  create_internet_gateway = true
  create_nat_gateway      = true
  create_service_gateway  = true

  vcn_dns_label = "vcnmodule"
  vcn_cidrs     = ["10.0.0.0/16"]
}
