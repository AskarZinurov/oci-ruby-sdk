# Copyright (c) 2016, 2021, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

module OCI
  module Cims
    # Module containing models for requests made to, and responses received from,
    # OCI Cims services
    module Models
    end
  end
end

# Require models
require 'oci/cims/models/activity_item'
require 'oci/cims/models/availability_domain'
require 'oci/cims/models/category'
require 'oci/cims/models/classifier'
require 'oci/cims/models/contact'
require 'oci/cims/models/contact_list'
require 'oci/cims/models/contextual_data'
require 'oci/cims/models/create_category_details'
require 'oci/cims/models/create_incident'
require 'oci/cims/models/create_issue_type_details'
require 'oci/cims/models/create_item_details'
require 'oci/cims/models/create_limit_item_details'
require 'oci/cims/models/create_resource_details'
require 'oci/cims/models/create_sub_category_details'
require 'oci/cims/models/create_tech_support_item_details'
require 'oci/cims/models/create_ticket_details'
require 'oci/cims/models/create_user_details'
require 'oci/cims/models/error_code'
require 'oci/cims/models/incident'
require 'oci/cims/models/incident_resource_type'
require 'oci/cims/models/incident_summary'
require 'oci/cims/models/incident_type'
require 'oci/cims/models/issue_type'
require 'oci/cims/models/item'
require 'oci/cims/models/lifecycle_details'
require 'oci/cims/models/lifecycle_state'
require 'oci/cims/models/limit_item'
require 'oci/cims/models/problem_type'
require 'oci/cims/models/region'
require 'oci/cims/models/resource'
require 'oci/cims/models/scope'
require 'oci/cims/models/service_category'
require 'oci/cims/models/sort_by'
require 'oci/cims/models/sort_order'
require 'oci/cims/models/status'
require 'oci/cims/models/sub_category'
require 'oci/cims/models/tech_support_item'
require 'oci/cims/models/tenancy_information'
require 'oci/cims/models/ticket'
require 'oci/cims/models/time_zone'
require 'oci/cims/models/unit'
require 'oci/cims/models/update_activity_item_details'
require 'oci/cims/models/update_incident'
require 'oci/cims/models/update_item_details'
require 'oci/cims/models/update_resource_details'
require 'oci/cims/models/update_ticket_details'
require 'oci/cims/models/user'
require 'oci/cims/models/validation_response'

# Require generated clients
require 'oci/cims/incident_client'
require 'oci/cims/user_client'

# Require service utilities
require 'oci/cims/util'
