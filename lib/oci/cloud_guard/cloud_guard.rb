# Copyright (c) 2016, 2021, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

module OCI
  module CloudGuard
    # Module containing models for requests made to, and responses received from,
    # OCI CloudGuard services
    module Models
    end
  end
end

# Require models
require 'oci/cloud_guard/models/activity_problem_aggregation'
require 'oci/cloud_guard/models/activity_problem_aggregation_collection'
require 'oci/cloud_guard/models/actor_type'
require 'oci/cloud_guard/models/all_targets_selected'
require 'oci/cloud_guard/models/attach_target_detector_recipe_details'
require 'oci/cloud_guard/models/attach_target_responder_recipe_details'
require 'oci/cloud_guard/models/candidate_responder_rule'
require 'oci/cloud_guard/models/change_detector_recipe_compartment_details'
require 'oci/cloud_guard/models/change_managed_list_compartment_details'
require 'oci/cloud_guard/models/change_responder_recipe_compartment_details'
require 'oci/cloud_guard/models/cloud_guard_status'
require 'oci/cloud_guard/models/composite_condition'
require 'oci/cloud_guard/models/condition'
require 'oci/cloud_guard/models/condition_filter_type'
require 'oci/cloud_guard/models/condition_group'
require 'oci/cloud_guard/models/condition_metadata_type'
require 'oci/cloud_guard/models/condition_metadata_type_collection'
require 'oci/cloud_guard/models/condition_metadata_type_summary'
require 'oci/cloud_guard/models/condition_operator'
require 'oci/cloud_guard/models/condition_operator_name'
require 'oci/cloud_guard/models/condition_type_enum'
require 'oci/cloud_guard/models/condition_value_type'
require 'oci/cloud_guard/models/config_value'
require 'oci/cloud_guard/models/configuration'
require 'oci/cloud_guard/models/configuration_list_item_type'
require 'oci/cloud_guard/models/create_data_mask_rule_details'
require 'oci/cloud_guard/models/create_detector_recipe_details'
require 'oci/cloud_guard/models/create_managed_list_details'
require 'oci/cloud_guard/models/create_responder_recipe_details'
require 'oci/cloud_guard/models/create_target_details'
require 'oci/cloud_guard/models/create_target_detector_recipe_details'
require 'oci/cloud_guard/models/create_target_responder_recipe_details'
require 'oci/cloud_guard/models/data_mask_category'
require 'oci/cloud_guard/models/data_mask_rule'
require 'oci/cloud_guard/models/data_mask_rule_collection'
require 'oci/cloud_guard/models/data_mask_rule_status'
require 'oci/cloud_guard/models/data_mask_rule_summary'
require 'oci/cloud_guard/models/detector'
require 'oci/cloud_guard/models/detector_collection'
require 'oci/cloud_guard/models/detector_configuration'
require 'oci/cloud_guard/models/detector_details'
require 'oci/cloud_guard/models/detector_enum'
require 'oci/cloud_guard/models/detector_recipe'
require 'oci/cloud_guard/models/detector_recipe_collection'
require 'oci/cloud_guard/models/detector_recipe_detector_rule'
require 'oci/cloud_guard/models/detector_recipe_detector_rule_collection'
require 'oci/cloud_guard/models/detector_recipe_detector_rule_summary'
require 'oci/cloud_guard/models/detector_recipe_summary'
require 'oci/cloud_guard/models/detector_rule'
require 'oci/cloud_guard/models/detector_rule_collection'
require 'oci/cloud_guard/models/detector_rule_summary'
require 'oci/cloud_guard/models/detector_summary'
require 'oci/cloud_guard/models/event_status'
require 'oci/cloud_guard/models/execute_responder_execution_details'
require 'oci/cloud_guard/models/feed_provider_type'
require 'oci/cloud_guard/models/geographical_location'
require 'oci/cloud_guard/models/impacted_resource_collection'
require 'oci/cloud_guard/models/impacted_resource_summary'
require 'oci/cloud_guard/models/lifecycle_state'
require 'oci/cloud_guard/models/managed_list'
require 'oci/cloud_guard/models/managed_list_collection'
require 'oci/cloud_guard/models/managed_list_summary'
require 'oci/cloud_guard/models/managed_list_type'
require 'oci/cloud_guard/models/managed_list_type_collection'
require 'oci/cloud_guard/models/managed_list_type_summary'
require 'oci/cloud_guard/models/operator_summary'
require 'oci/cloud_guard/models/operator_type'
require 'oci/cloud_guard/models/owner_type'
require 'oci/cloud_guard/models/policy_collection'
require 'oci/cloud_guard/models/policy_summary'
require 'oci/cloud_guard/models/political_location'
require 'oci/cloud_guard/models/problem'
require 'oci/cloud_guard/models/problem_aggregation'
require 'oci/cloud_guard/models/problem_aggregation_collection'
require 'oci/cloud_guard/models/problem_collection'
require 'oci/cloud_guard/models/problem_dimension'
require 'oci/cloud_guard/models/problem_history_collection'
require 'oci/cloud_guard/models/problem_history_summary'
require 'oci/cloud_guard/models/problem_lifecycle_detail'
require 'oci/cloud_guard/models/problem_lifecycle_state'
require 'oci/cloud_guard/models/problem_summary'
require 'oci/cloud_guard/models/problem_trend_aggregation'
require 'oci/cloud_guard/models/problem_trend_aggregation_collection'
require 'oci/cloud_guard/models/recommendation_lifecycle_detail'
require 'oci/cloud_guard/models/recommendation_summary'
require 'oci/cloud_guard/models/recommendation_summary_collection'
require 'oci/cloud_guard/models/recommendation_type'
require 'oci/cloud_guard/models/resource_type_collection'
require 'oci/cloud_guard/models/resource_type_summary'
require 'oci/cloud_guard/models/responder_activity_collection'
require 'oci/cloud_guard/models/responder_activity_summary'
require 'oci/cloud_guard/models/responder_activity_type'
require 'oci/cloud_guard/models/responder_configuration'
require 'oci/cloud_guard/models/responder_dimension'
require 'oci/cloud_guard/models/responder_execution'
require 'oci/cloud_guard/models/responder_execution_aggregation'
require 'oci/cloud_guard/models/responder_execution_aggregation_collection'
require 'oci/cloud_guard/models/responder_execution_collection'
require 'oci/cloud_guard/models/responder_execution_modes'
require 'oci/cloud_guard/models/responder_execution_states'
require 'oci/cloud_guard/models/responder_execution_status'
require 'oci/cloud_guard/models/responder_execution_summary'
require 'oci/cloud_guard/models/responder_execution_trend_aggregation'
require 'oci/cloud_guard/models/responder_execution_trend_aggregation_collection'
require 'oci/cloud_guard/models/responder_mode_types'
require 'oci/cloud_guard/models/responder_recipe'
require 'oci/cloud_guard/models/responder_recipe_collection'
require 'oci/cloud_guard/models/responder_recipe_responder_rule'
require 'oci/cloud_guard/models/responder_recipe_responder_rule_collection'
require 'oci/cloud_guard/models/responder_recipe_responder_rule_summary'
require 'oci/cloud_guard/models/responder_recipe_summary'
require 'oci/cloud_guard/models/responder_rule'
require 'oci/cloud_guard/models/responder_rule_collection'
require 'oci/cloud_guard/models/responder_rule_details'
require 'oci/cloud_guard/models/responder_rule_execution_details'
require 'oci/cloud_guard/models/responder_rule_summary'
require 'oci/cloud_guard/models/responder_type'
require 'oci/cloud_guard/models/risk_level'
require 'oci/cloud_guard/models/risk_score_aggregation'
require 'oci/cloud_guard/models/risk_score_aggregation_collection'
require 'oci/cloud_guard/models/rule_summary'
require 'oci/cloud_guard/models/security_rating'
require 'oci/cloud_guard/models/security_score_aggregation'
require 'oci/cloud_guard/models/security_score_aggregation_collection'
require 'oci/cloud_guard/models/security_score_trend_aggregation'
require 'oci/cloud_guard/models/security_score_trend_aggregation_collection'
require 'oci/cloud_guard/models/service_type_summary'
require 'oci/cloud_guard/models/simple_condition'
require 'oci/cloud_guard/models/skip_bulk_responder_execution_details'
require 'oci/cloud_guard/models/sort_orders'
require 'oci/cloud_guard/models/target'
require 'oci/cloud_guard/models/target_collection'
require 'oci/cloud_guard/models/target_detector_details'
require 'oci/cloud_guard/models/target_detector_recipe'
require 'oci/cloud_guard/models/target_detector_recipe_collection'
require 'oci/cloud_guard/models/target_detector_recipe_detector_rule'
require 'oci/cloud_guard/models/target_detector_recipe_detector_rule_collection'
require 'oci/cloud_guard/models/target_detector_recipe_detector_rule_summary'
require 'oci/cloud_guard/models/target_detector_recipe_summary'
require 'oci/cloud_guard/models/target_ids_selected'
require 'oci/cloud_guard/models/target_resource_type'
require 'oci/cloud_guard/models/target_resource_types_selected'
require 'oci/cloud_guard/models/target_responder_recipe'
require 'oci/cloud_guard/models/target_responder_recipe_collection'
require 'oci/cloud_guard/models/target_responder_recipe_responder_rule'
require 'oci/cloud_guard/models/target_responder_recipe_responder_rule_collection'
require 'oci/cloud_guard/models/target_responder_recipe_responder_rule_summary'
require 'oci/cloud_guard/models/target_responder_recipe_summary'
require 'oci/cloud_guard/models/target_selected'
require 'oci/cloud_guard/models/target_summary'
require 'oci/cloud_guard/models/trigger_responder_details'
require 'oci/cloud_guard/models/update_bulk_problem_status_details'
require 'oci/cloud_guard/models/update_configuration_details'
require 'oci/cloud_guard/models/update_data_mask_rule_details'
require 'oci/cloud_guard/models/update_detector_recipe_details'
require 'oci/cloud_guard/models/update_detector_recipe_detector_rule'
require 'oci/cloud_guard/models/update_detector_recipe_detector_rule_details'
require 'oci/cloud_guard/models/update_detector_rule_details'
require 'oci/cloud_guard/models/update_managed_list_details'
require 'oci/cloud_guard/models/update_problem_status_details'
require 'oci/cloud_guard/models/update_responder_recipe_details'
require 'oci/cloud_guard/models/update_responder_recipe_responder_rule'
require 'oci/cloud_guard/models/update_responder_recipe_responder_rule_details'
require 'oci/cloud_guard/models/update_responder_rule_details'
require 'oci/cloud_guard/models/update_target_details'
require 'oci/cloud_guard/models/update_target_detector_recipe'
require 'oci/cloud_guard/models/update_target_detector_recipe_details'
require 'oci/cloud_guard/models/update_target_detector_recipe_detector_rule_details'
require 'oci/cloud_guard/models/update_target_detector_rule_details'
require 'oci/cloud_guard/models/update_target_recipe_detector_rule_details'
require 'oci/cloud_guard/models/update_target_recipe_responder_rule_details'
require 'oci/cloud_guard/models/update_target_responder_recipe'
require 'oci/cloud_guard/models/update_target_responder_recipe_details'
require 'oci/cloud_guard/models/update_target_responder_recipe_responder_rule_details'
require 'oci/cloud_guard/models/update_target_responder_rule_details'

# Require generated clients
require 'oci/cloud_guard/cloud_guard_client'
require 'oci/cloud_guard/cloud_guard_client_composite_operations'

# Require service utilities
require 'oci/cloud_guard/util'
