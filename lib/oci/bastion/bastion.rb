# Copyright (c) 2016, 2021, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

module OCI
  module Bastion
    # Module containing models for requests made to, and responses received from,
    # OCI Bastion services
    module Models
    end
  end
end

# Require models
require 'oci/bastion/models/action_type'
require 'oci/bastion/models/bastion'
require 'oci/bastion/models/bastion_lifecycle_state'
require 'oci/bastion/models/bastion_summary'
require 'oci/bastion/models/change_bastion_compartment_details'
require 'oci/bastion/models/create_bastion_details'
require 'oci/bastion/models/create_managed_ssh_session_target_resource_details'
require 'oci/bastion/models/create_port_forwarding_session_target_resource_details'
require 'oci/bastion/models/create_session_details'
require 'oci/bastion/models/create_session_target_resource_details'
require 'oci/bastion/models/managed_ssh_session_target_resource_details'
require 'oci/bastion/models/operation_status'
require 'oci/bastion/models/operation_type'
require 'oci/bastion/models/port_forwarding_session_target_resource_details'
require 'oci/bastion/models/public_key_details'
require 'oci/bastion/models/session'
require 'oci/bastion/models/session_lifecycle_state'
require 'oci/bastion/models/session_summary'
require 'oci/bastion/models/session_type'
require 'oci/bastion/models/sort_order'
require 'oci/bastion/models/target_resource_details'
require 'oci/bastion/models/update_bastion_details'
require 'oci/bastion/models/update_session_details'
require 'oci/bastion/models/work_request'
require 'oci/bastion/models/work_request_error'
require 'oci/bastion/models/work_request_log_entry'
require 'oci/bastion/models/work_request_resource'
require 'oci/bastion/models/work_request_summary'

# Require generated clients
require 'oci/bastion/bastion_client'
require 'oci/bastion/bastion_client_composite_operations'

# Require service utilities
require 'oci/bastion/util'