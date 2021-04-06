# Copyright (c) 2016, 2021, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'
require 'logger'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # Autonomous Database configuration details for storing [manual backups](https://docs.cloud.oracle.com/Content/Database/Tasks/adbbackingup.htm) in the [Object Storage](https://docs.cloud.oracle.com/Content/Object/Concepts/objectstorageoverview.htm) service.
  #
  class Database::Models::AutonomousDatabaseBackupConfig
    MANUAL_BACKUP_TYPE_ENUM = [
      MANUAL_BACKUP_TYPE_NONE = 'NONE'.freeze,
      MANUAL_BACKUP_TYPE_OBJECT_STORE = 'OBJECT_STORE'.freeze,
      MANUAL_BACKUP_TYPE_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    # Name of [Object Storage](https://docs.cloud.oracle.com/Content/Object/Concepts/objectstorageoverview.htm) bucket to use for storing manual backups.
    # @return [String]
    attr_accessor :manual_backup_bucket_name

    # The manual backup destination type.
    # @return [String]
    attr_reader :manual_backup_type

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'manual_backup_bucket_name': :'manualBackupBucketName',
        'manual_backup_type': :'manualBackupType'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'manual_backup_bucket_name': :'String',
        'manual_backup_type': :'String'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :manual_backup_bucket_name The value to assign to the {#manual_backup_bucket_name} property
    # @option attributes [String] :manual_backup_type The value to assign to the {#manual_backup_type} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.manual_backup_bucket_name = attributes[:'manualBackupBucketName'] if attributes[:'manualBackupBucketName']

      raise 'You cannot provide both :manualBackupBucketName and :manual_backup_bucket_name' if attributes.key?(:'manualBackupBucketName') && attributes.key?(:'manual_backup_bucket_name')

      self.manual_backup_bucket_name = attributes[:'manual_backup_bucket_name'] if attributes[:'manual_backup_bucket_name']

      self.manual_backup_type = attributes[:'manualBackupType'] if attributes[:'manualBackupType']

      raise 'You cannot provide both :manualBackupType and :manual_backup_type' if attributes.key?(:'manualBackupType') && attributes.key?(:'manual_backup_type')

      self.manual_backup_type = attributes[:'manual_backup_type'] if attributes[:'manual_backup_type']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] manual_backup_type Object to be assigned
    def manual_backup_type=(manual_backup_type)
      # rubocop:disable Style/ConditionalAssignment
      if manual_backup_type && !MANUAL_BACKUP_TYPE_ENUM.include?(manual_backup_type)
        OCI.logger.debug("Unknown value for 'manual_backup_type' [" + manual_backup_type + "]. Mapping to 'MANUAL_BACKUP_TYPE_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @manual_backup_type = MANUAL_BACKUP_TYPE_UNKNOWN_ENUM_VALUE
      else
        @manual_backup_type = manual_backup_type
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        manual_backup_bucket_name == other.manual_backup_bucket_name &&
        manual_backup_type == other.manual_backup_type
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
      [manual_backup_bucket_name, manual_backup_type].hash
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
