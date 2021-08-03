# Copyright (c) 2016, 2021, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

module OCI
  module Artifacts
    # Module containing models for requests made to, and responses received from,
    # OCI Artifacts services
    module Models
    end
  end
end

# Require models
require 'oci/artifacts/models/change_container_repository_compartment_details'
require 'oci/artifacts/models/change_repository_compartment_details'
require 'oci/artifacts/models/container_configuration'
require 'oci/artifacts/models/container_image'
require 'oci/artifacts/models/container_image_collection'
require 'oci/artifacts/models/container_image_layer'
require 'oci/artifacts/models/container_image_signature'
require 'oci/artifacts/models/container_image_signature_collection'
require 'oci/artifacts/models/container_image_signature_summary'
require 'oci/artifacts/models/container_image_summary'
require 'oci/artifacts/models/container_repository'
require 'oci/artifacts/models/container_repository_collection'
require 'oci/artifacts/models/container_repository_readme'
require 'oci/artifacts/models/container_repository_summary'
require 'oci/artifacts/models/container_version'
require 'oci/artifacts/models/create_container_image_signature_details'
require 'oci/artifacts/models/create_container_repository_details'
require 'oci/artifacts/models/create_generic_repository_details'
require 'oci/artifacts/models/create_repository_details'
require 'oci/artifacts/models/generic_artifact'
require 'oci/artifacts/models/generic_artifact_collection'
require 'oci/artifacts/models/generic_artifact_summary'
require 'oci/artifacts/models/generic_repository'
require 'oci/artifacts/models/generic_repository_summary'
require 'oci/artifacts/models/remove_container_version_details'
require 'oci/artifacts/models/repository'
require 'oci/artifacts/models/repository_collection'
require 'oci/artifacts/models/repository_summary'
require 'oci/artifacts/models/restore_container_image_details'
require 'oci/artifacts/models/update_container_configuration_details'
require 'oci/artifacts/models/update_container_repository_details'
require 'oci/artifacts/models/update_generic_artifact_by_path_details'
require 'oci/artifacts/models/update_generic_artifact_details'
require 'oci/artifacts/models/update_generic_repository_details'
require 'oci/artifacts/models/update_repository_details'

# Require generated clients
require 'oci/artifacts/artifacts_client'
require 'oci/artifacts/artifacts_client_composite_operations'

# Require service utilities
require 'oci/artifacts/util'
