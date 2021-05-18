# Copyright (c) 2016, 2021, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # Properties used in custom property create operations.
  class DataCatalog::Models::CreateCustomPropertyDetails
    DATA_TYPE_ENUM = [
      DATA_TYPE_TEXT = 'TEXT'.freeze,
      DATA_TYPE_RICH_TEXT = 'RICH_TEXT'.freeze,
      DATA_TYPE_BOOLEAN = 'BOOLEAN'.freeze,
      DATA_TYPE_NUMBER = 'NUMBER'.freeze,
      DATA_TYPE_DATE = 'DATE'.freeze
    ].freeze

    # **[Required]** A user-friendly display name. Does not have to be unique, and it's changeable.
    # Avoid entering confidential information.
    #
    # @return [String]
    attr_accessor :display_name

    # Detailed description of the custom property.
    # @return [String]
    attr_accessor :description

    # The data type of the custom property
    # @return [String]
    attr_reader :data_type

    # If this field allows to sort from UI
    # @return [BOOLEAN]
    attr_accessor :is_sortable

    # If this field allows to filter or create facets from UI
    # @return [BOOLEAN]
    attr_accessor :is_filterable

    # If this field allows multiple values to be set
    # @return [BOOLEAN]
    attr_accessor :is_multi_valued

    # If this field is a hidden field
    # @return [BOOLEAN]
    attr_accessor :is_hidden

    # If this field is a editable field
    # @return [BOOLEAN]
    attr_accessor :is_editable

    # If this field is displayed in a list view of applicable objects.
    # @return [BOOLEAN]
    attr_accessor :is_shown_in_list

    # If this field is allowed to pop in search results
    # @return [BOOLEAN]
    attr_accessor :is_hidden_in_search

    # Allowed values for the custom property if any
    # @return [Array<String>]
    attr_accessor :allowed_values

    # A map of maps that contains the properties which are specific to the data asset type. Each data asset type
    # definition defines it's set of required and optional properties. The map keys are category names and the
    # values are maps of property name to property value. Every property is contained inside of a category. Most
    # data assets have required properties within the \"default\" category. To determine the set of optional and
    # required properties for a data asset type, a query can be done on '/types?type=dataAsset' that returns a
    # collection of all data asset types. The appropriate data asset type, which includes definitions of all of
    # it's properties, can be identified from this collection.
    # Example: `{\"properties\": { \"default\": { \"host\": \"host1\", \"port\": \"1521\", \"database\": \"orcl\"}}}`
    #
    # @return [Hash<String, Hash<String, String>>]
    attr_accessor :properties

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'display_name': :'displayName',
        'description': :'description',
        'data_type': :'dataType',
        'is_sortable': :'isSortable',
        'is_filterable': :'isFilterable',
        'is_multi_valued': :'isMultiValued',
        'is_hidden': :'isHidden',
        'is_editable': :'isEditable',
        'is_shown_in_list': :'isShownInList',
        'is_hidden_in_search': :'isHiddenInSearch',
        'allowed_values': :'allowedValues',
        'properties': :'properties'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'display_name': :'String',
        'description': :'String',
        'data_type': :'String',
        'is_sortable': :'BOOLEAN',
        'is_filterable': :'BOOLEAN',
        'is_multi_valued': :'BOOLEAN',
        'is_hidden': :'BOOLEAN',
        'is_editable': :'BOOLEAN',
        'is_shown_in_list': :'BOOLEAN',
        'is_hidden_in_search': :'BOOLEAN',
        'allowed_values': :'Array<String>',
        'properties': :'Hash<String, Hash<String, String>>'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :display_name The value to assign to the {#display_name} property
    # @option attributes [String] :description The value to assign to the {#description} property
    # @option attributes [String] :data_type The value to assign to the {#data_type} property
    # @option attributes [BOOLEAN] :is_sortable The value to assign to the {#is_sortable} property
    # @option attributes [BOOLEAN] :is_filterable The value to assign to the {#is_filterable} property
    # @option attributes [BOOLEAN] :is_multi_valued The value to assign to the {#is_multi_valued} property
    # @option attributes [BOOLEAN] :is_hidden The value to assign to the {#is_hidden} property
    # @option attributes [BOOLEAN] :is_editable The value to assign to the {#is_editable} property
    # @option attributes [BOOLEAN] :is_shown_in_list The value to assign to the {#is_shown_in_list} property
    # @option attributes [BOOLEAN] :is_hidden_in_search The value to assign to the {#is_hidden_in_search} property
    # @option attributes [Array<String>] :allowed_values The value to assign to the {#allowed_values} property
    # @option attributes [Hash<String, Hash<String, String>>] :properties The value to assign to the {#properties} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.display_name = attributes[:'displayName'] if attributes[:'displayName']

      raise 'You cannot provide both :displayName and :display_name' if attributes.key?(:'displayName') && attributes.key?(:'display_name')

      self.display_name = attributes[:'display_name'] if attributes[:'display_name']

      self.description = attributes[:'description'] if attributes[:'description']

      self.data_type = attributes[:'dataType'] if attributes[:'dataType']

      raise 'You cannot provide both :dataType and :data_type' if attributes.key?(:'dataType') && attributes.key?(:'data_type')

      self.data_type = attributes[:'data_type'] if attributes[:'data_type']

      self.is_sortable = attributes[:'isSortable'] unless attributes[:'isSortable'].nil?
      self.is_sortable = false if is_sortable.nil? && !attributes.key?(:'isSortable') # rubocop:disable Style/StringLiterals

      raise 'You cannot provide both :isSortable and :is_sortable' if attributes.key?(:'isSortable') && attributes.key?(:'is_sortable')

      self.is_sortable = attributes[:'is_sortable'] unless attributes[:'is_sortable'].nil?
      self.is_sortable = false if is_sortable.nil? && !attributes.key?(:'isSortable') && !attributes.key?(:'is_sortable') # rubocop:disable Style/StringLiterals

      self.is_filterable = attributes[:'isFilterable'] unless attributes[:'isFilterable'].nil?
      self.is_filterable = false if is_filterable.nil? && !attributes.key?(:'isFilterable') # rubocop:disable Style/StringLiterals

      raise 'You cannot provide both :isFilterable and :is_filterable' if attributes.key?(:'isFilterable') && attributes.key?(:'is_filterable')

      self.is_filterable = attributes[:'is_filterable'] unless attributes[:'is_filterable'].nil?
      self.is_filterable = false if is_filterable.nil? && !attributes.key?(:'isFilterable') && !attributes.key?(:'is_filterable') # rubocop:disable Style/StringLiterals

      self.is_multi_valued = attributes[:'isMultiValued'] unless attributes[:'isMultiValued'].nil?
      self.is_multi_valued = false if is_multi_valued.nil? && !attributes.key?(:'isMultiValued') # rubocop:disable Style/StringLiterals

      raise 'You cannot provide both :isMultiValued and :is_multi_valued' if attributes.key?(:'isMultiValued') && attributes.key?(:'is_multi_valued')

      self.is_multi_valued = attributes[:'is_multi_valued'] unless attributes[:'is_multi_valued'].nil?
      self.is_multi_valued = false if is_multi_valued.nil? && !attributes.key?(:'isMultiValued') && !attributes.key?(:'is_multi_valued') # rubocop:disable Style/StringLiterals

      self.is_hidden = attributes[:'isHidden'] unless attributes[:'isHidden'].nil?
      self.is_hidden = false if is_hidden.nil? && !attributes.key?(:'isHidden') # rubocop:disable Style/StringLiterals

      raise 'You cannot provide both :isHidden and :is_hidden' if attributes.key?(:'isHidden') && attributes.key?(:'is_hidden')

      self.is_hidden = attributes[:'is_hidden'] unless attributes[:'is_hidden'].nil?
      self.is_hidden = false if is_hidden.nil? && !attributes.key?(:'isHidden') && !attributes.key?(:'is_hidden') # rubocop:disable Style/StringLiterals

      self.is_editable = attributes[:'isEditable'] unless attributes[:'isEditable'].nil?
      self.is_editable = true if is_editable.nil? && !attributes.key?(:'isEditable') # rubocop:disable Style/StringLiterals

      raise 'You cannot provide both :isEditable and :is_editable' if attributes.key?(:'isEditable') && attributes.key?(:'is_editable')

      self.is_editable = attributes[:'is_editable'] unless attributes[:'is_editable'].nil?
      self.is_editable = true if is_editable.nil? && !attributes.key?(:'isEditable') && !attributes.key?(:'is_editable') # rubocop:disable Style/StringLiterals

      self.is_shown_in_list = attributes[:'isShownInList'] unless attributes[:'isShownInList'].nil?
      self.is_shown_in_list = false if is_shown_in_list.nil? && !attributes.key?(:'isShownInList') # rubocop:disable Style/StringLiterals

      raise 'You cannot provide both :isShownInList and :is_shown_in_list' if attributes.key?(:'isShownInList') && attributes.key?(:'is_shown_in_list')

      self.is_shown_in_list = attributes[:'is_shown_in_list'] unless attributes[:'is_shown_in_list'].nil?
      self.is_shown_in_list = false if is_shown_in_list.nil? && !attributes.key?(:'isShownInList') && !attributes.key?(:'is_shown_in_list') # rubocop:disable Style/StringLiterals

      self.is_hidden_in_search = attributes[:'isHiddenInSearch'] unless attributes[:'isHiddenInSearch'].nil?
      self.is_hidden_in_search = false if is_hidden_in_search.nil? && !attributes.key?(:'isHiddenInSearch') # rubocop:disable Style/StringLiterals

      raise 'You cannot provide both :isHiddenInSearch and :is_hidden_in_search' if attributes.key?(:'isHiddenInSearch') && attributes.key?(:'is_hidden_in_search')

      self.is_hidden_in_search = attributes[:'is_hidden_in_search'] unless attributes[:'is_hidden_in_search'].nil?
      self.is_hidden_in_search = false if is_hidden_in_search.nil? && !attributes.key?(:'isHiddenInSearch') && !attributes.key?(:'is_hidden_in_search') # rubocop:disable Style/StringLiterals

      self.allowed_values = attributes[:'allowedValues'] if attributes[:'allowedValues']

      raise 'You cannot provide both :allowedValues and :allowed_values' if attributes.key?(:'allowedValues') && attributes.key?(:'allowed_values')

      self.allowed_values = attributes[:'allowed_values'] if attributes[:'allowed_values']

      self.properties = attributes[:'properties'] if attributes[:'properties']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] data_type Object to be assigned
    def data_type=(data_type)
      raise "Invalid value for 'data_type': this must be one of the values in DATA_TYPE_ENUM." if data_type && !DATA_TYPE_ENUM.include?(data_type)

      @data_type = data_type
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        display_name == other.display_name &&
        description == other.description &&
        data_type == other.data_type &&
        is_sortable == other.is_sortable &&
        is_filterable == other.is_filterable &&
        is_multi_valued == other.is_multi_valued &&
        is_hidden == other.is_hidden &&
        is_editable == other.is_editable &&
        is_shown_in_list == other.is_shown_in_list &&
        is_hidden_in_search == other.is_hidden_in_search &&
        allowed_values == other.allowed_values &&
        properties == other.properties
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
      [display_name, description, data_type, is_sortable, is_filterable, is_multi_valued, is_hidden, is_editable, is_shown_in_list, is_hidden_in_search, allowed_values, properties].hash
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
