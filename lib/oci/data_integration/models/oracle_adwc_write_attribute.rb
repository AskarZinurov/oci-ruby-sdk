# Copyright (c) 2016, 2021, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'
require_relative 'abstract_write_attribute'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # Properties to configure writing to Oracle Autonomous Data Warehouse Cloud.
  class DataIntegration::Models::OracleAdwcWriteAttribute < DataIntegration::Models::AbstractWriteAttribute
    # The bucket name for the attribute.
    # @return [String]
    attr_accessor :bucket_name

    # The file name for the attribute.
    # @return [String]
    attr_accessor :staging_file_name

    # @return [OCI::DataIntegration::Models::DataAsset]
    attr_accessor :staging_data_asset

    # @return [OCI::DataIntegration::Models::Connection]
    attr_accessor :staging_connection

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'model_type': :'modelType',
        'bucket_name': :'bucketName',
        'staging_file_name': :'stagingFileName',
        'staging_data_asset': :'stagingDataAsset',
        'staging_connection': :'stagingConnection'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'model_type': :'String',
        'bucket_name': :'String',
        'staging_file_name': :'String',
        'staging_data_asset': :'OCI::DataIntegration::Models::DataAsset',
        'staging_connection': :'OCI::DataIntegration::Models::Connection'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :bucket_name The value to assign to the {#bucket_name} property
    # @option attributes [String] :staging_file_name The value to assign to the {#staging_file_name} property
    # @option attributes [OCI::DataIntegration::Models::DataAsset] :staging_data_asset The value to assign to the {#staging_data_asset} property
    # @option attributes [OCI::DataIntegration::Models::Connection] :staging_connection The value to assign to the {#staging_connection} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      attributes['modelType'] = 'ORACLEADWCWRITEATTRIBUTE'

      super(attributes)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.bucket_name = attributes[:'bucketName'] if attributes[:'bucketName']

      raise 'You cannot provide both :bucketName and :bucket_name' if attributes.key?(:'bucketName') && attributes.key?(:'bucket_name')

      self.bucket_name = attributes[:'bucket_name'] if attributes[:'bucket_name']

      self.staging_file_name = attributes[:'stagingFileName'] if attributes[:'stagingFileName']

      raise 'You cannot provide both :stagingFileName and :staging_file_name' if attributes.key?(:'stagingFileName') && attributes.key?(:'staging_file_name')

      self.staging_file_name = attributes[:'staging_file_name'] if attributes[:'staging_file_name']

      self.staging_data_asset = attributes[:'stagingDataAsset'] if attributes[:'stagingDataAsset']

      raise 'You cannot provide both :stagingDataAsset and :staging_data_asset' if attributes.key?(:'stagingDataAsset') && attributes.key?(:'staging_data_asset')

      self.staging_data_asset = attributes[:'staging_data_asset'] if attributes[:'staging_data_asset']

      self.staging_connection = attributes[:'stagingConnection'] if attributes[:'stagingConnection']

      raise 'You cannot provide both :stagingConnection and :staging_connection' if attributes.key?(:'stagingConnection') && attributes.key?(:'staging_connection')

      self.staging_connection = attributes[:'staging_connection'] if attributes[:'staging_connection']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        model_type == other.model_type &&
        bucket_name == other.bucket_name &&
        staging_file_name == other.staging_file_name &&
        staging_data_asset == other.staging_data_asset &&
        staging_connection == other.staging_connection
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
      [model_type, bucket_name, staging_file_name, staging_data_asset, staging_connection].hash
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
