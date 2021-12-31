# Copyright (c) 2016, 2021, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'
require 'logger'
require_relative 'task'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # The information about the SQL task.
  class DataIntegration::Models::TaskFromSQLTaskDetails < DataIntegration::Models::Task
    SQL_SCRIPT_TYPE_ENUM = [
      SQL_SCRIPT_TYPE_STORED_PROCEDURE = 'STORED_PROCEDURE'.freeze,
      SQL_SCRIPT_TYPE_SQL_CODE = 'SQL_CODE'.freeze,
      SQL_SCRIPT_TYPE_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    # @return [OCI::DataIntegration::Models::Script]
    attr_accessor :script

    # Indicates whether the task is invoking a custom SQL script or stored procedure.
    # @return [String]
    attr_reader :sql_script_type

    # Describes the shape of the execution result
    # @return [Object]
    attr_accessor :operation

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'model_type': :'modelType',
        'key': :'key',
        'model_version': :'modelVersion',
        'parent_ref': :'parentRef',
        'name': :'name',
        'description': :'description',
        'object_version': :'objectVersion',
        'object_status': :'objectStatus',
        'identifier': :'identifier',
        'input_ports': :'inputPorts',
        'output_ports': :'outputPorts',
        'parameters': :'parameters',
        'op_config_values': :'opConfigValues',
        'config_provider_delegate': :'configProviderDelegate',
        'metadata': :'metadata',
        'key_map': :'keyMap',
        'registry_metadata': :'registryMetadata',
        'script': :'script',
        'sql_script_type': :'sqlScriptType',
        'operation': :'operation'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'model_type': :'String',
        'key': :'String',
        'model_version': :'String',
        'parent_ref': :'OCI::DataIntegration::Models::ParentReference',
        'name': :'String',
        'description': :'String',
        'object_version': :'Integer',
        'object_status': :'Integer',
        'identifier': :'String',
        'input_ports': :'Array<OCI::DataIntegration::Models::InputPort>',
        'output_ports': :'Array<OCI::DataIntegration::Models::OutputPort>',
        'parameters': :'Array<OCI::DataIntegration::Models::Parameter>',
        'op_config_values': :'OCI::DataIntegration::Models::ConfigValues',
        'config_provider_delegate': :'OCI::DataIntegration::Models::ConfigProvider',
        'metadata': :'OCI::DataIntegration::Models::ObjectMetadata',
        'key_map': :'Hash<String, String>',
        'registry_metadata': :'OCI::DataIntegration::Models::RegistryMetadata',
        'script': :'OCI::DataIntegration::Models::Script',
        'sql_script_type': :'String',
        'operation': :'Object'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :key The value to assign to the {OCI::DataIntegration::Models::Task#key #key} proprety
    # @option attributes [String] :model_version The value to assign to the {OCI::DataIntegration::Models::Task#model_version #model_version} proprety
    # @option attributes [OCI::DataIntegration::Models::ParentReference] :parent_ref The value to assign to the {OCI::DataIntegration::Models::Task#parent_ref #parent_ref} proprety
    # @option attributes [String] :name The value to assign to the {OCI::DataIntegration::Models::Task#name #name} proprety
    # @option attributes [String] :description The value to assign to the {OCI::DataIntegration::Models::Task#description #description} proprety
    # @option attributes [Integer] :object_version The value to assign to the {OCI::DataIntegration::Models::Task#object_version #object_version} proprety
    # @option attributes [Integer] :object_status The value to assign to the {OCI::DataIntegration::Models::Task#object_status #object_status} proprety
    # @option attributes [String] :identifier The value to assign to the {OCI::DataIntegration::Models::Task#identifier #identifier} proprety
    # @option attributes [Array<OCI::DataIntegration::Models::InputPort>] :input_ports The value to assign to the {OCI::DataIntegration::Models::Task#input_ports #input_ports} proprety
    # @option attributes [Array<OCI::DataIntegration::Models::OutputPort>] :output_ports The value to assign to the {OCI::DataIntegration::Models::Task#output_ports #output_ports} proprety
    # @option attributes [Array<OCI::DataIntegration::Models::Parameter>] :parameters The value to assign to the {OCI::DataIntegration::Models::Task#parameters #parameters} proprety
    # @option attributes [OCI::DataIntegration::Models::ConfigValues] :op_config_values The value to assign to the {OCI::DataIntegration::Models::Task#op_config_values #op_config_values} proprety
    # @option attributes [OCI::DataIntegration::Models::ConfigProvider] :config_provider_delegate The value to assign to the {OCI::DataIntegration::Models::Task#config_provider_delegate #config_provider_delegate} proprety
    # @option attributes [OCI::DataIntegration::Models::ObjectMetadata] :metadata The value to assign to the {OCI::DataIntegration::Models::Task#metadata #metadata} proprety
    # @option attributes [Hash<String, String>] :key_map The value to assign to the {OCI::DataIntegration::Models::Task#key_map #key_map} proprety
    # @option attributes [OCI::DataIntegration::Models::RegistryMetadata] :registry_metadata The value to assign to the {OCI::DataIntegration::Models::Task#registry_metadata #registry_metadata} proprety
    # @option attributes [OCI::DataIntegration::Models::Script] :script The value to assign to the {#script} property
    # @option attributes [String] :sql_script_type The value to assign to the {#sql_script_type} property
    # @option attributes [Object] :operation The value to assign to the {#operation} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      attributes['modelType'] = 'SQL_TASK'

      super(attributes)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.script = attributes[:'script'] if attributes[:'script']

      self.sql_script_type = attributes[:'sqlScriptType'] if attributes[:'sqlScriptType']

      raise 'You cannot provide both :sqlScriptType and :sql_script_type' if attributes.key?(:'sqlScriptType') && attributes.key?(:'sql_script_type')

      self.sql_script_type = attributes[:'sql_script_type'] if attributes[:'sql_script_type']

      self.operation = attributes[:'operation'] if attributes[:'operation']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] sql_script_type Object to be assigned
    def sql_script_type=(sql_script_type)
      # rubocop:disable Style/ConditionalAssignment
      if sql_script_type && !SQL_SCRIPT_TYPE_ENUM.include?(sql_script_type)
        OCI.logger.debug("Unknown value for 'sql_script_type' [" + sql_script_type + "]. Mapping to 'SQL_SCRIPT_TYPE_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @sql_script_type = SQL_SCRIPT_TYPE_UNKNOWN_ENUM_VALUE
      else
        @sql_script_type = sql_script_type
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        model_type == other.model_type &&
        key == other.key &&
        model_version == other.model_version &&
        parent_ref == other.parent_ref &&
        name == other.name &&
        description == other.description &&
        object_version == other.object_version &&
        object_status == other.object_status &&
        identifier == other.identifier &&
        input_ports == other.input_ports &&
        output_ports == other.output_ports &&
        parameters == other.parameters &&
        op_config_values == other.op_config_values &&
        config_provider_delegate == other.config_provider_delegate &&
        metadata == other.metadata &&
        key_map == other.key_map &&
        registry_metadata == other.registry_metadata &&
        script == other.script &&
        sql_script_type == other.sql_script_type &&
        operation == other.operation
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
      [model_type, key, model_version, parent_ref, name, description, object_version, object_status, identifier, input_ports, output_ports, parameters, op_config_values, config_provider_delegate, metadata, key_map, registry_metadata, script, sql_script_type, operation].hash
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