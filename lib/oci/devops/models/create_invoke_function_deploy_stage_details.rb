# Copyright (c) 2016, 2021, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'
require_relative 'create_deploy_stage_details'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # Specifies Invoke Function stage.
  class Devops::Models::CreateInvokeFunctionDeployStageDetails < Devops::Models::CreateDeployStageDetails
    # **[Required]** Function environment OCID.
    # @return [String]
    attr_accessor :function_deploy_environment_id

    # Optional binary artifact OCID user may provide to this stage.
    # @return [String]
    attr_accessor :deploy_artifact_id

    # **[Required]** A boolean flag specifies whether this stage executes asynchronously.
    # @return [BOOLEAN]
    attr_accessor :is_async

    # **[Required]** A boolean flag specifies whether the invoked function should be validated.
    # @return [BOOLEAN]
    attr_accessor :is_validation_enabled

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'description': :'description',
        'display_name': :'displayName',
        'deploy_stage_type': :'deployStageType',
        'deploy_pipeline_id': :'deployPipelineId',
        'deploy_stage_predecessor_collection': :'deployStagePredecessorCollection',
        'freeform_tags': :'freeformTags',
        'defined_tags': :'definedTags',
        'function_deploy_environment_id': :'functionDeployEnvironmentId',
        'deploy_artifact_id': :'deployArtifactId',
        'is_async': :'isAsync',
        'is_validation_enabled': :'isValidationEnabled'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'description': :'String',
        'display_name': :'String',
        'deploy_stage_type': :'String',
        'deploy_pipeline_id': :'String',
        'deploy_stage_predecessor_collection': :'OCI::Devops::Models::DeployStagePredecessorCollection',
        'freeform_tags': :'Hash<String, String>',
        'defined_tags': :'Hash<String, Hash<String, Object>>',
        'function_deploy_environment_id': :'String',
        'deploy_artifact_id': :'String',
        'is_async': :'BOOLEAN',
        'is_validation_enabled': :'BOOLEAN'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :description The value to assign to the {OCI::Devops::Models::CreateDeployStageDetails#description #description} proprety
    # @option attributes [String] :display_name The value to assign to the {OCI::Devops::Models::CreateDeployStageDetails#display_name #display_name} proprety
    # @option attributes [String] :deploy_pipeline_id The value to assign to the {OCI::Devops::Models::CreateDeployStageDetails#deploy_pipeline_id #deploy_pipeline_id} proprety
    # @option attributes [OCI::Devops::Models::DeployStagePredecessorCollection] :deploy_stage_predecessor_collection The value to assign to the {OCI::Devops::Models::CreateDeployStageDetails#deploy_stage_predecessor_collection #deploy_stage_predecessor_collection} proprety
    # @option attributes [Hash<String, String>] :freeform_tags The value to assign to the {OCI::Devops::Models::CreateDeployStageDetails#freeform_tags #freeform_tags} proprety
    # @option attributes [Hash<String, Hash<String, Object>>] :defined_tags The value to assign to the {OCI::Devops::Models::CreateDeployStageDetails#defined_tags #defined_tags} proprety
    # @option attributes [String] :function_deploy_environment_id The value to assign to the {#function_deploy_environment_id} property
    # @option attributes [String] :deploy_artifact_id The value to assign to the {#deploy_artifact_id} property
    # @option attributes [BOOLEAN] :is_async The value to assign to the {#is_async} property
    # @option attributes [BOOLEAN] :is_validation_enabled The value to assign to the {#is_validation_enabled} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      attributes['deployStageType'] = 'INVOKE_FUNCTION'

      super(attributes)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.function_deploy_environment_id = attributes[:'functionDeployEnvironmentId'] if attributes[:'functionDeployEnvironmentId']

      raise 'You cannot provide both :functionDeployEnvironmentId and :function_deploy_environment_id' if attributes.key?(:'functionDeployEnvironmentId') && attributes.key?(:'function_deploy_environment_id')

      self.function_deploy_environment_id = attributes[:'function_deploy_environment_id'] if attributes[:'function_deploy_environment_id']

      self.deploy_artifact_id = attributes[:'deployArtifactId'] if attributes[:'deployArtifactId']

      raise 'You cannot provide both :deployArtifactId and :deploy_artifact_id' if attributes.key?(:'deployArtifactId') && attributes.key?(:'deploy_artifact_id')

      self.deploy_artifact_id = attributes[:'deploy_artifact_id'] if attributes[:'deploy_artifact_id']

      self.is_async = attributes[:'isAsync'] unless attributes[:'isAsync'].nil?

      raise 'You cannot provide both :isAsync and :is_async' if attributes.key?(:'isAsync') && attributes.key?(:'is_async')

      self.is_async = attributes[:'is_async'] unless attributes[:'is_async'].nil?

      self.is_validation_enabled = attributes[:'isValidationEnabled'] unless attributes[:'isValidationEnabled'].nil?

      raise 'You cannot provide both :isValidationEnabled and :is_validation_enabled' if attributes.key?(:'isValidationEnabled') && attributes.key?(:'is_validation_enabled')

      self.is_validation_enabled = attributes[:'is_validation_enabled'] unless attributes[:'is_validation_enabled'].nil?
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        description == other.description &&
        display_name == other.display_name &&
        deploy_stage_type == other.deploy_stage_type &&
        deploy_pipeline_id == other.deploy_pipeline_id &&
        deploy_stage_predecessor_collection == other.deploy_stage_predecessor_collection &&
        freeform_tags == other.freeform_tags &&
        defined_tags == other.defined_tags &&
        function_deploy_environment_id == other.function_deploy_environment_id &&
        deploy_artifact_id == other.deploy_artifact_id &&
        is_async == other.is_async &&
        is_validation_enabled == other.is_validation_enabled
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines

    # @see the `==` method
    # @param [Object] other the other object to be compared
    def eql?(other)
      self == other
    end

    # rubocop:disable Metrics/AbcSize, Layout/EmptyLines


    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [description, display_name, deploy_stage_type, deploy_pipeline_id, deploy_stage_predecessor_collection, freeform_tags, defined_tags, function_deploy_environment_id, deploy_artifact_id, is_async, is_validation_enabled].hash
    end
    # rubocop:enable Metrics/AbcSize, Layout/EmptyLines

    # rubocop:disable Metrics/AbcSize, Layout/EmptyLines


    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)

      self.class.swagger_types.each_pair do |key, type|
        if type =~ /^Array<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            public_method("#{key}=").call(
              attributes[self.class.attribute_map[key]]
                .map { |v| OCI::Internal::Util.convert_to_type(Regexp.last_match(1), v) }
            )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          public_method("#{key}=").call(
            OCI::Internal::Util.convert_to_type(type, attributes[self.class.attribute_map[key]])
          )
        end
        # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end
    # rubocop:enable Metrics/AbcSize, Layout/EmptyLines

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = public_method(attr).call
        next if value.nil? && !instance_variable_defined?("@#{attr}")

        hash[param] = _to_hash(value)
      end
      hash
    end

    private

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end
# rubocop:enable Lint/UnneededCopDisableDirective, Metrics/LineLength
