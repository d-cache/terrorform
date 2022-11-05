resource "nsxt_policy_dhcp_server" "demo_dhcp_server" {
  display_name = "demo_dhcp"
  description = "Created by Terraform"
  server_addresses = [ "192.168.9.1/24" ]
}