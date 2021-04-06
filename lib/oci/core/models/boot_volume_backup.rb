# Copyright (c) 2016, 2021, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'
require 'logger'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # A point-in-time copy of a boot volume that can then be used to create
  # a new boot volume or recover a boot volume. For more information, see [Overview
  # of Boot Volume Backups](https://docs.cloud.oracle.com/iaas/Content/Block/Concepts/bootvolumebackups.htm)
  # To use any of the API operations, you must be authorized in an IAM policy.
  # If you're not authorized, talk to an administrator. If you're an administrator
  # who needs to write policies to give users access, see [Getting Started with
  # Policies](https://docs.cloud.oracle.com/iaas/Content/Identity/Concepts/policygetstarted.htm).
  #
  # **Warning:** Oracle recommends that you avoid using any confidential information when you
  # supply string values using the API.
  #
  class Core::Models::BootVolumeBackup
    LIFECYCLE_STATE_ENUM = [
      LIFECYCLE_STATE_CREATING = 'CREATING'.freeze,
      LIFECYCLE_STATE_AVAILABLE = 'AVAILABLE'.freeze,
      LIFECYCLE_STATE_TERMINATING = 'TERMINATING'.freeze,
      LIFECYCLE_STATE_TERMINATED = 'TERMINATED'.freeze,
      LIFECYCLE_STATE_FAULTY = 'FAULTY'.freeze,
      LIFECYCLE_STATE_REQUEST_RECEIVED = 'REQUEST_RECEIVED'.freeze,
      LIFECYCLE_STATE_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    SOURCE_TYPE_ENUM = [
      SOURCE_TYPE_MANUAL = 'MANUAL'.freeze,
      SOURCE_TYPE_SCHEDULED = 'SCHEDULED'.freeze,
      SOURCE_TYPE_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    TYPE_ENUM = [
      TYPE_FULL = 'FULL'.freeze,
      TYPE_INCREMENTAL = 'INCREMENTAL'.freeze,
      TYPE_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    # The OCID of the boot volume.
    # @return [String]
    attr_accessor :boot_volume_id

    # **[Required]** The OCID of the compartment that contains the boot volume backup.
    # @return [String]
    attr_accessor :compartment_id

    # Defined tags for this resource. Each key is predefined and scoped to a
    # namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm).
    #
    # Example: `{\"Operations\": {\"CostCenter\": \"42\"}}`
    #
    # @return [Hash<String, Hash<String, Object>>]
    attr_accessor :defined_tags

    # System tags for this resource. Each key is predefined and scoped to a namespace.
    # Example: `{\"foo-namespace\": {\"bar-key\": \"value\"}}`
    #
    # @return [Hash<String, Hash<String, Object>>]
    attr_accessor :system_tags

    # **[Required]** A user-friendly name for the boot volume backup. Does not have to be unique and it's changeable.
    # Avoid entering confidential information.
    #
    # @return [String]
    attr_accessor :display_name

    # The date and time the volume backup will expire and be automatically deleted.
    # Format defined by [RFC3339](https://tools.ietf.org/html/rfc3339). This parameter will always be present for backups that
    # were created automatically by a scheduled-backup policy. For manually created backups,
    # it will be absent, signifying that there is no expiration time and the backup will
    # last forever until manually deleted.
    #
    # @return [DateTime]
    attr_accessor :expiration_time

    # Free-form tags for this resource. Each tag is a simple key-value pair with no
    # predefined name, type, or namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm).
    #
    # Example: `{\"Department\": \"Finance\"}`
    #
    # @return [Hash<String, String>]
    attr_accessor :freeform_tags

    # **[Required]** The OCID of the boot volume backup.
    # @return [String]
    attr_accessor :id

    # The image OCID used to create the boot volume the backup is taken from.
    #
    # @return [String]
    attr_accessor :image_id

    # The OCID of the Key Management master encryption assigned to the boot volume backup.
    # For more information about the Key Management service and encryption keys, see
    # [Overview of Key Management](https://docs.cloud.oracle.com/iaas/Content/KeyManagement/Concepts/keyoverview.htm) and
    # [Using Keys](https://docs.cloud.oracle.com/iaas/Content/KeyManagement/Tasks/usingkeys.htm).
    #
    # @return [String]
    attr_accessor :kms_key_id

    # **[Required]** The current state of a boot volume backup.
    # @return [String]
    attr_reader :lifecycle_state

    # The size of the boot volume, in GBs.
    #
    # @return [Integer]
    attr_accessor :size_in_gbs

    # The OCID of the source boot volume backup.
    # @return [String]
    attr_accessor :source_boot_volume_backup_id

    # Specifies whether the backup was created manually, or via scheduled backup policy.
    #
    # @return [String]
    attr_reader :source_type

    # **[Required]** The date and time the boot volume backup was created. This is the time the actual point-in-time image
    # of the volume data was taken. Format defined by [RFC3339](https://tools.ietf.org/html/rfc3339).
    #
    # @return [DateTime]
    attr_accessor :time_created

    # The date and time the request to create the boot volume backup was received. Format defined by [RFC3339](https://tools.ietf.org/html/rfc3339).
    #
    # @return [DateTime]
    attr_accessor :time_request_received

    # The type of a volume backup.
    # @return [String]
    attr_reader :type

    # The size used by the backup, in GBs. It is typically smaller than sizeInGBs, depending on the space
    # consumed on the boot volume and whether the backup is full or incremental.
    #
    # @return [Integer]
    attr_accessor :unique_size_in_gbs

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'boot_volume_id': :'bootVolumeId',
        'compartment_id': :'compartmentId',
        'defined_tags': :'definedTags',
        'system_tags': :'systemTags',
        'display_name': :'displayName',
        'expiration_time': :'expirationTime',
        'freeform_tags': :'freeformTags',
        'id': :'id',
        'image_id': :'imageId',
        'kms_key_id': :'kmsKeyId',
        'lifecycle_state': :'lifecycleState',
        'size_in_gbs': :'sizeInGBs',
        'source_boot_volume_backup_id': :'sourceBootVolumeBackupId',
        'source_type': :'sourceType',
        'time_created': :'timeCreated',
        'time_request_received': :'timeRequestReceived',
        'type': :'type',
        'unique_size_in_gbs': :'uniqueSizeInGBs'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'boot_volume_id': :'String',
        'compartment_id': :'String',
        'defined_tags': :'Hash<String, Hash<String, Object>>',
        'system_tags': :'Hash<String, Hash<String, Object>>',
        'display_name': :'String',
        'expiration_time': :'DateTime',
        'freeform_tags': :'Hash<String, String>',
        'id': :'String',
        'image_id': :'String',
        'kms_key_id': :'String',
        'lifecycle_state': :'String',
        'size_in_gbs': :'Integer',
        'source_boot_volume_backup_id': :'String',
        'source_type': :'String',
        'time_created': :'DateTime',
        'time_request_received': :'DateTime',
        'type': :'String',
        'unique_size_in_gbs': :'Integer'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :boot_volume_id The value to assign to the {#boot_volume_id} property
    # @option attributes [String] :compartment_id The value to assign to the {#compartment_id} property
    # @option attributes [Hash<String, Hash<String, Object>>] :defined_tags The value to assign to the {#defined_tags} property
    # @option attributes [Hash<String, Hash<String, Object>>] :system_tags The value to assign to the {#system_tags} property
    # @option attributes [String] :display_name The value to assign to the {#display_name} property
    # @option attributes [DateTime] :expiration_time The value to assign to the {#expiration_time} property
    # @option attributes [Hash<String, String>] :freeform_tags The value to assign to the {#freeform_tags} property
    # @option attributes [String] :id The value to assign to the {#id} property
    # @option attributes [String] :image_id The value to assign to the {#image_id} property
    # @option attributes [String] :kms_key_id The value to assign to the {#kms_key_id} property
    # @option attributes [String] :lifecycle_state The value to assign to the {#lifecycle_state} property
    # @option attributes [Integer] :size_in_gbs The value to assign to the {#size_in_gbs} property
    # @option attributes [String] :source_boot_volume_backup_id The value to assign to the {#source_boot_volume_backup_id} property
    # @option attributes [String] :source_type The value to assign to the {#source_type} property
    # @option attributes [DateTime] :time_created The value to assign to the {#time_created} property
    # @option attributes [DateTime] :time_request_received The value to assign to the {#time_request_received} property
    # @option attributes [String] :type The value to assign to the {#type} property
    # @option attributes [Integer] :unique_size_in_gbs The value to assign to the {#unique_size_in_gbs} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.boot_volume_id = attributes[:'bootVolumeId'] if attributes[:'bootVolumeId']

      raise 'You cannot provide both :bootVolumeId and :boot_volume_id' if attributes.key?(:'bootVolumeId') && attributes.key?(:'boot_volume_id')

      self.boot_volume_id = attributes[:'boot_volume_id'] if attributes[:'boot_volume_id']

      self.compartment_id = attributes[:'compartmentId'] if attributes[:'compartmentId']

      raise 'You cannot provide both :compartmentId and :compartment_id' if attributes.key?(:'compartmentId') && attributes.key?(:'compartment_id')

      self.compartment_id = attributes[:'compartment_id'] if attributes[:'compartment_id']

      self.defined_tags = attributes[:'definedTags'] if attributes[:'definedTags']

      raise 'You cannot provide both :definedTags and :defined_tags' if attributes.key?(:'definedTags') && attributes.key?(:'defined_tags')

      self.defined_tags = attributes[:'defined_tags'] if attributes[:'defined_tags']

      self.system_tags = attributes[:'systemTags'] if attributes[:'systemTags']

      raise 'You cannot provide both :systemTags and :system_tags' if attributes.key?(:'systemTags') && attributes.key?(:'system_tags')

      self.system_tags = attributes[:'system_tags'] if attributes[:'system_tags']

      self.display_name = attributes[:'displayName'] if attributes[:'displayName']

      raise 'You cannot provide both :displayName and :display_name' if attributes.key?(:'displayName') && attributes.key?(:'display_name')

      self.display_name = attributes[:'display_name'] if attributes[:'display_name']

      self.expiration_time = attributes[:'expirationTime'] if attributes[:'expirationTime']

      raise 'You cannot provide both :expirationTime and :expiration_time' if attributes.key?(:'expirationTime') && attributes.key?(:'expiration_time')

      self.expiration_time = attributes[:'expiration_time'] if attributes[:'expiration_time']

      self.freeform_tags = attributes[:'freeformTags'] if attributes[:'freeformTags']

      raise 'You cannot provide both :freeformTags and :freeform_tags' if attributes.key?(:'freeformTags') && attributes.key?(:'freeform_tags')

      self.freeform_tags = attributes[:'freeform_tags'] if attributes[:'freeform_tags']

      self.id = attributes[:'id'] if attributes[:'id']

      self.image_id = attributes[:'imageId'] if attributes[:'imageId']

      raise 'You cannot provide both :imageId and :image_id' if attributes.key?(:'imageId') && attributes.key?(:'image_id')

      self.image_id = attributes[:'image_id'] if attributes[:'image_id']

      self.kms_key_id = attributes[:'kmsKeyId'] if attributes[:'kmsKeyId']

      raise 'You cannot provide both :kmsKeyId and :kms_key_id' if attributes.key?(:'kmsKeyId') && attributes.key?(:'kms_key_id')

      self.kms_key_id = attributes[:'kms_key_id'] if attributes[:'kms_key_id']

      self.lifecycle_state = attributes[:'lifecycleState'] if attributes[:'lifecycleState']

      raise 'You cannot provide both :lifecycleState and :lifecycle_state' if attributes.key?(:'lifecycleState') && attributes.key?(:'lifecycle_state')

      self.lifecycle_state = attributes[:'lifecycle_state'] if attributes[:'lifecycle_state']

      self.size_in_gbs = attributes[:'sizeInGBs'] if attributes[:'sizeInGBs']

      raise 'You cannot provide both :sizeInGBs and :size_in_gbs' if attributes.key?(:'sizeInGBs') && attributes.key?(:'size_in_gbs')

      self.size_in_gbs = attributes[:'size_in_gbs'] if attributes[:'size_in_gbs']

      self.source_boot_volume_backup_id = attributes[:'sourceBootVolumeBackupId'] if attributes[:'sourceBootVolumeBackupId']

      raise 'You cannot provide both :sourceBootVolumeBackupId and :source_boot_volume_backup_id' if attributes.key?(:'sourceBootVolumeBackupId') && attributes.key?(:'source_boot_volume_backup_id')

      self.source_boot_volume_backup_id = attributes[:'source_boot_volume_backup_id'] if attributes[:'source_boot_volume_backup_id']

      self.source_type = attributes[:'sourceType'] if attributes[:'sourceType']

      raise 'You cannot provide both :sourceType and :source_type' if attributes.key?(:'sourceType') && attributes.key?(:'source_type')

      self.source_type = attributes[:'source_type'] if attributes[:'source_type']

      self.time_created = attributes[:'timeCreated'] if attributes[:'timeCreated']

      raise 'You cannot provide both :timeCreated and :time_created' if attributes.key?(:'timeCreated') && attributes.key?(:'time_created')

      self.time_created = attributes[:'time_created'] if attributes[:'time_created']

      self.time_request_received = attributes[:'timeRequestReceived'] if attributes[:'timeRequestReceived']

      raise 'You cannot provide both :timeRequestReceived and :time_request_received' if attributes.key?(:'timeRequestReceived') && attributes.key?(:'time_request_received')

      self.time_request_received = attributes[:'time_request_received'] if attributes[:'time_request_received']

      self.type = attributes[:'type'] if attributes[:'type']

      self.unique_size_in_gbs = attributes[:'uniqueSizeInGBs'] if attributes[:'uniqueSizeInGBs']

      raise 'You cannot provide both :uniqueSizeInGBs and :unique_size_in_gbs' if attributes.key?(:'uniqueSizeInGBs') && attributes.key?(:'unique_size_in_gbs')

      self.unique_size_in_gbs = attributes[:'unique_size_in_gbs'] if attributes[:'unique_size_in_gbs']
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
    # @param [Object] source_type Object to be assigned
    def source_type=(source_type)
      # rubocop:disable Style/ConditionalAssignment
      if source_type && !SOURCE_TYPE_ENUM.include?(source_type)
        OCI.logger.debug("Unknown value for 'source_type' [" + source_type + "]. Mapping to 'SOURCE_TYPE_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @source_type = SOURCE_TYPE_UNKNOWN_ENUM_VALUE
      else
        @source_type = source_type
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      # rubocop:disable Style/ConditionalAssignment
      if type && !TYPE_ENUM.include?(type)
        OCI.logger.debug("Unknown value for 'type' [" + type + "]. Mapping to 'TYPE_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @type = TYPE_UNKNOWN_ENUM_VALUE
      else
        @type = type
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        boot_volume_id == other.boot_volume_id &&
        compartment_id == other.compartment_id &&
        defined_tags == other.defined_tags &&
        system_tags == other.system_tags &&
        display_name == other.display_name &&
        expiration_time == other.expiration_time &&
        freeform_tags == other.freeform_tags &&
        id == other.id &&
        image_id == other.image_id &&
        kms_key_id == other.kms_key_id &&
        lifecycle_state == other.lifecycle_state &&
        size_in_gbs == other.size_in_gbs &&
        source_boot_volume_backup_id == other.source_boot_volume_backup_id &&
        source_type == other.source_type &&
        time_created == other.time_created &&
        time_request_received == other.time_request_received &&
        type == other.type &&
        unique_size_in_gbs == other.unique_size_in_gbs
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
      [boot_volume_id, compartment_id, defined_tags, system_tags, display_name, expiration_time, freeform_tags, id, image_id, kms_key_id, lifecycle_state, size_in_gbs, source_boot_volume_backup_id, source_type, time_created, time_request_received, type, unique_size_in_gbs].hash
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
