# Copyright (c) 2016, 2021, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # The resource action that a recommendation will be applied to.
  class Optimizer::Models::BulkApplyResourceAction
    STATUS_ENUM = [
      STATUS_PENDING = 'PENDING'.freeze,
      STATUS_DISMISSED = 'DISMISSED'.freeze,
      STATUS_POSTPONED = 'POSTPONED'.freeze,
      STATUS_IMPLEMENTED = 'IMPLEMENTED'.freeze
    ].freeze

    # **[Required]** The unique OCIDs of the resource actions that recommendations are applied to.
    # @return [String]
    attr_accessor :resource_action_id

    # The current status of the recommendation.
    # @return [String]
    attr_reader :status

    # The date and time the current status will change. The format is defined by RFC3339.
    #
    # For example, \"The current `postponed` status of the resource action will end and change to `pending` on this
    # date and time.\"
    #
    # @return [DateTime]
    attr_accessor :time_status_end

    # Additional parameter key-value pairs defining the resource action.
    # For example:
    #
    # `{\"timeAmount\": 15, \"timeUnit\": \"seconds\"}`
    #
    # @return [Hash<String, Object>]
    attr_accessor :parameters

    # The name of the strategy.
    # @return [String]
    attr_accessor :strategy_name

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'resource_action_id': :'resourceActionId',
        'status': :'status',
        'time_status_end': :'timeStatusEnd',
        'parameters': :'parameters',
        'strategy_name': :'strategyName'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'resource_action_id': :'String',
        'status': :'String',
        'time_status_end': :'DateTime',
        'parameters': :'Hash<String, Object>',
        'strategy_name': :'String'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :resource_action_id The value to assign to the {#resource_action_id} property
    # @option attributes [String] :status The value to assign to the {#status} property
    # @option attributes [DateTime] :time_status_end The value to assign to the {#time_status_end} property
    # @option attributes [Hash<String, Object>] :parameters The value to assign to the {#parameters} property
    # @option attributes [String] :strategy_name The value to assign to the {#strategy_name} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.resource_action_id = attributes[:'resourceActionId'] if attributes[:'resourceActionId']

      raise 'You cannot provide both :resourceActionId and :resource_action_id' if attributes.key?(:'resourceActionId') && attributes.key?(:'resource_action_id')

      self.resource_action_id = attributes[:'resource_action_id'] if attributes[:'resource_action_id']

      self.status = attributes[:'status'] if attributes[:'status']

      self.time_status_end = attributes[:'timeStatusEnd'] if attributes[:'timeStatusEnd']

      raise 'You cannot provide both :timeStatusEnd and :time_status_end' if attributes.key?(:'timeStatusEnd') && attributes.key?(:'time_status_end')

      self.time_status_end = attributes[:'time_status_end'] if attributes[:'time_status_end']

      self.parameters = attributes[:'parameters'] if attributes[:'parameters']

      self.strategy_name = attributes[:'strategyName'] if attributes[:'strategyName']

      raise 'You cannot provide both :strategyName and :strategy_name' if attributes.key?(:'strategyName') && attributes.key?(:'strategy_name')

      self.strategy_name = attributes[:'strategy_name'] if attributes[:'strategy_name']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      raise "Invalid value for 'status': this must be one of the values in STATUS_ENUM." if status && !STATUS_ENUM.include?(status)

      @status = status
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        resource_action_id == other.resource_action_id &&
        status == other.status &&
        time_status_end == other.time_status_end &&
        parameters == other.parameters &&
        strategy_name == other.strategy_name
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
      [resource_action_id, status, time_status_end, parameters, strategy_name].hash
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
