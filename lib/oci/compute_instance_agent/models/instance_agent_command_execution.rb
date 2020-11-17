# Copyright (c) 2016, 2020, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'
require 'logger'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # A command's execution summary.
  class ComputeInstanceAgent::Models::InstanceAgentCommandExecution
    DELIVERY_STATE_ENUM = [
      DELIVERY_STATE_VISIBLE = 'VISIBLE'.freeze,
      DELIVERY_STATE_PENDING = 'PENDING'.freeze,
      DELIVERY_STATE_ACKED = 'ACKED'.freeze,
      DELIVERY_STATE_ACKED_CANCELED = 'ACKED_CANCELED'.freeze,
      DELIVERY_STATE_EXPIRED = 'EXPIRED'.freeze,
      DELIVERY_STATE_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    LIFECYCLE_STATE_ENUM = [
      LIFECYCLE_STATE_ACCEPTED = 'ACCEPTED'.freeze,
      LIFECYCLE_STATE_IN_PROGRESS = 'IN_PROGRESS'.freeze,
      LIFECYCLE_STATE_SUCCEEDED = 'SUCCEEDED'.freeze,
      LIFECYCLE_STATE_FAILED = 'FAILED'.freeze,
      LIFECYCLE_STATE_TIMED_OUT = 'TIMED_OUT'.freeze,
      LIFECYCLE_STATE_CANCELED = 'CANCELED'.freeze,
      LIFECYCLE_STATE_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    # **[Required]** The OCID of the command
    # @return [String]
    attr_accessor :instance_agent_command_id

    # **[Required]** The OCID of the instance
    # @return [String]
    attr_accessor :instance_id

    # **[Required]** Specifies the command delivery state.
    #  * `VISIBLE` - The command is visible to instance.
    #  * `PENDING` - The command is pending ack from the instance.
    #  * `ACKED` - The command has been received and acked by the instance.
    #  * `ACKED_CANCELED` - The canceled command has been received and acked by the instance.
    #  * `EXPIRED` - The instance has not requested for commands and its delivery has expired.
    #
    # @return [String]
    attr_reader :delivery_state

    # **[Required]** command execution life cycle state.
    # * `ACCEPTED` - The command execution has been accepted to run.
    # * `IN_PROGRESS` - The command execution is in progress.
    # * `SUCCEEDED` - The command execution is successful.
    # * `FAILED` - The command execution has failed.
    # * `TIMED_OUT` - The command execution has timedout.
    # * `CANCELED` - The command execution has canceled.
    #
    # @return [String]
    attr_reader :lifecycle_state

    # **[Required]** The command creation date
    # @return [DateTime]
    attr_accessor :time_created

    # **[Required]** The command last updated at date.
    # @return [DateTime]
    attr_accessor :time_updated

    # **[Required]** The large non-consecutive number that Run Command Service assigns to each created command.
    # @return [Integer]
    attr_accessor :sequence_number

    # The user friendly display name of the command.
    # @return [String]
    attr_accessor :display_name

    # This attribute is required.
    # @return [OCI::ComputeInstanceAgent::Models::InstanceAgentCommandExecutionOutputContent]
    attr_accessor :content

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'instance_agent_command_id': :'instanceAgentCommandId',
        'instance_id': :'instanceId',
        'delivery_state': :'deliveryState',
        'lifecycle_state': :'lifecycleState',
        'time_created': :'timeCreated',
        'time_updated': :'timeUpdated',
        'sequence_number': :'sequenceNumber',
        'display_name': :'displayName',
        'content': :'content'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'instance_agent_command_id': :'String',
        'instance_id': :'String',
        'delivery_state': :'String',
        'lifecycle_state': :'String',
        'time_created': :'DateTime',
        'time_updated': :'DateTime',
        'sequence_number': :'Integer',
        'display_name': :'String',
        'content': :'OCI::ComputeInstanceAgent::Models::InstanceAgentCommandExecutionOutputContent'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :instance_agent_command_id The value to assign to the {#instance_agent_command_id} property
    # @option attributes [String] :instance_id The value to assign to the {#instance_id} property
    # @option attributes [String] :delivery_state The value to assign to the {#delivery_state} property
    # @option attributes [String] :lifecycle_state The value to assign to the {#lifecycle_state} property
    # @option attributes [DateTime] :time_created The value to assign to the {#time_created} property
    # @option attributes [DateTime] :time_updated The value to assign to the {#time_updated} property
    # @option attributes [Integer] :sequence_number The value to assign to the {#sequence_number} property
    # @option attributes [String] :display_name The value to assign to the {#display_name} property
    # @option attributes [OCI::ComputeInstanceAgent::Models::InstanceAgentCommandExecutionOutputContent] :content The value to assign to the {#content} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.instance_agent_command_id = attributes[:'instanceAgentCommandId'] if attributes[:'instanceAgentCommandId']

      raise 'You cannot provide both :instanceAgentCommandId and :instance_agent_command_id' if attributes.key?(:'instanceAgentCommandId') && attributes.key?(:'instance_agent_command_id')

      self.instance_agent_command_id = attributes[:'instance_agent_command_id'] if attributes[:'instance_agent_command_id']

      self.instance_id = attributes[:'instanceId'] if attributes[:'instanceId']

      raise 'You cannot provide both :instanceId and :instance_id' if attributes.key?(:'instanceId') && attributes.key?(:'instance_id')

      self.instance_id = attributes[:'instance_id'] if attributes[:'instance_id']

      self.delivery_state = attributes[:'deliveryState'] if attributes[:'deliveryState']

      raise 'You cannot provide both :deliveryState and :delivery_state' if attributes.key?(:'deliveryState') && attributes.key?(:'delivery_state')

      self.delivery_state = attributes[:'delivery_state'] if attributes[:'delivery_state']

      self.lifecycle_state = attributes[:'lifecycleState'] if attributes[:'lifecycleState']

      raise 'You cannot provide both :lifecycleState and :lifecycle_state' if attributes.key?(:'lifecycleState') && attributes.key?(:'lifecycle_state')

      self.lifecycle_state = attributes[:'lifecycle_state'] if attributes[:'lifecycle_state']

      self.time_created = attributes[:'timeCreated'] if attributes[:'timeCreated']

      raise 'You cannot provide both :timeCreated and :time_created' if attributes.key?(:'timeCreated') && attributes.key?(:'time_created')

      self.time_created = attributes[:'time_created'] if attributes[:'time_created']

      self.time_updated = attributes[:'timeUpdated'] if attributes[:'timeUpdated']

      raise 'You cannot provide both :timeUpdated and :time_updated' if attributes.key?(:'timeUpdated') && attributes.key?(:'time_updated')

      self.time_updated = attributes[:'time_updated'] if attributes[:'time_updated']

      self.sequence_number = attributes[:'sequenceNumber'] if attributes[:'sequenceNumber']

      raise 'You cannot provide both :sequenceNumber and :sequence_number' if attributes.key?(:'sequenceNumber') && attributes.key?(:'sequence_number')

      self.sequence_number = attributes[:'sequence_number'] if attributes[:'sequence_number']

      self.display_name = attributes[:'displayName'] if attributes[:'displayName']

      raise 'You cannot provide both :displayName and :display_name' if attributes.key?(:'displayName') && attributes.key?(:'display_name')

      self.display_name = attributes[:'display_name'] if attributes[:'display_name']

      self.content = attributes[:'content'] if attributes[:'content']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] delivery_state Object to be assigned
    def delivery_state=(delivery_state)
      # rubocop:disable Style/ConditionalAssignment
      if delivery_state && !DELIVERY_STATE_ENUM.include?(delivery_state)
        OCI.logger.debug("Unknown value for 'delivery_state' [" + delivery_state + "]. Mapping to 'DELIVERY_STATE_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @delivery_state = DELIVERY_STATE_UNKNOWN_ENUM_VALUE
      else
        @delivery_state = delivery_state
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] lifecycle_state Object to be assigned
    def lifecycle_state=(lifecycle_state)
      # rubocop:disable Style/ConditionalAssignment
      if lifecycle_state && !LIFECYCLE_STATE_ENUM.include?(lifecycle_state)
        OCI.logger.debug("Unknown value for 'lifecycle_state' [" + lifecycle_state + "]. Mapping to 'LIFECYCLE_STATE_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @lifecycle_state = LIFECYCLE_STATE_UNKNOWN_ENUM_VALUE
      else
        @lifecycle_state = lifecycle_state
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        instance_agent_command_id == other.instance_agent_command_id &&
        instance_id == other.instance_id &&
        delivery_state == other.delivery_state &&
        lifecycle_state == other.lifecycle_state &&
        time_created == other.time_created &&
        time_updated == other.time_updated &&
        sequence_number == other.sequence_number &&
        display_name == other.display_name &&
        content == other.content
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
      [instance_agent_command_id, instance_id, delivery_state, lifecycle_state, time_created, time_updated, sequence_number, display_name, content].hash
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
