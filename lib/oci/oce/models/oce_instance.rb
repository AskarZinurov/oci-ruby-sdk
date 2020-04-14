# Copyright (c) 2016, 2020, Oracle and/or its affiliates. All rights reserved.

require 'date'
require 'logger'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # Details of OceInstance.
  class Oce::Models::OceInstance
    UPGRADE_SCHEDULE_ENUM = [
      UPGRADE_SCHEDULE_UPGRADE_IMMEDIATELY = 'UPGRADE_IMMEDIATELY'.freeze,
      UPGRADE_SCHEDULE_DELAYED_UPGRADE = 'DELAYED_UPGRADE'.freeze,
      UPGRADE_SCHEDULE_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    INSTANCE_USAGE_TYPE_ENUM = [
      INSTANCE_USAGE_TYPE_PRIMARY = 'PRIMARY'.freeze,
      INSTANCE_USAGE_TYPE_NONPRIMARY = 'NONPRIMARY'.freeze,
      INSTANCE_USAGE_TYPE_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    INSTANCE_ACCESS_TYPE_ENUM = [
      INSTANCE_ACCESS_TYPE_PUBLIC = 'PUBLIC'.freeze,
      INSTANCE_ACCESS_TYPE_PRIVATE = 'PRIVATE'.freeze,
      INSTANCE_ACCESS_TYPE_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    LIFECYCLE_STATE_ENUM = [
      LIFECYCLE_STATE_CREATING = 'CREATING'.freeze,
      LIFECYCLE_STATE_UPDATING = 'UPDATING'.freeze,
      LIFECYCLE_STATE_ACTIVE = 'ACTIVE'.freeze,
      LIFECYCLE_STATE_DELETING = 'DELETING'.freeze,
      LIFECYCLE_STATE_DELETED = 'DELETED'.freeze,
      LIFECYCLE_STATE_FAILED = 'FAILED'.freeze,
      LIFECYCLE_STATE_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    # **[Required]** Unique identifier that is immutable on creation
    # @return [String]
    attr_accessor :id

    # **[Required]** Unique GUID identifier that is immutable on creation
    # @return [String]
    attr_accessor :guid

    # OceInstance description, can be updated
    # @return [String]
    attr_accessor :description

    # **[Required]** Compartment Identifier
    # @return [String]
    attr_accessor :compartment_id

    # **[Required]** OceInstance Name
    # @return [String]
    attr_accessor :name

    # **[Required]** Tenancy Identifier
    # @return [String]
    attr_accessor :tenancy_id

    # **[Required]** IDCS Tenancy Identifier
    # @return [String]
    attr_accessor :idcs_tenancy

    # **[Required]** Tenancy Name
    # @return [String]
    attr_accessor :tenancy_name

    # Upgrade schedule type representing service to be upgraded immediately whenever latest version is released
    # or delay upgrade of the service to previous released version
    #
    # @return [String]
    attr_reader :upgrade_schedule

    # @return [OCI::Oce::Models::IdentityStripeDetails]
    attr_accessor :identity_stripe

    # Instance type based on its usage
    # @return [String]
    attr_reader :instance_usage_type

    # **[Required]** Object Storage Namespace of tenancy
    # @return [String]
    attr_accessor :object_storage_namespace

    # **[Required]** Admin Email for Notification
    # @return [String]
    attr_accessor :admin_email

    # Web Application Firewall(WAF) primary domain
    # @return [String]
    attr_accessor :waf_primary_domain

    # Flag indicating whether the instance access is private or public
    # @return [String]
    attr_reader :instance_access_type

    # The time the the OceInstance was created. An RFC3339 formatted datetime string
    # @return [DateTime]
    attr_accessor :time_created

    # The time the OceInstance was updated. An RFC3339 formatted datetime string
    # @return [DateTime]
    attr_accessor :time_updated

    # The current state of the file system.
    # @return [String]
    attr_reader :lifecycle_state

    # An message describing the current state in more detail. For example, can be used to provide actionable information for a resource in Failed state.
    # @return [String]
    attr_accessor :state_message

    # Simple key-value pair that is applied without any predefined name, type or scope. Exists for cross-compatibility only.
    # Example: `{\"bar-key\": \"value\"}`
    #
    # @return [Hash<String, String>]
    attr_accessor :freeform_tags

    # Usage of predefined tag keys. These predefined keys are scoped to namespaces.
    # Example: `{\"foo-namespace\": {\"bar-key\": \"value\"}}`
    #
    # @return [Hash<String, Hash<String, Object>>]
    attr_accessor :defined_tags

    # SERVICE data.
    # Example: `{\"service\": {\"IDCS\": \"value\"}}`
    #
    # @return [Hash<String, Object>]
    attr_accessor :service

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'id': :'id',
        'guid': :'guid',
        'description': :'description',
        'compartment_id': :'compartmentId',
        'name': :'name',
        'tenancy_id': :'tenancyId',
        'idcs_tenancy': :'idcsTenancy',
        'tenancy_name': :'tenancyName',
        'upgrade_schedule': :'upgradeSchedule',
        'identity_stripe': :'identityStripe',
        'instance_usage_type': :'instanceUsageType',
        'object_storage_namespace': :'objectStorageNamespace',
        'admin_email': :'adminEmail',
        'waf_primary_domain': :'wafPrimaryDomain',
        'instance_access_type': :'instanceAccessType',
        'time_created': :'timeCreated',
        'time_updated': :'timeUpdated',
        'lifecycle_state': :'lifecycleState',
        'state_message': :'stateMessage',
        'freeform_tags': :'freeformTags',
        'defined_tags': :'definedTags',
        'service': :'service'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'id': :'String',
        'guid': :'String',
        'description': :'String',
        'compartment_id': :'String',
        'name': :'String',
        'tenancy_id': :'String',
        'idcs_tenancy': :'String',
        'tenancy_name': :'String',
        'upgrade_schedule': :'String',
        'identity_stripe': :'OCI::Oce::Models::IdentityStripeDetails',
        'instance_usage_type': :'String',
        'object_storage_namespace': :'String',
        'admin_email': :'String',
        'waf_primary_domain': :'String',
        'instance_access_type': :'String',
        'time_created': :'DateTime',
        'time_updated': :'DateTime',
        'lifecycle_state': :'String',
        'state_message': :'String',
        'freeform_tags': :'Hash<String, String>',
        'defined_tags': :'Hash<String, Hash<String, Object>>',
        'service': :'Hash<String, Object>'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :id The value to assign to the {#id} property
    # @option attributes [String] :guid The value to assign to the {#guid} property
    # @option attributes [String] :description The value to assign to the {#description} property
    # @option attributes [String] :compartment_id The value to assign to the {#compartment_id} property
    # @option attributes [String] :name The value to assign to the {#name} property
    # @option attributes [String] :tenancy_id The value to assign to the {#tenancy_id} property
    # @option attributes [String] :idcs_tenancy The value to assign to the {#idcs_tenancy} property
    # @option attributes [String] :tenancy_name The value to assign to the {#tenancy_name} property
    # @option attributes [String] :upgrade_schedule The value to assign to the {#upgrade_schedule} property
    # @option attributes [OCI::Oce::Models::IdentityStripeDetails] :identity_stripe The value to assign to the {#identity_stripe} property
    # @option attributes [String] :instance_usage_type The value to assign to the {#instance_usage_type} property
    # @option attributes [String] :object_storage_namespace The value to assign to the {#object_storage_namespace} property
    # @option attributes [String] :admin_email The value to assign to the {#admin_email} property
    # @option attributes [String] :waf_primary_domain The value to assign to the {#waf_primary_domain} property
    # @option attributes [String] :instance_access_type The value to assign to the {#instance_access_type} property
    # @option attributes [DateTime] :time_created The value to assign to the {#time_created} property
    # @option attributes [DateTime] :time_updated The value to assign to the {#time_updated} property
    # @option attributes [String] :lifecycle_state The value to assign to the {#lifecycle_state} property
    # @option attributes [String] :state_message The value to assign to the {#state_message} property
    # @option attributes [Hash<String, String>] :freeform_tags The value to assign to the {#freeform_tags} property
    # @option attributes [Hash<String, Hash<String, Object>>] :defined_tags The value to assign to the {#defined_tags} property
    # @option attributes [Hash<String, Object>] :service The value to assign to the {#service} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.id = attributes[:'id'] if attributes[:'id']

      self.guid = attributes[:'guid'] if attributes[:'guid']

      self.description = attributes[:'description'] if attributes[:'description']

      self.compartment_id = attributes[:'compartmentId'] if attributes[:'compartmentId']

      raise 'You cannot provide both :compartmentId and :compartment_id' if attributes.key?(:'compartmentId') && attributes.key?(:'compartment_id')

      self.compartment_id = attributes[:'compartment_id'] if attributes[:'compartment_id']

      self.name = attributes[:'name'] if attributes[:'name']

      self.tenancy_id = attributes[:'tenancyId'] if attributes[:'tenancyId']

      raise 'You cannot provide both :tenancyId and :tenancy_id' if attributes.key?(:'tenancyId') && attributes.key?(:'tenancy_id')

      self.tenancy_id = attributes[:'tenancy_id'] if attributes[:'tenancy_id']

      self.idcs_tenancy = attributes[:'idcsTenancy'] if attributes[:'idcsTenancy']

      raise 'You cannot provide both :idcsTenancy and :idcs_tenancy' if attributes.key?(:'idcsTenancy') && attributes.key?(:'idcs_tenancy')

      self.idcs_tenancy = attributes[:'idcs_tenancy'] if attributes[:'idcs_tenancy']

      self.tenancy_name = attributes[:'tenancyName'] if attributes[:'tenancyName']

      raise 'You cannot provide both :tenancyName and :tenancy_name' if attributes.key?(:'tenancyName') && attributes.key?(:'tenancy_name')

      self.tenancy_name = attributes[:'tenancy_name'] if attributes[:'tenancy_name']

      self.upgrade_schedule = attributes[:'upgradeSchedule'] if attributes[:'upgradeSchedule']

      raise 'You cannot provide both :upgradeSchedule and :upgrade_schedule' if attributes.key?(:'upgradeSchedule') && attributes.key?(:'upgrade_schedule')

      self.upgrade_schedule = attributes[:'upgrade_schedule'] if attributes[:'upgrade_schedule']

      self.identity_stripe = attributes[:'identityStripe'] if attributes[:'identityStripe']

      raise 'You cannot provide both :identityStripe and :identity_stripe' if attributes.key?(:'identityStripe') && attributes.key?(:'identity_stripe')

      self.identity_stripe = attributes[:'identity_stripe'] if attributes[:'identity_stripe']

      self.instance_usage_type = attributes[:'instanceUsageType'] if attributes[:'instanceUsageType']

      raise 'You cannot provide both :instanceUsageType and :instance_usage_type' if attributes.key?(:'instanceUsageType') && attributes.key?(:'instance_usage_type')

      self.instance_usage_type = attributes[:'instance_usage_type'] if attributes[:'instance_usage_type']

      self.object_storage_namespace = attributes[:'objectStorageNamespace'] if attributes[:'objectStorageNamespace']

      raise 'You cannot provide both :objectStorageNamespace and :object_storage_namespace' if attributes.key?(:'objectStorageNamespace') && attributes.key?(:'object_storage_namespace')

      self.object_storage_namespace = attributes[:'object_storage_namespace'] if attributes[:'object_storage_namespace']

      self.admin_email = attributes[:'adminEmail'] if attributes[:'adminEmail']

      raise 'You cannot provide both :adminEmail and :admin_email' if attributes.key?(:'adminEmail') && attributes.key?(:'admin_email')

      self.admin_email = attributes[:'admin_email'] if attributes[:'admin_email']

      self.waf_primary_domain = attributes[:'wafPrimaryDomain'] if attributes[:'wafPrimaryDomain']

      raise 'You cannot provide both :wafPrimaryDomain and :waf_primary_domain' if attributes.key?(:'wafPrimaryDomain') && attributes.key?(:'waf_primary_domain')

      self.waf_primary_domain = attributes[:'waf_primary_domain'] if attributes[:'waf_primary_domain']

      self.instance_access_type = attributes[:'instanceAccessType'] if attributes[:'instanceAccessType']

      raise 'You cannot provide both :instanceAccessType and :instance_access_type' if attributes.key?(:'instanceAccessType') && attributes.key?(:'instance_access_type')

      self.instance_access_type = attributes[:'instance_access_type'] if attributes[:'instance_access_type']

      self.time_created = attributes[:'timeCreated'] if attributes[:'timeCreated']

      raise 'You cannot provide both :timeCreated and :time_created' if attributes.key?(:'timeCreated') && attributes.key?(:'time_created')

      self.time_created = attributes[:'time_created'] if attributes[:'time_created']

      self.time_updated = attributes[:'timeUpdated'] if attributes[:'timeUpdated']

      raise 'You cannot provide both :timeUpdated and :time_updated' if attributes.key?(:'timeUpdated') && attributes.key?(:'time_updated')

      self.time_updated = attributes[:'time_updated'] if attributes[:'time_updated']

      self.lifecycle_state = attributes[:'lifecycleState'] if attributes[:'lifecycleState']

      raise 'You cannot provide both :lifecycleState and :lifecycle_state' if attributes.key?(:'lifecycleState') && attributes.key?(:'lifecycle_state')

      self.lifecycle_state = attributes[:'lifecycle_state'] if attributes[:'lifecycle_state']

      self.state_message = attributes[:'stateMessage'] if attributes[:'stateMessage']

      raise 'You cannot provide both :stateMessage and :state_message' if attributes.key?(:'stateMessage') && attributes.key?(:'state_message')

      self.state_message = attributes[:'state_message'] if attributes[:'state_message']

      self.freeform_tags = attributes[:'freeformTags'] if attributes[:'freeformTags']

      raise 'You cannot provide both :freeformTags and :freeform_tags' if attributes.key?(:'freeformTags') && attributes.key?(:'freeform_tags')

      self.freeform_tags = attributes[:'freeform_tags'] if attributes[:'freeform_tags']

      self.defined_tags = attributes[:'definedTags'] if attributes[:'definedTags']

      raise 'You cannot provide both :definedTags and :defined_tags' if attributes.key?(:'definedTags') && attributes.key?(:'defined_tags')

      self.defined_tags = attributes[:'defined_tags'] if attributes[:'defined_tags']

      self.service = attributes[:'service'] if attributes[:'service']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] upgrade_schedule Object to be assigned
    def upgrade_schedule=(upgrade_schedule)
      # rubocop:disable Style/ConditionalAssignment
      if upgrade_schedule && !UPGRADE_SCHEDULE_ENUM.include?(upgrade_schedule)
        OCI.logger.debug("Unknown value for 'upgrade_schedule' [" + upgrade_schedule + "]. Mapping to 'UPGRADE_SCHEDULE_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @upgrade_schedule = UPGRADE_SCHEDULE_UNKNOWN_ENUM_VALUE
      else
        @upgrade_schedule = upgrade_schedule
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] instance_usage_type Object to be assigned
    def instance_usage_type=(instance_usage_type)
      # rubocop:disable Style/ConditionalAssignment
      if instance_usage_type && !INSTANCE_USAGE_TYPE_ENUM.include?(instance_usage_type)
        OCI.logger.debug("Unknown value for 'instance_usage_type' [" + instance_usage_type + "]. Mapping to 'INSTANCE_USAGE_TYPE_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @instance_usage_type = INSTANCE_USAGE_TYPE_UNKNOWN_ENUM_VALUE
      else
        @instance_usage_type = instance_usage_type
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] instance_access_type Object to be assigned
    def instance_access_type=(instance_access_type)
      # rubocop:disable Style/ConditionalAssignment
      if instance_access_type && !INSTANCE_ACCESS_TYPE_ENUM.include?(instance_access_type)
        OCI.logger.debug("Unknown value for 'instance_access_type' [" + instance_access_type + "]. Mapping to 'INSTANCE_ACCESS_TYPE_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @instance_access_type = INSTANCE_ACCESS_TYPE_UNKNOWN_ENUM_VALUE
      else
        @instance_access_type = instance_access_type
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
        id == other.id &&
        guid == other.guid &&
        description == other.description &&
        compartment_id == other.compartment_id &&
        name == other.name &&
        tenancy_id == other.tenancy_id &&
        idcs_tenancy == other.idcs_tenancy &&
        tenancy_name == other.tenancy_name &&
        upgrade_schedule == other.upgrade_schedule &&
        identity_stripe == other.identity_stripe &&
        instance_usage_type == other.instance_usage_type &&
        object_storage_namespace == other.object_storage_namespace &&
        admin_email == other.admin_email &&
        waf_primary_domain == other.waf_primary_domain &&
        instance_access_type == other.instance_access_type &&
        time_created == other.time_created &&
        time_updated == other.time_updated &&
        lifecycle_state == other.lifecycle_state &&
        state_message == other.state_message &&
        freeform_tags == other.freeform_tags &&
        defined_tags == other.defined_tags &&
        service == other.service
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
      [id, guid, description, compartment_id, name, tenancy_id, idcs_tenancy, tenancy_name, upgrade_schedule, identity_stripe, instance_usage_type, object_storage_namespace, admin_email, waf_primary_domain, instance_access_type, time_created, time_updated, lifecycle_state, state_message, freeform_tags, defined_tags, service].hash
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