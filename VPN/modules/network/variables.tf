variable "compartment_ocid" {
  description = "OCID do compartimento onde os recursos serão criados"
  type        = string
}

variable "region" {
  description = "Região do Oracle Cloud"
  type        = string
}

variable "vcn_name" {
  description = "Nome da VCN"
  type        = string
  default     = "tutorial-vcn"
}
