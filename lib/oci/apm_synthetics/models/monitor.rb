# Copyright (c) 2016, 2021, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'
require 'logger'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # The information about a monitor.
  class ApmSynthetics::Models::Monitor
    MONITOR_TYPE_ENUM = [
      MONITOR_TYPE_SCRIPTED_BROWSER = 'SCRIPTED_BROWSER'.freeze,
      MONITOR_TYPE_BROWSER = 'BROWSER'.freeze,
      MONITOR_TYPE_SCRIPTED_REST = 'SCRIPTED_REST'.freeze,
      MONITOR_TYPE_REST = 'REST'.freeze,
      MONITOR_TYPE_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    STATUS_ENUM = [
      STATUS_ENABLED = 'ENABLED'.freeze,
      STATUS_DISABLED = 'DISABLED'.freeze,
      STATUS_INVALID = 'INVALID'.freeze,
      STATUS_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    # **[Required]** The [OCID](https://docs.cloud.oracle.com/Content/General/Concepts/identifiers.htm) of the monitor.
    # @return [String]
    attr_accessor :id

    # **[Required]** Unique name that can be edited. The name should not contain any confidential information.
    # @return [String]
    attr_accessor :display_name

    # **[Required]** Type of the monitor.
    # @return [String]
    attr_reader :monitor_type

    # **[Required]** List of vantage points from where monitor is running.
    # @return [Array<OCI::ApmSynthetics::Models::VantagePointInfo>]
    attr_accessor :vantage_points

    # **[Required]** Number of vantage points where monitor is running.
    # @return [Integer]
    attr_accessor :vantage_point_count

    # **[Required]** The [OCID](https://docs.cloud.oracle.com/Content/General/Concepts/identifiers.htm) of the script.
    # scriptId is mandatory for creation of SCRIPTED_BROWSER and SCRIPTED_REST monitor types. For other monitor types, it should be set to null.
    #
    # @return [String]
    attr_accessor :script_id

    # **[Required]** Name of the script.
    # @return [String]
    attr_accessor :script_name

    # **[Required]** Enables or disables the monitor.
    # @return [String]
    attr_reader :status

    # **[Required]** Interval in seconds after the start time when the job should be repeated.
    # Minimum repeatIntervalInSeconds should be 300 seconds.
    #
    # @return [Integer]
    attr_accessor :repeat_interval_in_seconds

    # **[Required]** Timeout in seconds. Timeout cannot be more than 30% of repeatIntervalInSeconds time for monitors.
    # Also, timeoutInSeconds should be a multiple of 60. Monitor will be allowed to run only for timeoutInSeconds time. It would be terminated after that.
    #
    # @return [Integer]
    attr_accessor :timeout_in_seconds

    # Specify the endpoint on which to run the monitor.
    # For BROWSER and REST monitor types, target is mandatory.
    # If target is specified in the SCRIPTED_BROWSER monitor type, then the monitor will run the selected script (specified by scriptId in monitor) against the specified target endpoint.
    # If target is not specified in the SCRIPTED_BROWSER monitor type, then the monitor will run the selected script as it is.
    #
    # @return [String]
    attr_accessor :target

    # List of script parameters. Example: `[{\"monitorScriptParameter\": {\"paramName\": \"userid\", \"paramValue\":\"testuser\"}, \"isSecret\": false, \"isOverwritten\": false}]`
    #
    # @return [Array<OCI::ApmSynthetics::Models::MonitorScriptParameterInfo>]
    attr_accessor :script_parameters

    # @return [OCI::ApmSynthetics::Models::MonitorConfiguration]
    attr_accessor :configuration

    # The time the resource was created, expressed in [RFC 3339](https://tools.ietf.org/html/rfc3339)
    # timestamp format.
    # Example: `2020-02-12T22:47:12.613Z`
    #
    # @return [DateTime]
    attr_accessor :time_created

    # The time the resource was updated, expressed in [RFC 3339](https://tools.ietf.org/html/rfc3339)
    # timestamp format.
    # Example: `2020-02-13T22:47:12.613Z`
    #
    # @return [DateTime]
    attr_accessor :time_updated

    # Simple key-value pair that is applied without any predefined name, type or scope. Exists for cross-compatibility only.
    # Example: `{\"bar-key\": \"value\"}`
    #
    # @return [Hash<String, String>]
    attr_accessor :freeform_tags

    # Defined tags for this resource. Each key is predefined and scoped to a namespace.
    # Example: `{\"foo-namespace\": {\"bar-key\": \"value\"}}`
    #
    # @return [Hash<String, Hash<String, Object>>]
    attr_accessor :defined_tags

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'id': :'id',
        'display_name': :'displayName',
        'monitor_type': :'monitorType',
        'vantage_points': :'vantagePoints',
        'vantage_point_count': :'vantagePointCount',
        'script_id': :'scriptId',
        'script_name': :'scriptName',
        'status': :'status',
        'repeat_interval_in_seconds': :'repeatIntervalInSeconds',
        'timeout_in_seconds': :'timeoutInSeconds',
        'target': :'target',
        'script_parameters': :'scriptParameters',
        'configuration': :'configuration',
        'time_created': :'timeCreated',
        'time_updated': :'timeUpdated',
        'freeform_tags': :'freeformTags',
        'defined_tags': :'definedTags'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'id': :'String',
        'display_name': :'String',
        'monitor_type': :'String',
        'vantage_points': :'Array<OCI::ApmSynthetics::Models::VantagePointInfo>',
        'vantage_point_count': :'Integer',
        'script_id': :'String',
        'script_name': :'String',
        'status': :'String',
        'repeat_interval_in_seconds': :'Integer',
        'timeout_in_seconds': :'Integer',
        'target': :'String',
        'script_parameters': :'Array<OCI::ApmSynthetics::Models::MonitorScriptParameterInfo>',
        'configuration': :'OCI::ApmSynthetics::Models::MonitorConfiguration',
        'time_created': :'DateTime',
        'time_updated': :'DateTime',
        'freeform_tags': :'Hash<String, String>',
        'defined_tags': :'Hash<String, Hash<String, Object>>'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :id The value to assign to the {#id} property
    # @option attributes [String] :display_name The value to assign to the {#display_name} property
    # @option attributes [String] :monitor_type The value to assign to the {#monitor_type} property
    # @option attributes [Array<OCI::ApmSynthetics::Models::VantagePointInfo>] :vantage_points The value to assign to the {#vantage_points} property
    # @option attributes [Integer] :vantage_point_count The value to assign to the {#vantage_point_count} property
    # @option attributes [String] :script_id The value to assign to the {#script_id} property
    # @option attributes [String] :script_name The value to assign to the {#script_name} property
    # @option attributes [String] :status The value to assign to the {#status} property
    # @option attributes [Integer] :repeat_interval_in_seconds The value to assign to the {#repeat_interval_in_seconds} property
    # @option attributes [Integer] :timeout_in_seconds The value to assign to the {#timeout_in_seconds} property
    # @option attributes [String] :target The value to assign to the {#target} property
    # @option attributes [Array<OCI::ApmSynthetics::Models::MonitorScriptParameterInfo>] :script_parameters The value to assign to the {#script_parameters} property
    # @option attributes [OCI::ApmSynthetics::Models::MonitorConfiguration] :configuration The value to assign to the {#configuration} property
    # @option attributes [DateTime] :time_created The value to assign to the {#time_created} property
    # @option attributes [DateTime] :time_updated The value to assign to the {#time_updated} property
    # @option attributes [Hash<String, String>] :freeform_tags The value to assign to the {#freeform_tags} property
    # @option attributes [Hash<String, Hash<String, Object>>] :defined_tags The value to assign to the {#defined_tags} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.id = attributes[:'id'] if attributes[:'id']

      self.display_name = attributes[:'displayName'] if attributes[:'displayName']

      raise 'You cannot provide both :displayName and :display_name' if attributes.key?(:'displayName') && attributes.key?(:'display_name')

      self.display_name = attributes[:'display_name'] if attributes[:'display_name']

      self.monitor_type = attributes[:'monitorType'] if attributes[:'monitorType']

      raise 'You cannot provide both :monitorType and :monitor_type' if attributes.key?(:'monitorType') && attributes.key?(:'monitor_type')

      self.monitor_type = attributes[:'monitor_type'] if attributes[:'monitor_type']

      self.vantage_points = attributes[:'vantagePoints'] if attributes[:'vantagePoints']

      raise 'You cannot provide both :vantagePoints and :vantage_points' if attributes.key?(:'vantagePoints') && attributes.key?(:'vantage_points')

      self.vantage_points = attributes[:'vantage_points'] if attributes[:'vantage_points']

      self.vantage_point_count = attributes[:'vantagePointCount'] if attributes[:'vantagePointCount']

      raise 'You cannot provide both :vantagePointCount and :vantage_point_count' if attributes.key?(:'vantagePointCount') && attributes.key?(:'vantage_point_count')

      self.vantage_point_count = attributes[:'vantage_point_count'] if attributes[:'vantage_point_count']

      self.script_id = attributes[:'scriptId'] if attributes[:'scriptId']

      raise 'You cannot provide both :scriptId and :script_id' if attributes.key?(:'scriptId') && attributes.key?(:'script_id')

      self.script_id = attributes[:'script_id'] if attributes[:'script_id']

      self.script_name = attributes[:'scriptName'] if attributes[:'scriptName']

      raise 'You cannot provide both :scriptName and :script_name' if attributes.key?(:'scriptName') && attributes.key?(:'script_name')

      self.script_name = attributes[:'script_name'] if attributes[:'script_name']

      self.status = attributes[:'status'] if attributes[:'status']

      self.repeat_interval_in_seconds = attributes[:'repeatIntervalInSeconds'] if attributes[:'repeatIntervalInSeconds']

      raise 'You cannot provide both :repeatIntervalInSeconds and :repeat_interval_in_seconds' if attributes.key?(:'repeatIntervalInSeconds') && attributes.key?(:'repeat_interval_in_seconds')

      self.repeat_interval_in_seconds = attributes[:'repeat_interval_in_seconds'] if attributes[:'repeat_interval_in_seconds']

      self.timeout_in_seconds = attributes[:'timeoutInSeconds'] if attributes[:'timeoutInSeconds']

      raise 'You cannot provide both :timeoutInSeconds and :timeout_in_seconds' if attributes.key?(:'timeoutInSeconds') && attributes.key?(:'timeout_in_seconds')

      self.timeout_in_seconds = attributes[:'timeout_in_seconds'] if attributes[:'timeout_in_seconds']

      self.target = attributes[:'target'] if attributes[:'target']

      self.script_parameters = attributes[:'scriptParameters'] if attributes[:'scriptParameters']

      raise 'You cannot provide both :scriptParameters and :script_parameters' if attributes.key?(:'scriptParameters') && attributes.key?(:'script_parameters')

      self.script_parameters = attributes[:'script_parameters'] if attributes[:'script_parameters']

      self.configuration = attributes[:'configuration'] if attributes[:'configuration']

      self.time_created = attributes[:'timeCreated'] if attributes[:'timeCreated']

      raise 'You cannot provide both :timeCreated and :time_created' if attributes.key?(:'timeCreated') && attributes.key?(:'time_created')

      self.time_created = attributes[:'time_created'] if attributes[:'time_created']

      self.time_updated = attributes[:'timeUpdated'] if attributes[:'timeUpdated']

      raise 'You cannot provide both :timeUpdated and :time_updated' if attributes.key?(:'timeUpdated') && attributes.key?(:'time_updated')

      self.time_updated = attributes[:'time_updated'] if attributes[:'time_updated']

      self.freeform_tags = attributes[:'freeformTags'] if attributes[:'freeformTags']

      raise 'You cannot provide both :freeformTags and :freeform_tags' if attributes.key?(:'freeformTags') && attributes.key?(:'freeform_tags')

      self.freeform_tags = attributes[:'freeform_tags'] if attributes[:'freeform_tags']

      self.defined_tags = attributes[:'definedTags'] if attributes[:'definedTags']

      raise 'You cannot provide both :definedTags and :defined_tags' if attributes.key?(:'definedTags') && attributes.key?(:'defined_tags')

      self.defined_tags = attributes[:'defined_tags'] if attributes[:'defined_tags']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] monitor_type Object to be assigned
    def monitor_type=(monitor_type)
      # rubocop:disable Style/ConditionalAssignment
      if monitor_type && !MONITOR_TYPE_ENUM.include?(monitor_type)
        OCI.logger.debug("Unknown value for 'monitor_type' [" + monitor_type + "]. Mapping to 'MONITOR_TYPE_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @monitor_type = MONITOR_TYPE_UNKNOWN_ENUM_VALUE
      else
        @monitor_type = monitor_type
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      # rubocop:disable Style/ConditionalAssignment
      if status && !STATUS_ENUM.include?(status)
        OCI.logger.debug("Unknown value for 'status' [" + status + "]. Mapping to 'STATUS_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @status = STATUS_UNKNOWN_ENUM_VALUE
      else
        @status = status
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        id == other.id &&
        display_name == other.display_name &&
        monitor_type == other.monitor_type &&
        vantage_points == other.vantage_points &&
        vantage_point_count == other.vantage_point_count &&
        script_id == other.script_id &&
        script_name == other.script_name &&
        status == other.status &&
        repeat_interval_in_seconds == other.repeat_interval_in_seconds &&
        timeout_in_seconds == other.timeout_in_seconds &&
        target == other.target &&
        script_parameters == other.script_parameters &&
        configuration == other.configuration &&
        time_created == other.time_created &&
        time_updated == other.time_updated &&
        freeform_tags == other.freeform_tags &&
        defined_tags == other.defined_tags
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
      [id, display_name, monitor_type, vantage_points, vantage_point_count, script_id, script_name, status, repeat_interval_in_seconds, timeout_in_seconds, target, script_parameters, configuration, time_created, time_updated, freeform_tags, defined_tags].hash
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
