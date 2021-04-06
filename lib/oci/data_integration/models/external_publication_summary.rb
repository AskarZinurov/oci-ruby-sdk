# Copyright (c) 2016, 2021, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'
require 'logger'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # The external publication summary contains the audit summary information and the definition of the external object.
  class DataIntegration::Models::ExternalPublicationSummary
    STATUS_ENUM = [
      STATUS_SUCCESSFUL = 'SUCCESSFUL'.freeze,
      STATUS_FAILED = 'FAILED'.freeze,
      STATUS_PUBLISHING = 'PUBLISHING'.freeze,
      STATUS_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    # The unique OCID of the identifier that is returned after creating the Oracle Cloud Infrastructure Data Flow application.
    # @return [String]
    attr_accessor :application_id

    # The OCID of the compartment where the application is created in the Oracle Cloud Infrastructure Data Flow Service.
    # @return [String]
    attr_accessor :application_compartment_id

    # The name of the application.
    # @return [String]
    attr_accessor :display_name

    # @return [OCI::DataIntegration::Models::ResourceConfiguration]
    attr_accessor :resource_configuration

    # @return [OCI::DataIntegration::Models::ConfigurationDetails]
    attr_accessor :configuration_details

    # The status of the publishing action to Oracle Cloud Infrastructure Data Flow.
    # @return [String]
    attr_reader :status

    # The error of the published object in the application.
    # @return [String]
    attr_accessor :error_message

    # The object key.
    # @return [String]
    attr_accessor :key

    # The object type.
    # @return [String]
    attr_accessor :model_type

    # This is a version number that is used by the service to upgrade objects if needed through releases of the service.
    # @return [String]
    attr_accessor :model_version

    # Free form text without any restriction on permitted characters. Name can have letters, numbers, and special characters. The value is editable and is restricted to 1000 characters.
    # @return [String]
    attr_accessor :name

    # Detailed description for the object.
    # @return [String]
    attr_accessor :description

    # The version of the object that is used to track changes in the object instance.
    # @return [Integer]
    attr_accessor :object_version

    # The status of an object that can be set to value 1 for shallow references across objects. Other values are reserved.
    # @return [Integer]
    attr_accessor :object_status

    # Value can only contain upper case letters, underscore, and numbers. It should begin with upper case letter or underscore. The value can be modified.
    # @return [String]
    attr_accessor :identifier

    # @return [OCI::DataIntegration::Models::ParentReference]
    attr_accessor :parent_ref

    # @return [OCI::DataIntegration::Models::ObjectMetadata]
    attr_accessor :metadata

    # A key map. If provided, key is replaced with generated key. This structure provides mapping between user provided key and generated key.
    # @return [Hash<String, String>]
    attr_accessor :key_map

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'application_id': :'applicationId',
        'application_compartment_id': :'applicationCompartmentId',
        'display_name': :'displayName',
        'resource_configuration': :'resourceConfiguration',
        'configuration_details': :'configurationDetails',
        'status': :'status',
        'error_message': :'errorMessage',
        'key': :'key',
        'model_type': :'modelType',
        'model_version': :'modelVersion',
        'name': :'name',
        'description': :'description',
        'object_version': :'objectVersion',
        'object_status': :'objectStatus',
        'identifier': :'identifier',
        'parent_ref': :'parentRef',
        'metadata': :'metadata',
        'key_map': :'keyMap'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'application_id': :'String',
        'application_compartment_id': :'String',
        'display_name': :'String',
        'resource_configuration': :'OCI::DataIntegration::Models::ResourceConfiguration',
        'configuration_details': :'OCI::DataIntegration::Models::ConfigurationDetails',
        'status': :'String',
        'error_message': :'String',
        'key': :'String',
        'model_type': :'String',
        'model_version': :'String',
        'name': :'String',
        'description': :'String',
        'object_version': :'Integer',
        'object_status': :'Integer',
        'identifier': :'String',
        'parent_ref': :'OCI::DataIntegration::Models::ParentReference',
        'metadata': :'OCI::DataIntegration::Models::ObjectMetadata',
        'key_map': :'Hash<String, String>'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :application_id The value to assign to the {#application_id} property
    # @option attributes [String] :application_compartment_id The value to assign to the {#application_compartment_id} property
    # @option attributes [String] :display_name The value to assign to the {#display_name} property
    # @option attributes [OCI::DataIntegration::Models::ResourceConfiguration] :resource_configuration The value to assign to the {#resource_configuration} property
    # @option attributes [OCI::DataIntegration::Models::ConfigurationDetails] :configuration_details The value to assign to the {#configuration_details} property
    # @option attributes [String] :status The value to assign to the {#status} property
    # @option attributes [String] :error_message The value to assign to the {#error_message} property
    # @option attributes [String] :key The value to assign to the {#key} property
    # @option attributes [String] :model_type The value to assign to the {#model_type} property
    # @option attributes [String] :model_version The value to assign to the {#model_version} property
    # @option attributes [String] :name The value to assign to the {#name} property
    # @option attributes [String] :description The value to assign to the {#description} property
    # @option attributes [Integer] :object_version The value to assign to the {#object_version} property
    # @option attributes [Integer] :object_status The value to assign to the {#object_status} property
    # @option attributes [String] :identifier The value to assign to the {#identifier} property
    # @option attributes [OCI::DataIntegration::Models::ParentReference] :parent_ref The value to assign to the {#parent_ref} property
    # @option attributes [OCI::DataIntegration::Models::ObjectMetadata] :metadata The value to assign to the {#metadata} property
    # @option attributes [Hash<String, String>] :key_map The value to assign to the {#key_map} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      self.application_id = attributes[:'applicationId'] if attributes[:'applicationId']

      raise 'You cannot provide both :applicationId and :application_id' if attributes.key?(:'applicationId') && attributes.key?(:'application_id')

      self.application_id = attributes[:'application_id'] if attributes[:'application_id']

      self.application_compartment_id = attributes[:'applicationCompartmentId'] if attributes[:'applicationCompartmentId']

      raise 'You cannot provide both :applicationCompartmentId and :application_compartment_id' if attributes.key?(:'applicationCompartmentId') && attributes.key?(:'application_compartment_id')

      self.application_compartment_id = attributes[:'application_compartment_id'] if attributes[:'application_compartment_id']

      self.display_name = attributes[:'displayName'] if attributes[:'displayName']

      raise 'You cannot provide both :displayName and :display_name' if attributes.key?(:'displayName') && attributes.key?(:'display_name')

      self.display_name = attributes[:'display_name'] if attributes[:'display_name']

      self.resource_configuration = attributes[:'resourceConfiguration'] if attributes[:'resourceConfiguration']

      raise 'You cannot provide both :resourceConfiguration and :resource_configuration' if attributes.key?(:'resourceConfiguration') && attributes.key?(:'resource_configuration')

      self.resource_configuration = attributes[:'resource_configuration'] if attributes[:'resource_configuration']

      self.configuration_details = attributes[:'configurationDetails'] if attributes[:'configurationDetails']

      raise 'You cannot provide both :configurationDetails and :configuration_details' if attributes.key?(:'configurationDetails') && attributes.key?(:'configuration_details')

      self.configuration_details = attributes[:'configuration_details'] if attributes[:'configuration_details']

      self.status = attributes[:'status'] if attributes[:'status']

      self.error_message = attributes[:'errorMessage'] if attributes[:'errorMessage']

      raise 'You cannot provide both :errorMessage and :error_message' if attributes.key?(:'errorMessage') && attributes.key?(:'error_message')

      self.error_message = attributes[:'error_message'] if attributes[:'error_message']

      self.key = attributes[:'key'] if attributes[:'key']

      self.model_type = attributes[:'modelType'] if attributes[:'modelType']

      raise 'You cannot provide both :modelType and :model_type' if attributes.key?(:'modelType') && attributes.key?(:'model_type')

      self.model_type = attributes[:'model_type'] if attributes[:'model_type']

      self.model_version = attributes[:'modelVersion'] if attributes[:'modelVersion']

      raise 'You cannot provide both :modelVersion and :model_version' if attributes.key?(:'modelVersion') && attributes.key?(:'model_version')

      self.model_version = attributes[:'model_version'] if attributes[:'model_version']

      self.name = attributes[:'name'] if attributes[:'name']

      self.description = attributes[:'description'] if attributes[:'description']

      self.object_version = attributes[:'objectVersion'] if attributes[:'objectVersion']

      raise 'You cannot provide both :objectVersion and :object_version' if attributes.key?(:'objectVersion') && attributes.key?(:'object_version')

      self.object_version = attributes[:'object_version'] if attributes[:'object_version']

      self.object_status = attributes[:'objectStatus'] if attributes[:'objectStatus']

      raise 'You cannot provide both :objectStatus and :object_status' if attributes.key?(:'objectStatus') && attributes.key?(:'object_status')

      self.object_status = attributes[:'object_status'] if attributes[:'object_status']

      self.identifier = attributes[:'identifier'] if attributes[:'identifier']

      self.parent_ref = attributes[:'parentRef'] if attributes[:'parentRef']

      raise 'You cannot provide both :parentRef and :parent_ref' if attributes.key?(:'parentRef') && attributes.key?(:'parent_ref')

      self.parent_ref = attributes[:'parent_ref'] if attributes[:'parent_ref']

      self.metadata = attributes[:'metadata'] if attributes[:'metadata']

      self.key_map = attributes[:'keyMap'] if attributes[:'keyMap']

      raise 'You cannot provide both :keyMap and :key_map' if attributes.key?(:'keyMap') && attributes.key?(:'key_map')

      self.key_map = attributes[:'key_map'] if attributes[:'key_map']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      # rubocop:disable Style/ConditionalAssignment
      if status && !STATUS_ENUM.include?(status)
        OCI.logger.debug("Unknown value for 'status' [" + status + "]. Mapping to 'STATUS_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @status = STATUS_UNKNOWN_ENUM_VALUE
      else
        @status = status
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        application_id == other.application_id &&
        application_compartment_id == other.application_compartment_id &&
        display_name == other.display_name &&
        resource_configuration == other.resource_configuration &&
        configuration_details == other.configuration_details &&
        status == other.status &&
        error_message == other.error_message &&
        key == other.key &&
        model_type == other.model_type &&
        model_version == other.model_version &&
        name == other.name &&
        description == other.description &&
        object_version == other.object_version &&
        object_status == other.object_status &&
        identifier == other.identifier &&
        parent_ref == other.parent_ref &&
        metadata == other.metadata &&
        key_map == other.key_map
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
      [application_id, application_compartment_id, display_name, resource_configuration, configuration_details, status, error_message, key, model_type, model_version, name, description, object_version, object_status, identifier, parent_ref, metadata, key_map].hash
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
