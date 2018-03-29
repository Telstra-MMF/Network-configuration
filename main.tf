### ENVIRONMENT ###
###################
provider "opc" {
   user                = "${var.ociUser}"
   password            = "${var.ociPass}"
   identity_domain     = "${var.idDomain}"
   endpoint            = "${var.apiEndpoint}"
}

### IP Network : Network Exchange ###
resource "opc_compute_ip_network_exchange" "cla-npintocm-ipx001" {
	name                = "cla-npintocm-ipx001"
	description			= "Prod OCM -IP Exchange No 1 - IP Exchange for Clayton NpIntocm non prod network"
	tags 				= [ "cla-npintocm-nonprod" ]
}

### IP Network : IP Networks ###
resource "opc_compute_ip_network" "cla-npintocm-wloc-mmf001" {
  name                = "cla-npintocm-wloc-mmf001"
  description         = "cla-npintocm-wloc-mmf001"
  ip_address_prefix   = "10.195.77.0/24"
  ip_network_exchange = "${opc_compute_ip_network_exchange.cla-npintocm-ipx001.name}"
  public_napt_enabled = false
}

### IP Network : vNIC Sets ###
resource "opc_compute_vnic_set" "cla-npintocm-wloc-mmf001-vnic001" {
  name         = "cla-npintocm-wloc-mmf001-vnic001"
  description  = "External vNICset for cla-npintocm-wloc-mmf001 IP Network"
  applied_acls = ["cla-npintocm-wloc-mmf001-acl001"]
  tags         = ["cla-npintocm-nonprod"]
}

resource "opc_compute_vnic_set" "cla-npintocm-wloc-mmf001-vnic002" {
  name         = "cla-npintocm-wloc-mmf001-vnic002"
  description  = "Internal vNICset for cla-npintocm-wloc-mmf001 IP Network"
  applied_acls = ["cla-npintocm-wloc-mmf001-acl002"]
  tags         = ["cla-npintocm-nonprod"]
}

### IP Network : ACL ###
resource "opc_compute_acl" "cla-npintocm-wloc-mmf001-acl001" {
  name        = "cla-npintocm-wloc-mmf001-acl001"
  enabled	  = true
  description = "External ACL for cla-npintocm-wloc-mmf001 IP Network"
  tags        = [ "cla-npintocm-nonprod" ]
}

resource "opc_compute_acl" "cla-npintocm-wloc-mmf001-acl002" {
  name        = "cla-npintocm-wloc-mmf001-acl002"
  enabled	  = true
  description = "Internal ACL for cla-npintocm-wloc-mmf001 IP Network"
  tags        = [ "cla-npintocm-nonprod" ]
}
	

