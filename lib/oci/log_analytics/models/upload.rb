# Copyright (c) 2016, 2020, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # Upload is a container that can be used to optionally put all the relevant and related on-demand upload based log files.
  #
  class LogAnalytics::Models::Upload
    # **[Required]** Unique internal identifier to refer to the upload container
    # @return [String]
    attr_accessor :reference

    # **[Required]** The name of the upload container
    # @return [String]
    attr_accessor :name

    # **[Required]** The time when this upload container is created. An RFC3339 formatted datetime string
    # @return [DateTime]
    attr_accessor :time_created

    # The latest time when this upload container is modified. An RFC3339 formatted datetime string
    # @return [DateTime]
    attr_accessor :time_updated

    # This time represents the earliest time of the log entry in this container. An RFC3339 formatted datetime string
    # @return [DateTime]
    attr_accessor :time_earliest_log_entry

    # This time represents the latest time of the log entry in this container. An RFC3339 formatted datetime string
    # @return [DateTime]
    attr_accessor :time_latest_log_entry

    # Warnings summary.
    # @return [Integer]
    attr_accessor :warnings_count

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'reference': :'reference',
        'name': :'name',
        'time_created': :'timeCreated',
        'time_updated': :'timeUpdated',
        'time_earliest_log_entry': :'timeEarliestLogEntry',
        'time_latest_log_entry': :'timeLatestLogEntry',
        'warnings_count': :'warningsCount'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'reference': :'String',
        'name': :'String',
        'time_created': :'DateTime',
        'time_updated': :'DateTime',
        'time_earliest_log_entry': :'DateTime',
        'time_latest_log_entry': :'DateTime',
        'warnings_count': :'Integer'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :reference The value to assign to the {#reference} property
    # @option attributes [String] :name The value to assign to the {#name} property
    # @option attributes [DateTime] :time_created The value to assign to the {#time_created} property
    # @option attributes [DateTime] :time_updated The value to assign to the {#time_updated} property
    # @option attributes [DateTime] :time_earliest_log_entry The value to assign to the {#time_earliest_log_entry} property
    # @option attributes [DateTime] :time_latest_log_entry The value to assign to the {#time_latest_log_entry} property
    # @option attributes [Integer] :warnings_count The value to assign to the {#warnings_count} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.reference = attributes[:'reference'] if attributes[:'reference']

      self.name = attributes[:'name'] if attributes[:'name']

      self.time_created = attributes[:'timeCreated'] if attributes[:'timeCreated']

      raise 'You cannot provide both :timeCreated and :time_created' if attributes.key?(:'timeCreated') && attributes.key?(:'time_created')

      self.time_created = attributes[:'time_created'] if attributes[:'time_created']

      self.time_updated = attributes[:'timeUpdated'] if attributes[:'timeUpdated']

      raise 'You cannot provide both :timeUpdated and :time_updated' if attributes.key?(:'timeUpdated') && attributes.key?(:'time_updated')

      self.time_updated = attributes[:'time_updated'] if attributes[:'time_updated']

      self.time_earliest_log_entry = attributes[:'timeEarliestLogEntry'] if attributes[:'timeEarliestLogEntry']

      raise 'You cannot provide both :timeEarliestLogEntry and :time_earliest_log_entry' if attributes.key?(:'timeEarliestLogEntry') && attributes.key?(:'time_earliest_log_entry')

      self.time_earliest_log_entry = attributes[:'time_earliest_log_entry'] if attributes[:'time_earliest_log_entry']

      self.time_latest_log_entry = attributes[:'timeLatestLogEntry'] if attributes[:'timeLatestLogEntry']

      raise 'You cannot provide both :timeLatestLogEntry and :time_latest_log_entry' if attributes.key?(:'timeLatestLogEntry') && attributes.key?(:'time_latest_log_entry')

      self.time_latest_log_entry = attributes[:'time_latest_log_entry'] if attributes[:'time_latest_log_entry']

      self.warnings_count = attributes[:'warningsCount'] if attributes[:'warningsCount']

      raise 'You cannot provide both :warningsCount and :warnings_count' if attributes.key?(:'warningsCount') && attributes.key?(:'warnings_count')

      self.warnings_count = attributes[:'warnings_count'] if attributes[:'warnings_count']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        reference == other.reference &&
        name == other.name &&
        time_created == other.time_created &&
        time_updated == other.time_updated &&
        time_earliest_log_entry == other.time_earliest_log_entry &&
        time_latest_log_entry == other.time_latest_log_entry &&
        warnings_count == other.warnings_count
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
      [reference, name, time_created, time_updated, time_earliest_log_entry, time_latest_log_entry, warnings_count].hash
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