# Copyright (c) 2016, 2021, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'
require 'logger'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # A connection between a DRG and CPE. This connection consists of multiple IPSec
  # tunnels. Creating this connection is one of the steps required when setting up
  # an IPSec VPN.
  #
  # **Important:**  Each tunnel in an IPSec connection can use either static routing or BGP dynamic
  # routing (see the {IPSecConnectionTunnel} object's
  # `routing` attribute). Originally only static routing was supported and
  # every IPSec connection was required to have at least one static route configured.
  # To maintain backward compatibility in the API when support for BPG dynamic routing was introduced,
  # the API accepts an empty list of static routes if you configure both of the IPSec tunnels to use
  # BGP dynamic routing. If you switch a tunnel's routing from `BGP` to `STATIC`, you must first
  # ensure that the IPSec connection is configured with at least one valid CIDR block static route.
  # Oracle uses the IPSec connection's static routes when routing a tunnel's traffic *only*
  # if that tunnel's `routing` attribute = `STATIC`. Otherwise the static routes are ignored.
  #
  # For more information about the workflow for setting up an IPSec connection, see
  # [IPSec VPN](https://docs.cloud.oracle.com/iaas/Content/Network/Tasks/managingIPsec.htm).
  #
  # To use any of the API operations, you must be authorized in an IAM policy. If you're not authorized,
  # talk to an administrator. If you're an administrator who needs to write policies to give users access, see
  # [Getting Started with Policies](https://docs.cloud.oracle.com/iaas/Content/Identity/Concepts/policygetstarted.htm).
  #
  class Core::Models::IPSecConnection
    LIFECYCLE_STATE_ENUM = [
      LIFECYCLE_STATE_PROVISIONING = 'PROVISIONING'.freeze,
      LIFECYCLE_STATE_AVAILABLE = 'AVAILABLE'.freeze,
      LIFECYCLE_STATE_TERMINATING = 'TERMINATING'.freeze,
      LIFECYCLE_STATE_TERMINATED = 'TERMINATED'.freeze,
      LIFECYCLE_STATE_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    CPE_LOCAL_IDENTIFIER_TYPE_ENUM = [
      CPE_LOCAL_IDENTIFIER_TYPE_IP_ADDRESS = 'IP_ADDRESS'.freeze,
      CPE_LOCAL_IDENTIFIER_TYPE_HOSTNAME = 'HOSTNAME'.freeze,
      CPE_LOCAL_IDENTIFIER_TYPE_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    # **[Required]** The OCID of the compartment containing the IPSec connection.
    # @return [String]
    attr_accessor :compartment_id

    # **[Required]** The OCID of the {Cpe} object.
    # @return [String]
    attr_accessor :cpe_id

    # Defined tags for this resource. Each key is predefined and scoped to a
    # namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm).
    #
    # Example: `{\"Operations\": {\"CostCenter\": \"42\"}}`
    #
    # @return [Hash<String, Hash<String, Object>>]
    attr_accessor :defined_tags

    # A user-friendly name. Does not have to be unique, and it's changeable.
    # Avoid entering confidential information.
    #
    # @return [String]
    attr_accessor :display_name

    # **[Required]** The [OCID](https://docs.cloud.oracle.com/Content/General/Concepts/identifiers.htm) of the DRG.
    # @return [String]
    attr_accessor :drg_id

    # Free-form tags for this resource. Each tag is a simple key-value pair with no
    # predefined name, type, or namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm).
    #
    # Example: `{\"Department\": \"Finance\"}`
    #
    # @return [Hash<String, String>]
    attr_accessor :freeform_tags

    # **[Required]** The IPSec connection's Oracle ID ([OCID](https://docs.cloud.oracle.com/Content/General/Concepts/identifiers.htm)).
    # @return [String]
    attr_accessor :id

    # **[Required]** The IPSec connection's current state.
    # @return [String]
    attr_reader :lifecycle_state

    # Your identifier for your CPE device. Can be either an IP address or a hostname (specifically,
    # the fully qualified domain name (FQDN)). The type of identifier here must correspond
    # to the value for `cpeLocalIdentifierType`.
    #
    # If you don't provide a value when creating the IPSec connection, the `ipAddress` attribute
    # for the {Cpe} object specified by `cpeId` is used as the `cpeLocalIdentifier`.
    #
    # For information about why you'd provide this value, see
    # [If Your CPE Is Behind a NAT Device](https://docs.cloud.oracle.com/iaas/Content/Network/Tasks/overviewIPsec.htm#nat).
    #
    # Example IP address: `10.0.3.3`
    #
    # Example hostname: `cpe.example.com`
    #
    # @return [String]
    attr_accessor :cpe_local_identifier

    # The type of identifier for your CPE device. The value here must correspond to the value
    # for `cpeLocalIdentifier`.
    #
    # @return [String]
    attr_reader :cpe_local_identifier_type

    # **[Required]** Static routes to the CPE. The CIDR must not be a
    # multicast address or class E address.
    #
    # Used for routing a given IPSec tunnel's traffic only if the tunnel
    # is using static routing. If you configure at least one tunnel to use static routing, then
    # you must provide at least one valid static route. If you configure both
    # tunnels to use BGP dynamic routing, you can provide an empty list for the static routes.
    #
    # The CIDR can be either IPv4 or IPv6. IPv6 addressing is supported for all commercial and government regions.
    # See [IPv6 Addresses](https://docs.cloud.oracle.com/iaas/Content/Network/Concepts/ipv6.htm).
    #
    # Example: `10.0.1.0/24`
    #
    # Example: `2001:db8::/32`
    #
    # @return [Array<String>]
    attr_accessor :static_routes

    # The date and time the IPSec connection was created, in the format defined by [RFC3339](https://tools.ietf.org/html/rfc3339).
    #
    # Example: `2016-08-25T21:10:29.600Z`
    #
    # @return [DateTime]
    attr_accessor :time_created

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'compartment_id': :'compartmentId',
        'cpe_id': :'cpeId',
        'defined_tags': :'definedTags',
        'display_name': :'displayName',
        'drg_id': :'drgId',
        'freeform_tags': :'freeformTags',
        'id': :'id',
        'lifecycle_state': :'lifecycleState',
        'cpe_local_identifier': :'cpeLocalIdentifier',
        'cpe_local_identifier_type': :'cpeLocalIdentifierType',
        'static_routes': :'staticRoutes',
        'time_created': :'timeCreated'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'compartment_id': :'String',
        'cpe_id': :'String',
        'defined_tags': :'Hash<String, Hash<String, Object>>',
        'display_name': :'String',
        'drg_id': :'String',
        'freeform_tags': :'Hash<String, String>',
        'id': :'String',
        'lifecycle_state': :'String',
        'cpe_local_identifier': :'String',
        'cpe_local_identifier_type': :'String',
        'static_routes': :'Array<String>',
        'time_created': :'DateTime'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :compartment_id The value to assign to the {#compartment_id} property
    # @option attributes [String] :cpe_id The value to assign to the {#cpe_id} property
    # @option attributes [Hash<String, Hash<String, Object>>] :defined_tags The value to assign to the {#defined_tags} property
    # @option attributes [String] :display_name The value to assign to the {#display_name} property
    # @option attributes [String] :drg_id The value to assign to the {#drg_id} property
    # @option attributes [Hash<String, String>] :freeform_tags The value to assign to the {#freeform_tags} property
    # @option attributes [String] :id The value to assign to the {#id} property
    # @option attributes [String] :lifecycle_state The value to assign to the {#lifecycle_state} property
    # @option attributes [String] :cpe_local_identifier The value to assign to the {#cpe_local_identifier} property
    # @option attributes [String] :cpe_local_identifier_type The value to assign to the {#cpe_local_identifier_type} property
    # @option attributes [Array<String>] :static_routes The value to assign to the {#static_routes} property
    # @option attributes [DateTime] :time_created The value to assign to the {#time_created} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.compartment_id = attributes[:'compartmentId'] if attributes[:'compartmentId']

      raise 'You cannot provide both :compartmentId and :compartment_id' if attributes.key?(:'compartmentId') && attributes.key?(:'compartment_id')

      self.compartment_id = attributes[:'compartment_id'] if attributes[:'compartment_id']

      self.cpe_id = attributes[:'cpeId'] if attributes[:'cpeId']

      raise 'You cannot provide both :cpeId and :cpe_id' if attributes.key?(:'cpeId') && attributes.key?(:'cpe_id')

      self.cpe_id = attributes[:'cpe_id'] if attributes[:'cpe_id']

      self.defined_tags = attributes[:'definedTags'] if attributes[:'definedTags']

      raise 'You cannot provide both :definedTags and :defined_tags' if attributes.key?(:'definedTags') && attributes.key?(:'defined_tags')

      self.defined_tags = attributes[:'defined_tags'] if attributes[:'defined_tags']

      self.display_name = attributes[:'displayName'] if attributes[:'displayName']

      raise 'You cannot provide both :displayName and :display_name' if attributes.key?(:'displayName') && attributes.key?(:'display_name')

      self.display_name = attributes[:'display_name'] if attributes[:'display_name']

      self.drg_id = attributes[:'drgId'] if attributes[:'drgId']

      raise 'You cannot provide both :drgId and :drg_id' if attributes.key?(:'drgId') && attributes.key?(:'drg_id')

      self.drg_id = attributes[:'drg_id'] if attributes[:'drg_id']

      self.freeform_tags = attributes[:'freeformTags'] if attributes[:'freeformTags']

      raise 'You cannot provide both :freeformTags and :freeform_tags' if attributes.key?(:'freeformTags') && attributes.key?(:'freeform_tags')

      self.freeform_tags = attributes[:'freeform_tags'] if attributes[:'freeform_tags']

      self.id = attributes[:'id'] if attributes[:'id']

      self.lifecycle_state = attributes[:'lifecycleState'] if attributes[:'lifecycleState']

      raise 'You cannot provide both :lifecycleState and :lifecycle_state' if attributes.key?(:'lifecycleState') && attributes.key?(:'lifecycle_state')

      self.lifecycle_state = attributes[:'lifecycle_state'] if attributes[:'lifecycle_state']

      self.cpe_local_identifier = attributes[:'cpeLocalIdentifier'] if attributes[:'cpeLocalIdentifier']

      raise 'You cannot provide both :cpeLocalIdentifier and :cpe_local_identifier' if attributes.key?(:'cpeLocalIdentifier') && attributes.key?(:'cpe_local_identifier')

      self.cpe_local_identifier = attributes[:'cpe_local_identifier'] if attributes[:'cpe_local_identifier']

      self.cpe_local_identifier_type = attributes[:'cpeLocalIdentifierType'] if attributes[:'cpeLocalIdentifierType']

      raise 'You cannot provide both :cpeLocalIdentifierType and :cpe_local_identifier_type' if attributes.key?(:'cpeLocalIdentifierType') && attributes.key?(:'cpe_local_identifier_type')

      self.cpe_local_identifier_type = attributes[:'cpe_local_identifier_type'] if attributes[:'cpe_local_identifier_type']

      self.static_routes = attributes[:'staticRoutes'] if attributes[:'staticRoutes']

      raise 'You cannot provide both :staticRoutes and :static_routes' if attributes.key?(:'staticRoutes') && attributes.key?(:'static_routes')

      self.static_routes = attributes[:'static_routes'] if attributes[:'static_routes']

      self.time_created = attributes[:'timeCreated'] if attributes[:'timeCreated']

      raise 'You cannot provide both :timeCreated and :time_created' if attributes.key?(:'timeCreated') && attributes.key?(:'time_created')

      self.time_created = attributes[:'time_created'] if attributes[:'time_created']
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

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] cpe_local_identifier_type Object to be assigned
    def cpe_local_identifier_type=(cpe_local_identifier_type)
      # rubocop:disable Style/ConditionalAssignment
      if cpe_local_identifier_type && !CPE_LOCAL_IDENTIFIER_TYPE_ENUM.include?(cpe_local_identifier_type)
        OCI.logger.debug("Unknown value for 'cpe_local_identifier_type' [" + cpe_local_identifier_type + "]. Mapping to 'CPE_LOCAL_IDENTIFIER_TYPE_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @cpe_local_identifier_type = CPE_LOCAL_IDENTIFIER_TYPE_UNKNOWN_ENUM_VALUE
      else
        @cpe_local_identifier_type = cpe_local_identifier_type
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
        cpe_id == other.cpe_id &&
        defined_tags == other.defined_tags &&
        display_name == other.display_name &&
        drg_id == other.drg_id &&
        freeform_tags == other.freeform_tags &&
        id == other.id &&
        lifecycle_state == other.lifecycle_state &&
        cpe_local_identifier == other.cpe_local_identifier &&
        cpe_local_identifier_type == other.cpe_local_identifier_type &&
        static_routes == other.static_routes &&
        time_created == other.time_created
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
      [compartment_id, cpe_id, defined_tags, display_name, drg_id, freeform_tags, id, lifecycle_state, cpe_local_identifier, cpe_local_identifier_type, static_routes, time_created].hash
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
