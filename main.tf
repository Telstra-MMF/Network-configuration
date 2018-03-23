### IP Network : Network Exchange ###
  #### Prod ####
resource "opc_compute_ip_network_exchange" "cla-intocm-ipx001" {
	name                = "cla-intocm-ipx001"
	description			= "Prod OCM -IP Exchange No 1 - IP Exchange for Clayton Intocm prod network"
	tags 				= [ "cla-intocm-prod" ]
}

  #### Non-Prod ####
resource "opc_compute_ip_network_exchange" "cla-npintocm-ipx001" {
	name                = "cla-npintocm-ipx001"
	description			= "Prod OCM -IP Exchange No 1 - IP Exchange for Clayton NpIntocm non prod network"
	tags 				= [ "cla-npintocm-nonprod" ]
}

/***************************************************************************************************************************************/

### IP Network : IP Networks ###
  #### Prod ####
	##### Prod : Tidrans ##### 
resource "opc_compute_ip_network" "cla-intocm-wloc-tidrans" {
  name                = "cla-intocm-wloc-tidrans"
  description         = "cla-intocm-wloc-tidrans"
  ip_address_prefix   = "10.195.68.0/24"
  ip_network_exchange = "${opc_compute_ip_network_exchange.cla-intocm-ipx001.name}"
  public_napt_enabled = false
}

	##### Prod : Admin ##### 
resource "opc_compute_ip_network" "cla-intocm-wloc-admin" {
  name                = "cla-intocm-wloc-admin"
  description         = "cla-intocm-wloc-admin"
  ip_address_prefix   = "10.195.69.0/24"
  ip_network_exchange = "${opc_compute_ip_network_exchange.cla-intocm-ipx001.name}"
  public_napt_enabled = false
}

	##### Prod : Shared ##### 
resource "opc_compute_ip_network" "cla-intocm-wloc-shared" {
  name                = "cla-intocm-wloc-shared"
  description         = "cla-intocm-wloc-shared"
  ip_address_prefix   = "10.195.72.0/24"
  ip_network_exchange = "${opc_compute_ip_network_exchange.cla-intocm-ipx001.name}"
  public_napt_enabled = false
}

	##### Prod : MMF ##### 
resource "opc_compute_ip_network" "cla-intocm-wloc-mmf001" {
  name                = "cla-intocm-wloc-mmf001"
  description         = "cla-intocm-wloc-mmf001"
  ip_address_prefix   = "10.195.73.0/24"
  ip_network_exchange = "${opc_compute_ip_network_exchange.cla-intocm-ipx001.name}"
  public_napt_enabled = false
}

  #### Non-Prod ####
	##### Non-Prod : Tidrans ##### 
resource "opc_compute_ip_network" "cla-npintocm-wloc-tidrans" {
  name                = "cla-npintocm-wloc-tidrans"
  description         = "cla-npintocm-wloc-tidrans"
  ip_address_prefix   = "10.195.70.0/24"
  ip_network_exchange = "${opc_compute_ip_network_exchange.cla-npintocm-ipx001.name}"
  public_napt_enabled = false
}

	##### Non-Prod : Admin ##### 
resource "opc_compute_ip_network" "cla-npintocm-wloc-admin" {
  name                = "cla-npintocm-wloc-admin"
  description         = "cla-npintocm-wloc-admin"
  ip_address_prefix   = "10.195.71.0/24"
  ip_network_exchange = "${opc_compute_ip_network_exchange.cla-npintocm-ipx001.name}"
  public_napt_enabled = false
}

	##### Non-Prod : Shared ##### 
resource "opc_compute_ip_network" "cla-npintocm-wloc-shared" {
  name                = "cla-npintocm-wloc-shared"
  description         = "cla-npintocm-wloc-shared"
  ip_address_prefix   = "10.195.76.0/24"
  ip_network_exchange = "${opc_compute_ip_network_exchange.cla-npintocm-ipx001.name}"
  public_napt_enabled = false
}

	##### Non-Prod : MMF ##### 
resource "opc_compute_ip_network" "cla-npintocm-wloc-mmf001" {
  name                = "cla-npintocm-wloc-mmf001"
  description         = "cla-npintocm-wloc-mmf001"
  ip_address_prefix   = "10.195.77.0/24"
  ip_network_exchange = "${opc_compute_ip_network_exchange.cla-npintocm-ipx001.name}"
  public_napt_enabled = false
}

/***************************************************************************************************************************************/

### IP Network : ACL ###
  #### Prod ####
	##### Prod : Tidrans ##### 
resource "opc_compute_acl" "cla-intocm-wloc-tidrans-acl001" {
  name        = "cla-intocm-wloc-tidrans-acl001"
  enabled	  = true
  description = "External ACL for cla-intocm-wloc-tidrans IP Network"
  tags        = [ "cla-intocm-nonprod" ]
}

resource "opc_compute_acl" "cla-intocm-wloc-tidrans-acl002" {
  name        = "cla-intocm-wloc-tidrans-acl002"
  enabled	  = true
  description = "Internal ACL for cla-intocm-wloc-tidrans IP Network"
  tags        = [ "cla-intocm-nonprod" ]
}

	##### Prod : Admin ##### 
resource "opc_compute_acl" "cla-intocm-wloc-admin-acl001" {
  name        = "cla-intocm-wloc-admin-acl001"
  enabled	  = true
  description = "External ACL for cla-intocm-wloc-admin IP Network"
  tags        = [ "cla-intocm-nonprod" ]
}

resource "opc_compute_acl" "cla-intocm-wloc-admin-acl002" {
  name        = "cla-intocm-wloc-admin-acl002"
  enabled	  = true
  description = "Internal ACL for cla-intocm-wloc-admin IP Network"
  tags        = [ "cla-intocm-nonprod" ]
}

	##### Prod : Shared ##### 
resource "opc_compute_acl" "cla-intocm-wloc-shared-acl001" {
  name        = "cla-intocm-wloc-shared-acl001"
  enabled	  = true
  description = "External ACL for cla-intocm-wloc-shared IP Network"
  tags        = [ "cla-intocm-nonprod" ]
}

resource "opc_compute_acl" "cla-intocm-wloc-shared-acl002" {
  name        = "cla-intocm-wloc-shared-acl002"
  enabled	  = true
  description = "Internal ACL for cla-intocm-wloc-shared IP Network"
  tags        = [ "cla-intocm-nonprod" ]
}

    ##### Prod : MMF ##### 
resource "opc_compute_acl" "cla-intocm-wloc-mmf001-acl001" {
  name        = "cla-intocm-wloc-mmf001-acl001"
  enabled	  = true
  description = "External ACL for cla-intocm-wloc-mmf001 IP Network"
  tags        = [ "cla-intocm-nonprod" ]
}

resource "opc_compute_acl" "cla-intocm-wloc-mmf001-acl002" {
  name        = "cla-intocm-wloc-mmf001-acl002"
  enabled	  = true
  description = "Internal ACL for cla-intocm-wloc-mmf001 IP Network"
  tags        = [ "cla-intocm-nonprod" ]
}


  #### Non-Prod ####
	##### Non-Prod : Tidrans ##### 
resource "opc_compute_acl" "cla-npintocm-wloc-tidrans-acl001" {
  name        = "cla-npintocm-wloc-tidrans-acl001"
  enabled	  = true
  description = "External ACL for cla-npintocm-wloc-tidrans IP Network"
  tags        = [ "cla-npintocm-nonprod" ]
}

resource "opc_compute_acl" "cla-npintocm-wloc-tidrans-acl002" {
  name        = "cla-npintocm-wloc-tidrans-acl002"
  enabled	  = true
  description = "Internal ACL for cla-npintocm-wloc-tidrans IP Network"
  tags        = [ "cla-npintocm-nonprod" ]
}

	##### Non-Prod : Admin ##### 
resource "opc_compute_acl" "cla-npintocm-wloc-admin-acl001" {
  name        = "cla-npintocm-wloc-admin-acl001"
  enabled	  = true
  description = "External ACL for cla-npintocm-wloc-admin IP Network"
  tags        = [ "cla-npintocm-nonprod" ]
}

resource "opc_compute_acl" "cla-npintocm-wloc-admin-acl002" {
  name        = "cla-npintocm-wloc-admin-acl002"
  enabled	  = true
  description = "Internal ACL for cla-npintocm-wloc-admin IP Network"
  tags        = [ "cla-npintocm-nonprod" ]
}

  ##### Non-Prod : Shared ##### 
resource "opc_compute_acl" "cla-npintocm-wloc-shared-acl001" {
  name        = "cla-npintocm-wloc-shared-acl001"
  enabled	  = true
  description = "External ACL for cla-npintocm-wloc-shared IP Network"
  tags        = [ "cla-npintocm-nonprod" ]
}

resource "opc_compute_acl" "cla-npintocm-wloc-shared-acl002" {
  name        = "cla-npintocm-wloc-shared-acl002"
  enabled	  = true
  description = "Internal ACL for cla-npintocm-wloc-shared IP Network"
  tags        = [ "cla-npintocm-nonprod" ]
}

    ##### Non-Prod : MMF ##### 
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

/***************************************************************************************************************************************/

### IP Network : vNIC Sets ###
  #### Prod ####
	##### Prod : Tidrans #####
resource "opc_compute_vnic_set" "cla-intocm-wloc-tidrans-vnic001" {
  name         = "cla-intocm-wloc-tidrans-vnic001"
  description  = "External vNICset for cla-intocm-wloc-tidrans IP Network"
  applied_acls = ["cla-intocm-wloc-tidrans-acl001"]
  virtual_nics = [""]
  tags         = ["cla-intocm-prod"]
}

resource "opc_compute_vnic_set" "cla-intocm-wloc-tidrans-vnic002" {
  name         = "cla-intocm-wloc-tidrans-vnic002"
  description  = "Internal vNICset for cla-intocm-wloc-tidrans IP Network"
  applied_acls = ["cla-intocm-wloc-tidrans-acl002"]
  virtual_nics = [""]
  tags         = ["cla-intocm-prod"]
}

	##### Prod : Admin #####
resource "opc_compute_vnic_set" "cla-intocm-wloc-admin-vnic001" {
  name         = "cla-intocm-wloc-admin-vnic001"
  description  = "External vNICset for cla-intocm-wloc-admin IP Network"
  applied_acls = ["cla-intocm-wloc-admin-acl001"]
  virtual_nics = [""]
  tags         = ["cla-intocm-prod"]
}

resource "opc_compute_vnic_set" "cla-intocm-wloc-admin-vnic002" {
  name         = "cla-intocm-wloc-admin-vnic002"
  description  = "Internal vNICset for cla-intocm-wloc-admin IP Network"
  applied_acls = ["cla-intocm-wloc-admin-acl002"]
  virtual_nics = [""]
  tags         = ["cla-intocm-prod"]
}

	##### Prod : Shared #####
resource "opc_compute_vnic_set" "cla-intocm-wloc-shared-vnic001" {
  name         = "cla-intocm-wloc-shared-vnic001"
  description  = "External vNICset for cla-intocm-wloc-shared IP Network"
  applied_acls = ["cla-intocm-wloc-shared-acl001"]
  virtual_nics = [""]
  tags         = ["cla-intocm-prod"]
}

resource "opc_compute_vnic_set" "cla-intocm-wloc-shared-vnic002" {
  name         = "cla-intocm-wloc-shared-vnic002"
  description  = "Internal vNICset for cla-intocm-wloc-shared IP Network"
  applied_acls = ["cla-intocm-wloc-shared-acl002"]
  virtual_nics = [""]
  tags         = ["cla-intocm-prod"]
}

	##### Prod : MMF #####
resource "opc_compute_vnic_set" "cla-intocm-wloc-mmf001-vnic001" {
  name         = "cla-intocm-wloc-mmf001-vnic001"
  description  = "External vNICset for cla-intocm-wloc-mmf001 IP Network"
  applied_acls = ["cla-intocm-wloc-mmf001-acl001"]
  virtual_nics = [""]
  tags         = ["cla-intocm-prod"]
}

resource "opc_compute_vnic_set" "cla-intocm-wloc-mmf001-vnic002" {
  name         = "cla-intocm-wloc-mmf001-vnic002"
  description  = "Internal vNICset for cla-intocm-wloc-mmf001 IP Network"
  applied_acls = ["cla-intocm-wloc-mmf001-acl002"]
  virtual_nics = [""]
  tags         = ["cla-intocm-prod"]
}

  #### Non-Prod ####
	##### Non-Prod : Tidrans #####
resource "opc_compute_vnic_set" "cla-npintocm-wloc-tidrans-vnic001" {
  name         = "cla-npintocm-wloc-tidrans-vnic001"
  description  = "External vNICset for cla-npintocm-wloc-tidrans IP Network"
  applied_acls = ["cla-npintocm-wloc-tidrans-acl001"]
  virtual_nics = [""]
  tags         = ["cla-npintocm-nonprod"]
}

resource "opc_compute_vnic_set" "cla-npintocm-wloc-tidrans-vnic002" {
  name         = "cla-npintocm-wloc-tidrans-vnic002"
  description  = "Internal vNICset for cla-npintocm-wloc-tidrans IP Network"
  applied_acls = ["cla-npintocm-wloc-tidrans-acl002"]
  virtual_nics = [""]
  tags         = ["cla-npintocm-nonprod"]
}

	##### Non-Prod : Admin #####
resource "opc_compute_vnic_set" "cla-npintocm-wloc-admin-vnic001" {
  name         = "cla-npintocm-wloc-admin-vnic001"
  description  = "External vNICset for cla-npintocm-wloc-admin IP Network"
  applied_acls = ["cla-npintocm-wloc-admin-acl001"]
  virtual_nics = [""]
  tags         = ["cla-npintocm-nonprod"]
}

resource "opc_compute_vnic_set" "cla-npintocm-wloc-admin-vnic002" {
  name         = "cla-npintocm-wloc-admin-vnic002"
  description  = "Internal vNICset for cla-npintocm-wloc-admin IP Network"
  applied_acls = ["cla-npintocm-wloc-admin-acl002"]
  virtual_nics = [""]
  tags         = ["cla-npintocm-nonprod"]
}

	##### Non-Prod : Shared #####
resource "opc_compute_vnic_set" "cla-npintocm-wloc-shared-vnic001" {
  name         = "cla-npintocm-wloc-shared-vnic001"
  description  = "External vNICset for cla-npintocm-wloc-shared IP Network"
  applied_acls = ["cla-npintocm-wloc-shared-acl001"]
  virtual_nics = [""]
  tags         = ["cla-npintocm-nonprod"]
}

resource "opc_compute_vnic_set" "cla-npintocm-wloc-shared-vnic002" {
  name         = "cla-npintocm-wloc-shared-vnic002"
  description  = "Internal vNICset for cla-npintocm-wloc-shared IP Network"
  applied_acls = ["cla-npintocm-wloc-shared-acl002"]
  virtual_nics = [""]
  tags         = ["cla-npintocm-nonprod"]
}

	##### Non-Prod : MMF #####
resource "opc_compute_vnic_set" "cla-npintocm-wloc-mmf001-vnic001" {
  name         = "cla-npintocm-wloc-mmf001-vnic001"
  description  = "External vNICset for cla-npintocm-wloc-mmf001 IP Network"
  applied_acls = ["cla-npintocm-wloc-mmf001-acl001"]
  virtual_nics = [""]
  tags         = ["cla-npintocm-nonprod"]
}

resource "opc_compute_vnic_set" "cla-npintocm-wloc-mmf001-vnic002" {
  name         = "cla-npintocm-wloc-mmf001-vnic002"
  description  = "Internal vNICset for cla-npintocm-wloc-mmf001 IP Network"
  applied_acls = ["cla-npintocm-wloc-mmf001-acl002"]
  virtual_nics = [""]
  tags         = ["cla-npintocm-nonprod"]
}

/***************************************************************************************************************************************/