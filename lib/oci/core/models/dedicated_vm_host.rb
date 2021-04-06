# Copyright (c) 2016, 2021, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'
require 'logger'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # A dedicated virtual machine host lets you host multiple VM instances
  # on a dedicated server that is not shared with other tenancies.
  #
  class Core::Models::DedicatedVmHost
    LIFECYCLE_STATE_ENUM = [
      LIFECYCLE_STATE_CREATING = 'CREATING'.freeze,
      LIFECYCLE_STATE_ACTIVE = 'ACTIVE'.freeze,
      LIFECYCLE_STATE_UPDATING = 'UPDATING'.freeze,
      LIFECYCLE_STATE_DELETING = 'DELETING'.freeze,
      LIFECYCLE_STATE_DELETED = 'DELETED'.freeze,
      LIFECYCLE_STATE_FAILED = 'FAILED'.freeze,
      LIFECYCLE_STATE_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    # **[Required]** The availability domain the dedicated virtual machine host is running in.
    #
    # Example: `Uocm:PHX-AD-1`
    #
    # @return [String]
    attr_accessor :availability_domain

    # **[Required]** The OCID of the compartment that contains the dedicated virtual machine host.
    # @return [String]
    attr_accessor :compartment_id

    # **[Required]** The dedicated virtual machine host shape. The shape determines the number of CPUs and
    # other resources available for VMs.
    #
    # @return [String]
    attr_accessor :dedicated_vm_host_shape

    # Defined tags for this resource. Each key is predefined and scoped to a
    # namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm).
    #
    # Example: `{\"Operations\": {\"CostCenter\": \"42\"}}`
    #
    # @return [Hash<String, Hash<String, Object>>]
    attr_accessor :defined_tags

    # **[Required]** A user-friendly name. Does not have to be unique, and it's changeable.
    # Avoid entering confidential information.
    #
    # Example: `My Dedicated Vm Host`
    #
    # @return [String]
    attr_accessor :display_name

    # The fault domain for the dedicated virtual machine host's assigned instances.
    # For more information, see [Fault Domains](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/regions.htm#fault).
    #
    # If you do not specify the fault domain, the system selects one for you. To change the fault domain for a dedicated virtual machine host,
    # delete it, and then create a new dedicated virtual machine host in the preferred fault domain.
    #
    # To get a list of fault domains, use the `ListFaultDomains` operation in the [Identity and Access Management Service API](https://docs.cloud.oracle.com/iaas/api/#/en/identity/20160918/).
    #
    # Example: `FAULT-DOMAIN-1`
    #
    # @return [String]
    attr_accessor :fault_domain

    # Free-form tags for this resource. Each tag is a simple key-value pair with no
    # predefined name, type, or namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm).
    #
    # Example: `{\"Department\": \"Finance\"}`
    #
    # @return [Hash<String, String>]
    attr_accessor :freeform_tags

    # **[Required]** The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the dedicated VM host.
    # @return [String]
    attr_accessor :id

    # **[Required]** The current state of the dedicated VM host.
    #
    # @return [String]
    attr_reader :lifecycle_state

    # **[Required]** The date and time the dedicated VM host was created, in the format defined by [RFC3339](https://tools.ietf.org/html/rfc3339).
    #
    # Example: `2016-08-25T21:10:29.600Z`
    #
    # @return [DateTime]
    attr_accessor :time_created

    # **[Required]** The total OCPUs of the dedicated VM host.
    #
    # @return [Float]
    attr_accessor :total_ocpus

    # **[Required]** The available OCPUs of the dedicated VM host.
    #
    # @return [Float]
    attr_accessor :remaining_ocpus

    # The total memory of the dedicated VM host, in GBs.
    #
    # @return [Float]
    attr_accessor :total_memory_in_gbs

    # The remaining memory of the dedicated VM host, in GBs.
    #
    # @return [Float]
    attr_accessor :remaining_memory_in_gbs

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'availability_domain': :'availabilityDomain',
        'compartment_id': :'compartmentId',
        'dedicated_vm_host_shape': :'dedicatedVmHostShape',
        'defined_tags': :'definedTags',
        'display_name': :'displayName',
        'fault_domain': :'faultDomain',
        'freeform_tags': :'freeformTags',
        'id': :'id',
        'lifecycle_state': :'lifecycleState',
        'time_created': :'timeCreated',
        'total_ocpus': :'totalOcpus',
        'remaining_ocpus': :'remainingOcpus',
        'total_memory_in_gbs': :'totalMemoryInGBs',
        'remaining_memory_in_gbs': :'remainingMemoryInGBs'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'availability_domain': :'String',
        'compartment_id': :'String',
        'dedicated_vm_host_shape': :'String',
        'defined_tags': :'Hash<String, Hash<String, Object>>',
        'display_name': :'String',
        'fault_domain': :'String',
        'freeform_tags': :'Hash<String, String>',
        'id': :'String',
        'lifecycle_state': :'String',
        'time_created': :'DateTime',
        'total_ocpus': :'Float',
        'remaining_ocpus': :'Float',
        'total_memory_in_gbs': :'Float',
        'remaining_memory_in_gbs': :'Float'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :availability_domain The value to assign to the {#availability_domain} property
    # @option attributes [String] :compartment_id The value to assign to the {#compartment_id} property
    # @option attributes [String] :dedicated_vm_host_shape The value to assign to the {#dedicated_vm_host_shape} property
    # @option attributes [Hash<String, Hash<String, Object>>] :defined_tags The value to assign to the {#defined_tags} property
    # @option attributes [String] :display_name The value to assign to the {#display_name} property
    # @option attributes [String] :fault_domain The value to assign to the {#fault_domain} property
    # @option attributes [Hash<String, String>] :freeform_tags The value to assign to the {#freeform_tags} property
    # @option attributes [String] :id The value to assign to the {#id} property
    # @option attributes [String] :lifecycle_state The value to assign to the {#lifecycle_state} property
    # @option attributes [DateTime] :time_created The value to assign to the {#time_created} property
    # @option attributes [Float] :total_ocpus The value to assign to the {#total_ocpus} property
    # @option attributes [Float] :remaining_ocpus The value to assign to the {#remaining_ocpus} property
    # @option attributes [Float] :total_memory_in_gbs The value to assign to the {#total_memory_in_gbs} property
    # @option attributes [Float] :remaining_memory_in_gbs The value to assign to the {#remaining_memory_in_gbs} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.availability_domain = attributes[:'availabilityDomain'] if attributes[:'availabilityDomain']

      raise 'You cannot provide both :availabilityDomain and :availability_domain' if attributes.key?(:'availabilityDomain') && attributes.key?(:'availability_domain')

      self.availability_domain = attributes[:'availability_domain'] if attributes[:'availability_domain']

      self.compartment_id = attributes[:'compartmentId'] if attributes[:'compartmentId']

      raise 'You cannot provide both :compartmentId and :compartment_id' if attributes.key?(:'compartmentId') && attributes.key?(:'compartment_id')

      self.compartment_id = attributes[:'compartment_id'] if attributes[:'compartment_id']

      self.dedicated_vm_host_shape = attributes[:'dedicatedVmHostShape'] if attributes[:'dedicatedVmHostShape']

      raise 'You cannot provide both :dedicatedVmHostShape and :dedicated_vm_host_shape' if attributes.key?(:'dedicatedVmHostShape') && attributes.key?(:'dedicated_vm_host_shape')

      self.dedicated_vm_host_shape = attributes[:'dedicated_vm_host_shape'] if attributes[:'dedicated_vm_host_shape']

      self.defined_tags = attributes[:'definedTags'] if attributes[:'definedTags']

      raise 'You cannot provide both :definedTags and :defined_tags' if attributes.key?(:'definedTags') && attributes.key?(:'defined_tags')

      self.defined_tags = attributes[:'defined_tags'] if attributes[:'defined_tags']

      self.display_name = attributes[:'displayName'] if attributes[:'displayName']

      raise 'You cannot provide both :displayName and :display_name' if attributes.key?(:'displayName') && attributes.key?(:'display_name')

      self.display_name = attributes[:'display_name'] if attributes[:'display_name']

      self.fault_domain = attributes[:'faultDomain'] if attributes[:'faultDomain']

      raise 'You cannot provide both :faultDomain and :fault_domain' if attributes.key?(:'faultDomain') && attributes.key?(:'fault_domain')

      self.fault_domain = attributes[:'fault_domain'] if attributes[:'fault_domain']

      self.freeform_tags = attributes[:'freeformTags'] if attributes[:'freeformTags']

      raise 'You cannot provide both :freeformTags and :freeform_tags' if attributes.key?(:'freeformTags') && attributes.key?(:'freeform_tags')

      self.freeform_tags = attributes[:'freeform_tags'] if attributes[:'freeform_tags']

      self.id = attributes[:'id'] if attributes[:'id']

      self.lifecycle_state = attributes[:'lifecycleState'] if attributes[:'lifecycleState']

      raise 'You cannot provide both :lifecycleState and :lifecycle_state' if attributes.key?(:'lifecycleState') && attributes.key?(:'lifecycle_state')

      self.lifecycle_state = attributes[:'lifecycle_state'] if attributes[:'lifecycle_state']

      self.time_created = attributes[:'timeCreated'] if attributes[:'timeCreated']

      raise 'You cannot provide both :timeCreated and :time_created' if attributes.key?(:'timeCreated') && attributes.key?(:'time_created')

      self.time_created = attributes[:'time_created'] if attributes[:'time_created']

      self.total_ocpus = attributes[:'totalOcpus'] if attributes[:'totalOcpus']

      raise 'You cannot provide both :totalOcpus and :total_ocpus' if attributes.key?(:'totalOcpus') && attributes.key?(:'total_ocpus')

      self.total_ocpus = attributes[:'total_ocpus'] if attributes[:'total_ocpus']

      self.remaining_ocpus = attributes[:'remainingOcpus'] if attributes[:'remainingOcpus']

      raise 'You cannot provide both :remainingOcpus and :remaining_ocpus' if attributes.key?(:'remainingOcpus') && attributes.key?(:'remaining_ocpus')

      self.remaining_ocpus = attributes[:'remaining_ocpus'] if attributes[:'remaining_ocpus']

      self.total_memory_in_gbs = attributes[:'totalMemoryInGBs'] if attributes[:'totalMemoryInGBs']

      raise 'You cannot provide both :totalMemoryInGBs and :total_memory_in_gbs' if attributes.key?(:'totalMemoryInGBs') && attributes.key?(:'total_memory_in_gbs')

      self.total_memory_in_gbs = attributes[:'total_memory_in_gbs'] if attributes[:'total_memory_in_gbs']

      self.remaining_memory_in_gbs = attributes[:'remainingMemoryInGBs'] if attributes[:'remainingMemoryInGBs']

      raise 'You cannot provide both :remainingMemoryInGBs and :remaining_memory_in_gbs' if attributes.key?(:'remainingMemoryInGBs') && attributes.key?(:'remaining_memory_in_gbs')

      self.remaining_memory_in_gbs = attributes[:'remaining_memory_in_gbs'] if attributes[:'remaining_memory_in_gbs']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

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
        availability_domain == other.availability_domain &&
        compartment_id == other.compartment_id &&
        dedicated_vm_host_shape == other.dedicated_vm_host_shape &&
        defined_tags == other.defined_tags &&
        display_name == other.display_name &&
        fault_domain == other.fault_domain &&
        freeform_tags == other.freeform_tags &&
        id == other.id &&
        lifecycle_state == other.lifecycle_state &&
        time_created == other.time_created &&
        total_ocpus == other.total_ocpus &&
        remaining_ocpus == other.remaining_ocpus &&
        total_memory_in_gbs == other.total_memory_in_gbs &&
        remaining_memory_in_gbs == other.remaining_memory_in_gbs
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
      [availability_domain, compartment_id, dedicated_vm_host_shape, defined_tags, display_name, fault_domain, freeform_tags, id, lifecycle_state, time_created, total_ocpus, remaining_ocpus, total_memory_in_gbs, remaining_memory_in_gbs].hash
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
