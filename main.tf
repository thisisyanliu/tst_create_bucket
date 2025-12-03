terraform {
  required_providers {
    oci = {
      source = "oracle/oci"
    }
  }
}

provider "oci" {}

resource "oci_objectstorage_bucket" "demo_bucket" {
  compartment_id = var.compartment_ocid
  namespace      = var.namespace
  name           = var.bucket_name
}
