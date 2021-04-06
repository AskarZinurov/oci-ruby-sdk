# Copyright (c) 2016, 2021, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

module OCI
  module DatabaseManagement
    # Module containing models for requests made to, and responses received from,
    # OCI DatabaseManagement services
    module Models
    end
  end
end

# Require models
require 'oci/database_management/models/activity_time_series_metrics'
require 'oci/database_management/models/add_managed_database_to_managed_database_group_details'
require 'oci/database_management/models/allowed_parameter_value'
require 'oci/database_management/models/change_database_parameter_details'
require 'oci/database_management/models/change_database_parameters_details'
require 'oci/database_management/models/change_job_compartment_details'
require 'oci/database_management/models/change_managed_database_group_compartment_details'
require 'oci/database_management/models/child_database'
require 'oci/database_management/models/compare_type'
require 'oci/database_management/models/create_job_details'
require 'oci/database_management/models/create_managed_database_group_details'
require 'oci/database_management/models/create_sql_job_details'
require 'oci/database_management/models/database_credentials'
require 'oci/database_management/models/database_fleet_health_metrics'
require 'oci/database_management/models/database_home_metric_definition'
require 'oci/database_management/models/database_home_metrics'
require 'oci/database_management/models/database_io_aggregate_metrics'
require 'oci/database_management/models/database_parameter_summary'
require 'oci/database_management/models/database_parameter_update_status'
require 'oci/database_management/models/database_parameters_collection'
require 'oci/database_management/models/database_status'
require 'oci/database_management/models/database_storage_aggregate_metrics'
require 'oci/database_management/models/database_sub_type'
require 'oci/database_management/models/database_time_aggregate_metrics'
require 'oci/database_management/models/database_type'
require 'oci/database_management/models/database_usage_metrics'
require 'oci/database_management/models/datafile'
require 'oci/database_management/models/fleet_metric_definition'
require 'oci/database_management/models/fleet_metric_summary_definition'
require 'oci/database_management/models/fleet_status_by_category'
require 'oci/database_management/models/fleet_summary'
require 'oci/database_management/models/job'
require 'oci/database_management/models/job_collection'
require 'oci/database_management/models/job_database'
require 'oci/database_management/models/job_execution'
require 'oci/database_management/models/job_execution_collection'
require 'oci/database_management/models/job_execution_result_details'
require 'oci/database_management/models/job_execution_result_location'
require 'oci/database_management/models/job_execution_summary'
require 'oci/database_management/models/job_run'
require 'oci/database_management/models/job_run_collection'
require 'oci/database_management/models/job_run_summary'
require 'oci/database_management/models/job_summary'
require 'oci/database_management/models/job_types'
require 'oci/database_management/models/lifecycle_states'
require 'oci/database_management/models/managed_database'
require 'oci/database_management/models/managed_database_collection'
require 'oci/database_management/models/managed_database_group'
require 'oci/database_management/models/managed_database_group_collection'
require 'oci/database_management/models/managed_database_group_summary'
require 'oci/database_management/models/managed_database_summary'
require 'oci/database_management/models/memory_aggregate_metrics'
require 'oci/database_management/models/metric_data_point'
require 'oci/database_management/models/metric_dimension_definition'
require 'oci/database_management/models/object_storage_job_execution_result_details'
require 'oci/database_management/models/object_storage_job_execution_result_location'
require 'oci/database_management/models/parameter_scope'
require 'oci/database_management/models/parent_group'
require 'oci/database_management/models/remove_managed_database_from_managed_database_group_details'
require 'oci/database_management/models/reset_database_parameters_details'
require 'oci/database_management/models/sort_orders'
require 'oci/database_management/models/sql_job'
require 'oci/database_management/models/tablespace'
require 'oci/database_management/models/tablespace_collection'
require 'oci/database_management/models/tablespace_summary'
require 'oci/database_management/models/update_database_parameters_result'
require 'oci/database_management/models/update_managed_database_group_details'

# Require generated clients
require 'oci/database_management/db_management_client'
require 'oci/database_management/db_management_client_composite_operations'

# Require service utilities
require 'oci/database_management/util'
