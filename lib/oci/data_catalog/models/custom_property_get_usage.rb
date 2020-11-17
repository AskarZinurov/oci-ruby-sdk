# Copyright (c) 2016, 2020, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'
require 'logger'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # Details of a single custom property
  class DataCatalog::Models::CustomPropertyGetUsage
    DATA_TYPE_ENUM = [
      DATA_TYPE_TEXT = 'TEXT'.freeze,
      DATA_TYPE_RICH_TEXT = 'RICH_TEXT'.freeze,
      DATA_TYPE_BOOLEAN = 'BOOLEAN'.freeze,
      DATA_TYPE_NUMBER = 'NUMBER'.freeze,
      DATA_TYPE_DATE = 'DATE'.freeze,
      DATA_TYPE_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    # Unique Identifier of the attribute which is ID
    # @return [String]
    attr_accessor :key

    # Display name of the custom property
    # @return [String]
    attr_accessor :display_name

    # Description of the custom property
    # @return [String]
    attr_accessor :description

    # The custom property value
    # @return [String]
    attr_accessor :value

    # The data type of the custom property
    # @return [String]
    attr_reader :data_type

    # Namespace name of the custom property
    # @return [String]
    attr_accessor :namespace_name

    # Unique namespace key that is immutable
    # @return [String]
    attr_accessor :namespace_key

    # If this field allows multiple values to be set
    # @return [BOOLEAN]
    attr_accessor :is_multi_valued

    # If this field is a hidden field
    # @return [BOOLEAN]
    attr_accessor :is_hidden

    # If this field is a editable field
    # @return [BOOLEAN]
    attr_accessor :is_editable

    # Is this property allowed to have list of values
    # @return [BOOLEAN]
    attr_accessor :is_list_type

    # Allowed values for the custom property if any
    # @return [Array<String>]
    attr_accessor :allowed_values

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'key': :'key',
        'display_name': :'displayName',
        'description': :'description',
        'value': :'value',
        'data_type': :'dataType',
        'namespace_name': :'namespaceName',
        'namespace_key': :'namespaceKey',
        'is_multi_valued': :'isMultiValued',
        'is_hidden': :'isHidden',
        'is_editable': :'isEditable',
        'is_list_type': :'isListType',
        'allowed_values': :'allowedValues'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'key': :'String',
        'display_name': :'String',
        'description': :'String',
        'value': :'String',
        'data_type': :'String',
        'namespace_name': :'String',
        'namespace_key': :'String',
        'is_multi_valued': :'BOOLEAN',
        'is_hidden': :'BOOLEAN',
        'is_editable': :'BOOLEAN',
        'is_list_type': :'BOOLEAN',
        'allowed_values': :'Array<String>'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :key The value to assign to the {#key} property
    # @option attributes [String] :display_name The value to assign to the {#display_name} property
    # @option attributes [String] :description The value to assign to the {#description} property
    # @option attributes [String] :value The value to assign to the {#value} property
    # @option attributes [String] :data_type The value to assign to the {#data_type} property
    # @option attributes [String] :namespace_name The value to assign to the {#namespace_name} property
    # @option attributes [String] :namespace_key The value to assign to the {#namespace_key} property
    # @option attributes [BOOLEAN] :is_multi_valued The value to assign to the {#is_multi_valued} property
    # @option attributes [BOOLEAN] :is_hidden The value to assign to the {#is_hidden} property
    # @option attributes [BOOLEAN] :is_editable The value to assign to the {#is_editable} property
    # @option attributes [BOOLEAN] :is_list_type The value to assign to the {#is_list_type} property
    # @option attributes [Array<String>] :allowed_values The value to assign to the {#allowed_values} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.key = attributes[:'key'] if attributes[:'key']

      self.display_name = attributes[:'displayName'] if attributes[:'displayName']

      raise 'You cannot provide both :displayName and :display_name' if attributes.key?(:'displayName') && attributes.key?(:'display_name')

      self.display_name = attributes[:'display_name'] if attributes[:'display_name']

      self.description = attributes[:'description'] if attributes[:'description']

      self.value = attributes[:'value'] if attributes[:'value']

      self.data_type = attributes[:'dataType'] if attributes[:'dataType']

      raise 'You cannot provide both :dataType and :data_type' if attributes.key?(:'dataType') && attributes.key?(:'data_type')

      self.data_type = attributes[:'data_type'] if attributes[:'data_type']

      self.namespace_name = attributes[:'namespaceName'] if attributes[:'namespaceName']

      raise 'You cannot provide both :namespaceName and :namespace_name' if attributes.key?(:'namespaceName') && attributes.key?(:'namespace_name')

      self.namespace_name = attributes[:'namespace_name'] if attributes[:'namespace_name']

      self.namespace_key = attributes[:'namespaceKey'] if attributes[:'namespaceKey']

      raise 'You cannot provide both :namespaceKey and :namespace_key' if attributes.key?(:'namespaceKey') && attributes.key?(:'namespace_key')

      self.namespace_key = attributes[:'namespace_key'] if attributes[:'namespace_key']

      self.is_multi_valued = attributes[:'isMultiValued'] unless attributes[:'isMultiValued'].nil?
      self.is_multi_valued = false if is_multi_valued.nil? && !attributes.key?(:'isMultiValued') # rubocop:disable Style/StringLiterals

      raise 'You cannot provide both :isMultiValued and :is_multi_valued' if attributes.key?(:'isMultiValued') && attributes.key?(:'is_multi_valued')

      self.is_multi_valued = attributes[:'is_multi_valued'] unless attributes[:'is_multi_valued'].nil?
      self.is_multi_valued = false if is_multi_valued.nil? && !attributes.key?(:'isMultiValued') && !attributes.key?(:'is_multi_valued') # rubocop:disable Style/StringLiterals

      self.is_hidden = attributes[:'isHidden'] unless attributes[:'isHidden'].nil?
      self.is_hidden = true if is_hidden.nil? && !attributes.key?(:'isHidden') # rubocop:disable Style/StringLiterals

      raise 'You cannot provide both :isHidden and :is_hidden' if attributes.key?(:'isHidden') && attributes.key?(:'is_hidden')

      self.is_hidden = attributes[:'is_hidden'] unless attributes[:'is_hidden'].nil?
      self.is_hidden = true if is_hidden.nil? && !attributes.key?(:'isHidden') && !attributes.key?(:'is_hidden') # rubocop:disable Style/StringLiterals

      self.is_editable = attributes[:'isEditable'] unless attributes[:'isEditable'].nil?
      self.is_editable = true if is_editable.nil? && !attributes.key?(:'isEditable') # rubocop:disable Style/StringLiterals

      raise 'You cannot provide both :isEditable and :is_editable' if attributes.key?(:'isEditable') && attributes.key?(:'is_editable')

      self.is_editable = attributes[:'is_editable'] unless attributes[:'is_editable'].nil?
      self.is_editable = true if is_editable.nil? && !attributes.key?(:'isEditable') && !attributes.key?(:'is_editable') # rubocop:disable Style/StringLiterals

      self.is_list_type = attributes[:'isListType'] unless attributes[:'isListType'].nil?
      self.is_list_type = false if is_list_type.nil? && !attributes.key?(:'isListType') # rubocop:disable Style/StringLiterals

      raise 'You cannot provide both :isListType and :is_list_type' if attributes.key?(:'isListType') && attributes.key?(:'is_list_type')

      self.is_list_type = attributes[:'is_list_type'] unless attributes[:'is_list_type'].nil?
      self.is_list_type = false if is_list_type.nil? && !attributes.key?(:'isListType') && !attributes.key?(:'is_list_type') # rubocop:disable Style/StringLiterals

      self.allowed_values = attributes[:'allowedValues'] if attributes[:'allowedValues']

      raise 'You cannot provide both :allowedValues and :allowed_values' if attributes.key?(:'allowedValues') && attributes.key?(:'allowed_values')

      self.allowed_values = attributes[:'allowed_values'] if attributes[:'allowed_values']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] data_type Object to be assigned
    def data_type=(data_type)
      # rubocop:disable Style/ConditionalAssignment
      if data_type && !DATA_TYPE_ENUM.include?(data_type)
        OCI.logger.debug("Unknown value for 'data_type' [" + data_type + "]. Mapping to 'DATA_TYPE_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @data_type = DATA_TYPE_UNKNOWN_ENUM_VALUE
      else
        @data_type = data_type
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        key == other.key &&
        display_name == other.display_name &&
        description == other.description &&
        value == other.value &&
        data_type == other.data_type &&
        namespace_name == other.namespace_name &&
        namespace_key == other.namespace_key &&
        is_multi_valued == other.is_multi_valued &&
        is_hidden == other.is_hidden &&
        is_editable == other.is_editable &&
        is_list_type == other.is_list_type &&
        allowed_values == other.allowed_values
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
      [key, display_name, description, value, data_type, namespace_name, namespace_key, is_multi_valued, is_hidden, is_editable, is_list_type, allowed_values].hash
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
