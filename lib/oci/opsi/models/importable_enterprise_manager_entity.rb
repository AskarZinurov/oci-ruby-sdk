# Copyright (c) 2016, 2021, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # An Enterprise Manager entity that can be imported into Operations Insights.
  class Opsi::Models::ImportableEnterpriseManagerEntity
    # **[Required]** Enterprise Manager Unique Identifier
    # @return [String]
    attr_accessor :enterprise_manager_identifier

    # **[Required]** Enterprise Manager Entity Name
    # @return [String]
    attr_accessor :enterprise_manager_entity_name

    # **[Required]** Enterprise Manager Entity Type
    # @return [String]
    attr_accessor :enterprise_manager_entity_type

    # **[Required]** Enterprise Manager Entity Unique Identifier
    # @return [String]
    attr_accessor :enterprise_manager_entity_identifier

    # Operations Insights internal representation of the resource type.
    # @return [String]
    attr_accessor :opsi_entity_type

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'enterprise_manager_identifier': :'enterpriseManagerIdentifier',
        'enterprise_manager_entity_name': :'enterpriseManagerEntityName',
        'enterprise_manager_entity_type': :'enterpriseManagerEntityType',
        'enterprise_manager_entity_identifier': :'enterpriseManagerEntityIdentifier',
        'opsi_entity_type': :'opsiEntityType'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'enterprise_manager_identifier': :'String',
        'enterprise_manager_entity_name': :'String',
        'enterprise_manager_entity_type': :'String',
        'enterprise_manager_entity_identifier': :'String',
        'opsi_entity_type': :'String'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :enterprise_manager_identifier The value to assign to the {#enterprise_manager_identifier} property
    # @option attributes [String] :enterprise_manager_entity_name The value to assign to the {#enterprise_manager_entity_name} property
    # @option attributes [String] :enterprise_manager_entity_type The value to assign to the {#enterprise_manager_entity_type} property
    # @option attributes [String] :enterprise_manager_entity_identifier The value to assign to the {#enterprise_manager_entity_identifier} property
    # @option attributes [String] :opsi_entity_type The value to assign to the {#opsi_entity_type} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.enterprise_manager_identifier = attributes[:'enterpriseManagerIdentifier'] if attributes[:'enterpriseManagerIdentifier']

      raise 'You cannot provide both :enterpriseManagerIdentifier and :enterprise_manager_identifier' if attributes.key?(:'enterpriseManagerIdentifier') && attributes.key?(:'enterprise_manager_identifier')

      self.enterprise_manager_identifier = attributes[:'enterprise_manager_identifier'] if attributes[:'enterprise_manager_identifier']

      self.enterprise_manager_entity_name = attributes[:'enterpriseManagerEntityName'] if attributes[:'enterpriseManagerEntityName']

      raise 'You cannot provide both :enterpriseManagerEntityName and :enterprise_manager_entity_name' if attributes.key?(:'enterpriseManagerEntityName') && attributes.key?(:'enterprise_manager_entity_name')

      self.enterprise_manager_entity_name = attributes[:'enterprise_manager_entity_name'] if attributes[:'enterprise_manager_entity_name']

      self.enterprise_manager_entity_type = attributes[:'enterpriseManagerEntityType'] if attributes[:'enterpriseManagerEntityType']

      raise 'You cannot provide both :enterpriseManagerEntityType and :enterprise_manager_entity_type' if attributes.key?(:'enterpriseManagerEntityType') && attributes.key?(:'enterprise_manager_entity_type')

      self.enterprise_manager_entity_type = attributes[:'enterprise_manager_entity_type'] if attributes[:'enterprise_manager_entity_type']

      self.enterprise_manager_entity_identifier = attributes[:'enterpriseManagerEntityIdentifier'] if attributes[:'enterpriseManagerEntityIdentifier']

      raise 'You cannot provide both :enterpriseManagerEntityIdentifier and :enterprise_manager_entity_identifier' if attributes.key?(:'enterpriseManagerEntityIdentifier') && attributes.key?(:'enterprise_manager_entity_identifier')

      self.enterprise_manager_entity_identifier = attributes[:'enterprise_manager_entity_identifier'] if attributes[:'enterprise_manager_entity_identifier']

      self.opsi_entity_type = attributes[:'opsiEntityType'] if attributes[:'opsiEntityType']

      raise 'You cannot provide both :opsiEntityType and :opsi_entity_type' if attributes.key?(:'opsiEntityType') && attributes.key?(:'opsi_entity_type')

      self.opsi_entity_type = attributes[:'opsi_entity_type'] if attributes[:'opsi_entity_type']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        enterprise_manager_identifier == other.enterprise_manager_identifier &&
        enterprise_manager_entity_name == other.enterprise_manager_entity_name &&
        enterprise_manager_entity_type == other.enterprise_manager_entity_type &&
        enterprise_manager_entity_identifier == other.enterprise_manager_entity_identifier &&
        opsi_entity_type == other.opsi_entity_type
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
      [enterprise_manager_identifier, enterprise_manager_entity_name, enterprise_manager_entity_type, enterprise_manager_entity_identifier, opsi_entity_type].hash
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