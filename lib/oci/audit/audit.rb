# Copyright (c) 2016, 2021, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

module OCI
  module Audit
    # Module containing models for requests made to, and responses received from,
    # OCI Audit services
    module Models
    end
  end
end

# Require models
require 'oci/audit/models/audit_event'
require 'oci/audit/models/configuration'
require 'oci/audit/models/data'
require 'oci/audit/models/identity'
require 'oci/audit/models/request'
require 'oci/audit/models/response'
require 'oci/audit/models/state_change'
require 'oci/audit/models/update_configuration_details'

# Require generated clients
require 'oci/audit/audit_client'
require 'oci/audit/audit_client_composite_operations'

# Require service utilities
require 'oci/audit/util'
