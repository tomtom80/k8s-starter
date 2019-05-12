resource "ibm_container_cluster" "kubernetes_cluster" {
  name            = "tomKube"
  datacenter      = "fra01"
  machine_type    = "free"
  hardware        = "shared"
  public_vlan_id  = "vlan"
  private_vlan_id = "vlan"
  subnet_id       = ["1154643"]
  region          = "eu-de"

  default_pool_size      = 1

  org_guid     = "test"
  space_guid   = "test_space"
  account_guid = "test_acc"
}