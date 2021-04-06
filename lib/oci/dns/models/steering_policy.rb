# Copyright (c) 2016, 2021, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'
require 'logger'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # A DNS steering policy.
  #
  # **Warning:** Oracle recommends that you avoid using any confidential information when you supply string values using the API.
  #
  class Dns::Models::SteeringPolicy
    TEMPLATE_ENUM = [
      TEMPLATE_FAILOVER = 'FAILOVER'.freeze,
      TEMPLATE_LOAD_BALANCE = 'LOAD_BALANCE'.freeze,
      TEMPLATE_ROUTE_BY_GEO = 'ROUTE_BY_GEO'.freeze,
      TEMPLATE_ROUTE_BY_ASN = 'ROUTE_BY_ASN'.freeze,
      TEMPLATE_ROUTE_BY_IP = 'ROUTE_BY_IP'.freeze,
      TEMPLATE_CUSTOM = 'CUSTOM'.freeze,
      TEMPLATE_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    LIFECYCLE_STATE_ENUM = [
      LIFECYCLE_STATE_ACTIVE = 'ACTIVE'.freeze,
      LIFECYCLE_STATE_CREATING = 'CREATING'.freeze,
      LIFECYCLE_STATE_DELETED = 'DELETED'.freeze,
      LIFECYCLE_STATE_DELETING = 'DELETING'.freeze,
      LIFECYCLE_STATE_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    # **[Required]** The OCID of the compartment containing the steering policy.
    # @return [String]
    attr_accessor :compartment_id

    # **[Required]** A user-friendly name for the steering policy. Does not have to be unique and can be changed.
    # Avoid entering confidential information.
    #
    # @return [String]
    attr_accessor :display_name

    # **[Required]** The Time To Live (TTL) for responses from the steering policy, in seconds.
    # If not specified during creation, a value of 30 seconds will be used.
    #
    # @return [Integer]
    attr_accessor :ttl

    # The OCID of the health check monitor providing health data about the answers of the
    # steering policy. A steering policy answer with `rdata` matching a monitored endpoint
    # will use the health data of that endpoint. A steering policy answer with `rdata` not
    # matching any monitored endpoint will be assumed healthy.
    #
    #
    # **Note:** To use the Health Check monitoring feature in a steering policy, a monitor
    # must be created using the Health Checks service first. For more information on how to
    # create a monitor, please see [Managing Health Checks](https://docs.cloud.oracle.com/iaas/Content/HealthChecks/Tasks/managinghealthchecks.htm).
    #
    # @return [String]
    attr_accessor :health_check_monitor_id

    # **[Required]** A set of predefined rules based on the desired purpose of the steering policy. Each
    # template utilizes Traffic Management's rules in a different order to produce the desired
    # results when answering DNS queries.
    #
    #
    # **Example:** The `FAILOVER` template determines answers by filtering the policy's answers
    # using the `FILTER` rule first, then the following rules in succession: `HEALTH`, `PRIORITY`,
    # and `LIMIT`. This gives the domain dynamic failover capability.
    #
    #
    # It is **strongly recommended** to use a template other than `CUSTOM` when creating
    # a steering policy.
    #
    #
    # All templates require the rule order to begin with an unconditional `FILTER` rule that keeps
    # answers contingent upon `answer.isDisabled != true`, except for `CUSTOM`. A defined
    # `HEALTH` rule must follow the `FILTER` rule if the policy references a `healthCheckMonitorId`.
    # The last rule of a template must must be a `LIMIT` rule. For more information about templates
    # and code examples, see [Traffic Management API Guide](https://docs.cloud.oracle.com/iaas/Content/TrafficManagement/Concepts/trafficmanagementapi.htm).
    #
    # **Template Types**
    #
    # * `FAILOVER` - Uses health check information on your endpoints to determine which DNS answers
    # to serve. If an endpoint fails a health check, the answer for that endpoint will be removed
    # from the list of available answers until the endpoint is detected as healthy.
    #
    #
    # * `LOAD_BALANCE` - Distributes web traffic to specified endpoints based on defined weights.
    #
    #
    # * `ROUTE_BY_GEO` - Answers DNS queries based on the query's geographic location. For a list of geographic
    # locations to route by, see [Traffic Management Geographic Locations](https://docs.cloud.oracle.com/iaas/Content/TrafficManagement/Reference/trafficmanagementgeo.htm).
    #
    #
    # * `ROUTE_BY_ASN` - Answers DNS queries based on the query's originating ASN.
    #
    #
    # * `ROUTE_BY_IP` - Answers DNS queries based on the query's IP address.
    #
    #
    # * `CUSTOM` - Allows a customized configuration of rules.
    #
    # @return [String]
    attr_reader :template

    # **[Required]** Free-form tags for this resource. Each tag is a simple key-value pair with no predefined name, type, or namespace.
    # For more information, see [Resource Tags](https://docs.cloud.oracle.com/Content/General/Concepts/resourcetags.htm).
    #
    #
    # **Example:** `{\"Department\": \"Finance\"}`
    #
    # @return [Hash<String, String>]
    attr_accessor :freeform_tags

    # **[Required]** Defined tags for this resource. Each key is predefined and scoped to a namespace.
    # For more information, see [Resource Tags](https://docs.cloud.oracle.com/Content/General/Concepts/resourcetags.htm).
    #
    #
    # **Example:** `{\"Operations\": {\"CostCenter\": \"42\"}}`
    #
    # @return [Hash<String, Hash<String, Object>>]
    attr_accessor :defined_tags

    # **[Required]** The set of all answers that can potentially issue from the steering policy.
    #
    # @return [Array<OCI::Dns::Models::SteeringPolicyAnswer>]
    attr_accessor :answers

    # **[Required]** The series of rules that will be processed in sequence to reduce the pool of answers
    # to a response for any given request.
    #
    #
    # The first rule receives a shuffled list of all answers, and every other rule receives
    # the list of answers emitted by the one preceding it. The last rule populates the
    # response.
    #
    # @return [Array<OCI::Dns::Models::SteeringPolicyRule>]
    attr_accessor :rules

    # **[Required]** The canonical absolute URL of the resource.
    # @return [String]
    attr_accessor :_self

    # **[Required]** The OCID of the resource.
    # @return [String]
    attr_accessor :id

    # **[Required]** The date and time the resource was created, expressed in RFC 3339 timestamp format.
    #
    # **Example:** `2016-07-22T17:23:59:60Z`
    #
    # @return [DateTime]
    attr_accessor :time_created

    # **[Required]** The current state of the resource.
    # @return [String]
    attr_reader :lifecycle_state

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'compartment_id': :'compartmentId',
        'display_name': :'displayName',
        'ttl': :'ttl',
        'health_check_monitor_id': :'healthCheckMonitorId',
        'template': :'template',
        'freeform_tags': :'freeformTags',
        'defined_tags': :'definedTags',
        'answers': :'answers',
        'rules': :'rules',
        '_self': :'self',
        'id': :'id',
        'time_created': :'timeCreated',
        'lifecycle_state': :'lifecycleState'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'compartment_id': :'String',
        'display_name': :'String',
        'ttl': :'Integer',
        'health_check_monitor_id': :'String',
        'template': :'String',
        'freeform_tags': :'Hash<String, String>',
        'defined_tags': :'Hash<String, Hash<String, Object>>',
        'answers': :'Array<OCI::Dns::Models::SteeringPolicyAnswer>',
        'rules': :'Array<OCI::Dns::Models::SteeringPolicyRule>',
        '_self': :'String',
        'id': :'String',
        'time_created': :'DateTime',
        'lifecycle_state': :'String'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :compartment_id The value to assign to the {#compartment_id} property
    # @option attributes [String] :display_name The value to assign to the {#display_name} property
    # @option attributes [Integer] :ttl The value to assign to the {#ttl} property
    # @option attributes [String] :health_check_monitor_id The value to assign to the {#health_check_monitor_id} property
    # @option attributes [String] :template The value to assign to the {#template} property
    # @option attributes [Hash<String, String>] :freeform_tags The value to assign to the {#freeform_tags} property
    # @option attributes [Hash<String, Hash<String, Object>>] :defined_tags The value to assign to the {#defined_tags} property
    # @option attributes [Array<OCI::Dns::Models::SteeringPolicyAnswer>] :answers The value to assign to the {#answers} property
    # @option attributes [Array<OCI::Dns::Models::SteeringPolicyRule>] :rules The value to assign to the {#rules} property
    # @option attributes [String] :_self The value to assign to the {#_self} property
    # @option attributes [String] :id The value to assign to the {#id} property
    # @option attributes [DateTime] :time_created The value to assign to the {#time_created} property
    # @option attributes [String] :lifecycle_state The value to assign to the {#lifecycle_state} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.compartment_id = attributes[:'compartmentId'] if attributes[:'compartmentId']

      raise 'You cannot provide both :compartmentId and :compartment_id' if attributes.key?(:'compartmentId') && attributes.key?(:'compartment_id')

      self.compartment_id = attributes[:'compartment_id'] if attributes[:'compartment_id']

      self.display_name = attributes[:'displayName'] if attributes[:'displayName']

      raise 'You cannot provide both :displayName and :display_name' if attributes.key?(:'displayName') && attributes.key?(:'display_name')

      self.display_name = attributes[:'display_name'] if attributes[:'display_name']

      self.ttl = attributes[:'ttl'] if attributes[:'ttl']

      self.health_check_monitor_id = attributes[:'healthCheckMonitorId'] if attributes[:'healthCheckMonitorId']

      raise 'You cannot provide both :healthCheckMonitorId and :health_check_monitor_id' if attributes.key?(:'healthCheckMonitorId') && attributes.key?(:'health_check_monitor_id')

      self.health_check_monitor_id = attributes[:'health_check_monitor_id'] if attributes[:'health_check_monitor_id']

      self.template = attributes[:'template'] if attributes[:'template']

      self.freeform_tags = attributes[:'freeformTags'] if attributes[:'freeformTags']

      raise 'You cannot provide both :freeformTags and :freeform_tags' if attributes.key?(:'freeformTags') && attributes.key?(:'freeform_tags')

      self.freeform_tags = attributes[:'freeform_tags'] if attributes[:'freeform_tags']

      self.defined_tags = attributes[:'definedTags'] if attributes[:'definedTags']

      raise 'You cannot provide both :definedTags and :defined_tags' if attributes.key?(:'definedTags') && attributes.key?(:'defined_tags')

      self.defined_tags = attributes[:'defined_tags'] if attributes[:'defined_tags']

      self.answers = attributes[:'answers'] if attributes[:'answers']

      self.rules = attributes[:'rules'] if attributes[:'rules']

      self._self = attributes[:'self'] if attributes[:'self']

      raise 'You cannot provide both :self and :_self' if attributes.key?(:'self') && attributes.key?(:'_self')

      self._self = attributes[:'_self'] if attributes[:'_self']

      self.id = attributes[:'id'] if attributes[:'id']

      self.time_created = attributes[:'timeCreated'] if attributes[:'timeCreated']

      raise 'You cannot provide both :timeCreated and :time_created' if attributes.key?(:'timeCreated') && attributes.key?(:'time_created')

      self.time_created = attributes[:'time_created'] if attributes[:'time_created']

      self.lifecycle_state = attributes[:'lifecycleState'] if attributes[:'lifecycleState']

      raise 'You cannot provide both :lifecycleState and :lifecycle_state' if attributes.key?(:'lifecycleState') && attributes.key?(:'lifecycle_state')

      self.lifecycle_state = attributes[:'lifecycle_state'] if attributes[:'lifecycle_state']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] template Object to be assigned
    def template=(template)
      # rubocop:disable Style/ConditionalAssignment
      if template && !TEMPLATE_ENUM.include?(template)
        OCI.logger.debug("Unknown value for 'template' [" + template + "]. Mapping to 'TEMPLATE_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @template = TEMPLATE_UNKNOWN_ENUM_VALUE
      else
        @template = template
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
        compartment_id == other.compartment_id &&
        display_name == other.display_name &&
        ttl == other.ttl &&
        health_check_monitor_id == other.health_check_monitor_id &&
        template == other.template &&
        freeform_tags == other.freeform_tags &&
        defined_tags == other.defined_tags &&
        answers == other.answers &&
        rules == other.rules &&
        _self == other._self &&
        id == other.id &&
        time_created == other.time_created &&
        lifecycle_state == other.lifecycle_state
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
      [compartment_id, display_name, ttl, health_check_monitor_id, template, freeform_tags, defined_tags, answers, rules, _self, id, time_created, lifecycle_state].hash
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
