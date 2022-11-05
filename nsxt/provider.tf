terraform {
  required_providers {
    nsxt = {
      source = "vmware/nsxt"
    }
  }
}

provider "nsxt" {
  host                 = "10.2.10.15"
  username             = "admin"
  password             = "VMware2@VMware2@"
  allow_unverified_ssl = true
  max_retries          = 3
}