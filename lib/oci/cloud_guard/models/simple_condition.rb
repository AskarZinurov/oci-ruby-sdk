# Copyright (c) 2016, 2021, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'
require 'logger'
require_relative 'condition'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # Simple Condition object.
  class CloudGuard::Models::SimpleCondition < CloudGuard::Models::Condition
    OPERATOR_ENUM = [
      OPERATOR_IN = 'IN'.freeze,
      OPERATOR_NOT_IN = 'NOT_IN'.freeze,
      OPERATOR_EQUALS = 'EQUALS'.freeze,
      OPERATOR_NOT_EQUALS = 'NOT_EQUALS'.freeze,
      OPERATOR_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    VALUE_TYPE_ENUM = [
      VALUE_TYPE_MANAGED = 'MANAGED'.freeze,
      VALUE_TYPE_CUSTOM = 'CUSTOM'.freeze,
      VALUE_TYPE_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    # parameter Key
    # @return [String]
    attr_accessor :parameter

    # type of operator
    # @return [String]
    attr_reader :operator

    # type of operator
    # @return [String]
    attr_accessor :value

    # type of value
    # @return [String]
    attr_reader :value_type

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'kind': :'kind',
        'parameter': :'parameter',
        'operator': :'operator',
        'value': :'value',
        'value_type': :'valueType'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'kind': :'String',
        'parameter': :'String',
        'operator': :'String',
        'value': :'String',
        'value_type': :'String'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :parameter The value to assign to the {#parameter} property
    # @option attributes [String] :operator The value to assign to the {#operator} property
    # @option attributes [String] :value The value to assign to the {#value} property
    # @option attributes [String] :value_type The value to assign to the {#value_type} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      attributes['kind'] = 'SIMPLE'

      super(attributes)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.parameter = attributes[:'parameter'] if attributes[:'parameter']

      self.operator = attributes[:'operator'] if attributes[:'operator']

      self.value = attributes[:'value'] if attributes[:'value']

      self.value_type = attributes[:'valueType'] if attributes[:'valueType']

      raise 'You cannot provide both :valueType and :value_type' if attributes.key?(:'valueType') && attributes.key?(:'value_type')

      self.value_type = attributes[:'value_type'] if attributes[:'value_type']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] operator Object to be assigned
    def operator=(operator)
      # rubocop:disable Style/ConditionalAssignment
      if operator && !OPERATOR_ENUM.include?(operator)
        OCI.logger.debug("Unknown value for 'operator' [" + operator + "]. Mapping to 'OPERATOR_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @operator = OPERATOR_UNKNOWN_ENUM_VALUE
      else
        @operator = operator
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] value_type Object to be assigned
    def value_type=(value_type)
      # rubocop:disable Style/ConditionalAssignment
      if value_type && !VALUE_TYPE_ENUM.include?(value_type)
        OCI.logger.debug("Unknown value for 'value_type' [" + value_type + "]. Mapping to 'VALUE_TYPE_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @value_type = VALUE_TYPE_UNKNOWN_ENUM_VALUE
      else
        @value_type = value_type
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        kind == other.kind &&
        parameter == other.parameter &&
        operator == other.operator &&
        value == other.value &&
        value_type == other.value_type
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
      [kind, parameter, operator, value, value_type].hash
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
