# Copyright (c) 2016, 2021, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'
require 'logger'
require_relative 'abstract_read_attribute'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # Properties to configure reading from an Oracle Database.
  class DataIntegration::Models::BiccReadAttributes < DataIntegration::Models::AbstractReadAttribute
    EXTRACT_STRATEGY_ENUM = [
      EXTRACT_STRATEGY_FULL = 'FULL'.freeze,
      EXTRACT_STRATEGY_INCREMENTAL = 'INCREMENTAL'.freeze,
      EXTRACT_STRATEGY_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    # The fetch size for reading.
    # @return [Integer]
    attr_accessor :fetch_size

    # Extraction Strategy - FULL|INCREMENTAL
    # @return [String]
    attr_reader :extract_strategy

    # @return [OCI::DataIntegration::Models::ExternalStorage]
    attr_accessor :external_storage

    # Date from where extract should start
    # @return [DateTime]
    attr_accessor :initial_extract_date

    # Date last extracted
    # @return [DateTime]
    attr_accessor :last_extract_date

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'model_type': :'modelType',
        'fetch_size': :'fetchSize',
        'extract_strategy': :'extractStrategy',
        'external_storage': :'externalStorage',
        'initial_extract_date': :'initialExtractDate',
        'last_extract_date': :'lastExtractDate'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'model_type': :'String',
        'fetch_size': :'Integer',
        'extract_strategy': :'String',
        'external_storage': :'OCI::DataIntegration::Models::ExternalStorage',
        'initial_extract_date': :'DateTime',
        'last_extract_date': :'DateTime'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [Integer] :fetch_size The value to assign to the {#fetch_size} property
    # @option attributes [String] :extract_strategy The value to assign to the {#extract_strategy} property
    # @option attributes [OCI::DataIntegration::Models::ExternalStorage] :external_storage The value to assign to the {#external_storage} property
    # @option attributes [DateTime] :initial_extract_date The value to assign to the {#initial_extract_date} property
    # @option attributes [DateTime] :last_extract_date The value to assign to the {#last_extract_date} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      attributes['modelType'] = 'BICC_READ_ATTRIBUTE'

      super(attributes)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.fetch_size = attributes[:'fetchSize'] if attributes[:'fetchSize']

      raise 'You cannot provide both :fetchSize and :fetch_size' if attributes.key?(:'fetchSize') && attributes.key?(:'fetch_size')

      self.fetch_size = attributes[:'fetch_size'] if attributes[:'fetch_size']

      self.extract_strategy = attributes[:'extractStrategy'] if attributes[:'extractStrategy']

      raise 'You cannot provide both :extractStrategy and :extract_strategy' if attributes.key?(:'extractStrategy') && attributes.key?(:'extract_strategy')

      self.extract_strategy = attributes[:'extract_strategy'] if attributes[:'extract_strategy']

      self.external_storage = attributes[:'externalStorage'] if attributes[:'externalStorage']

      raise 'You cannot provide both :externalStorage and :external_storage' if attributes.key?(:'externalStorage') && attributes.key?(:'external_storage')

      self.external_storage = attributes[:'external_storage'] if attributes[:'external_storage']

      self.initial_extract_date = attributes[:'initialExtractDate'] if attributes[:'initialExtractDate']

      raise 'You cannot provide both :initialExtractDate and :initial_extract_date' if attributes.key?(:'initialExtractDate') && attributes.key?(:'initial_extract_date')

      self.initial_extract_date = attributes[:'initial_extract_date'] if attributes[:'initial_extract_date']

      self.last_extract_date = attributes[:'lastExtractDate'] if attributes[:'lastExtractDate']

      raise 'You cannot provide both :lastExtractDate and :last_extract_date' if attributes.key?(:'lastExtractDate') && attributes.key?(:'last_extract_date')

      self.last_extract_date = attributes[:'last_extract_date'] if attributes[:'last_extract_date']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] extract_strategy Object to be assigned
    def extract_strategy=(extract_strategy)
      # rubocop:disable Style/ConditionalAssignment
      if extract_strategy && !EXTRACT_STRATEGY_ENUM.include?(extract_strategy)
        OCI.logger.debug("Unknown value for 'extract_strategy' [" + extract_strategy + "]. Mapping to 'EXTRACT_STRATEGY_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @extract_strategy = EXTRACT_STRATEGY_UNKNOWN_ENUM_VALUE
      else
        @extract_strategy = extract_strategy
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
        fetch_size == other.fetch_size &&
        extract_strategy == other.extract_strategy &&
        external_storage == other.external_storage &&
        initial_extract_date == other.initial_extract_date &&
        last_extract_date == other.last_extract_date
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
      [model_type, fetch_size, extract_strategy, external_storage, initial_extract_date, last_extract_date].hash
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