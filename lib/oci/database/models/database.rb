# Copyright (c) 2016, 2021, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'
require 'logger'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # Database model.
  class Database::Models::Database
    LIFECYCLE_STATE_ENUM = [
      LIFECYCLE_STATE_PROVISIONING = 'PROVISIONING'.freeze,
      LIFECYCLE_STATE_AVAILABLE = 'AVAILABLE'.freeze,
      LIFECYCLE_STATE_UPDATING = 'UPDATING'.freeze,
      LIFECYCLE_STATE_BACKUP_IN_PROGRESS = 'BACKUP_IN_PROGRESS'.freeze,
      LIFECYCLE_STATE_UPGRADING = 'UPGRADING'.freeze,
      LIFECYCLE_STATE_TERMINATING = 'TERMINATING'.freeze,
      LIFECYCLE_STATE_TERMINATED = 'TERMINATED'.freeze,
      LIFECYCLE_STATE_RESTORE_FAILED = 'RESTORE_FAILED'.freeze,
      LIFECYCLE_STATE_FAILED = 'FAILED'.freeze,
      LIFECYCLE_STATE_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    # **[Required]** The [OCID](https://docs.cloud.oracle.com/Content/General/Concepts/identifiers.htm) of the database.
    # @return [String]
    attr_accessor :id

    # **[Required]** The [OCID](https://docs.cloud.oracle.com/Content/General/Concepts/identifiers.htm) of the compartment.
    # @return [String]
    attr_accessor :compartment_id

    # The character set for the database.
    # @return [String]
    attr_accessor :character_set

    # The national character set for the database.
    # @return [String]
    attr_accessor :ncharacter_set

    # The [OCID](https://docs.cloud.oracle.com/Content/General/Concepts/identifiers.htm) of the Database Home.
    # @return [String]
    attr_accessor :db_home_id

    # The [OCID](https://docs.cloud.oracle.com/Content/General/Concepts/identifiers.htm) of the DB system.
    # @return [String]
    attr_accessor :db_system_id

    # The [OCID](https://docs.cloud.oracle.com/Content/General/Concepts/identifiers.htm) of the VM cluster.
    # @return [String]
    attr_accessor :vm_cluster_id

    # **[Required]** The database name.
    # @return [String]
    attr_accessor :db_name

    # The name of the pluggable database. The name must begin with an alphabetic character and can contain a maximum of thirty alphanumeric characters. Special characters are not permitted. Pluggable database should not be same as database name.
    # @return [String]
    attr_accessor :pdb_name

    # The database workload type.
    # @return [String]
    attr_accessor :db_workload

    # **[Required]** A system-generated name for the database to ensure uniqueness within an Oracle Data Guard group (a primary database and its standby databases). The unique name cannot be changed.
    #
    # @return [String]
    attr_accessor :db_unique_name

    # Additional information about the current lifecycle state.
    # @return [String]
    attr_accessor :lifecycle_details

    # **[Required]** The current state of the database.
    # @return [String]
    attr_reader :lifecycle_state

    # The date and time the database was created.
    # @return [DateTime]
    attr_accessor :time_created

    # The date and time when the latest database backup was created.
    # @return [DateTime]
    attr_accessor :last_backup_timestamp

    # @return [OCI::Database::Models::DbBackupConfig]
    attr_accessor :db_backup_config

    # Free-form tags for this resource. Each tag is a simple key-value pair with no predefined name, type, or namespace.
    # For more information, see [Resource Tags](https://docs.cloud.oracle.com/Content/General/Concepts/resourcetags.htm).
    #
    # Example: `{\"Department\": \"Finance\"}`
    #
    # @return [Hash<String, String>]
    attr_accessor :freeform_tags

    # Defined tags for this resource. Each key is predefined and scoped to a namespace.
    # For more information, see [Resource Tags](https://docs.cloud.oracle.com/Content/General/Concepts/resourcetags.htm).
    #
    # @return [Hash<String, Hash<String, Object>>]
    attr_accessor :defined_tags

    # The Connection strings used to connect to the Oracle Database.
    # @return [OCI::Database::Models::DatabaseConnectionStrings]
    attr_accessor :connection_strings

    # The OCID of the key container that is used as the master encryption key in database transparent data encryption (TDE) operations.
    # @return [String]
    attr_accessor :kms_key_id

    # Point in time recovery timeStamp of the source database at which cloned database system is cloned from the source database system, as described in [RFC 3339](https://tools.ietf.org/rfc/rfc3339)
    # @return [DateTime]
    attr_accessor :source_database_point_in_time_recovery_timestamp

    # The database software image [OCID](https://docs.cloud.oracle.com/Content/General/Concepts/identifiers.htm)
    # @return [String]
    attr_accessor :database_software_image_id

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'id': :'id',
        'compartment_id': :'compartmentId',
        'character_set': :'characterSet',
        'ncharacter_set': :'ncharacterSet',
        'db_home_id': :'dbHomeId',
        'db_system_id': :'dbSystemId',
        'vm_cluster_id': :'vmClusterId',
        'db_name': :'dbName',
        'pdb_name': :'pdbName',
        'db_workload': :'dbWorkload',
        'db_unique_name': :'dbUniqueName',
        'lifecycle_details': :'lifecycleDetails',
        'lifecycle_state': :'lifecycleState',
        'time_created': :'timeCreated',
        'last_backup_timestamp': :'lastBackupTimestamp',
        'db_backup_config': :'dbBackupConfig',
        'freeform_tags': :'freeformTags',
        'defined_tags': :'definedTags',
        'connection_strings': :'connectionStrings',
        'kms_key_id': :'kmsKeyId',
        'source_database_point_in_time_recovery_timestamp': :'sourceDatabasePointInTimeRecoveryTimestamp',
        'database_software_image_id': :'databaseSoftwareImageId'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'id': :'String',
        'compartment_id': :'String',
        'character_set': :'String',
        'ncharacter_set': :'String',
        'db_home_id': :'String',
        'db_system_id': :'String',
        'vm_cluster_id': :'String',
        'db_name': :'String',
        'pdb_name': :'String',
        'db_workload': :'String',
        'db_unique_name': :'String',
        'lifecycle_details': :'String',
        'lifecycle_state': :'String',
        'time_created': :'DateTime',
        'last_backup_timestamp': :'DateTime',
        'db_backup_config': :'OCI::Database::Models::DbBackupConfig',
        'freeform_tags': :'Hash<String, String>',
        'defined_tags': :'Hash<String, Hash<String, Object>>',
        'connection_strings': :'OCI::Database::Models::DatabaseConnectionStrings',
        'kms_key_id': :'String',
        'source_database_point_in_time_recovery_timestamp': :'DateTime',
        'database_software_image_id': :'String'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :id The value to assign to the {#id} property
    # @option attributes [String] :compartment_id The value to assign to the {#compartment_id} property
    # @option attributes [String] :character_set The value to assign to the {#character_set} property
    # @option attributes [String] :ncharacter_set The value to assign to the {#ncharacter_set} property
    # @option attributes [String] :db_home_id The value to assign to the {#db_home_id} property
    # @option attributes [String] :db_system_id The value to assign to the {#db_system_id} property
    # @option attributes [String] :vm_cluster_id The value to assign to the {#vm_cluster_id} property
    # @option attributes [String] :db_name The value to assign to the {#db_name} property
    # @option attributes [String] :pdb_name The value to assign to the {#pdb_name} property
    # @option attributes [String] :db_workload The value to assign to the {#db_workload} property
    # @option attributes [String] :db_unique_name The value to assign to the {#db_unique_name} property
    # @option attributes [String] :lifecycle_details The value to assign to the {#lifecycle_details} property
    # @option attributes [String] :lifecycle_state The value to assign to the {#lifecycle_state} property
    # @option attributes [DateTime] :time_created The value to assign to the {#time_created} property
    # @option attributes [DateTime] :last_backup_timestamp The value to assign to the {#last_backup_timestamp} property
    # @option attributes [OCI::Database::Models::DbBackupConfig] :db_backup_config The value to assign to the {#db_backup_config} property
    # @option attributes [Hash<String, String>] :freeform_tags The value to assign to the {#freeform_tags} property
    # @option attributes [Hash<String, Hash<String, Object>>] :defined_tags The value to assign to the {#defined_tags} property
    # @option attributes [OCI::Database::Models::DatabaseConnectionStrings] :connection_strings The value to assign to the {#connection_strings} property
    # @option attributes [String] :kms_key_id The value to assign to the {#kms_key_id} property
    # @option attributes [DateTime] :source_database_point_in_time_recovery_timestamp The value to assign to the {#source_database_point_in_time_recovery_timestamp} property
    # @option attributes [String] :database_software_image_id The value to assign to the {#database_software_image_id} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      self.id = attributes[:'id'] if attributes[:'id']

      self.compartment_id = attributes[:'compartmentId'] if attributes[:'compartmentId']

      raise 'You cannot provide both :compartmentId and :compartment_id' if attributes.key?(:'compartmentId') && attributes.key?(:'compartment_id')

      self.compartment_id = attributes[:'compartment_id'] if attributes[:'compartment_id']

      self.character_set = attributes[:'characterSet'] if attributes[:'characterSet']

      raise 'You cannot provide both :characterSet and :character_set' if attributes.key?(:'characterSet') && attributes.key?(:'character_set')

      self.character_set = attributes[:'character_set'] if attributes[:'character_set']

      self.ncharacter_set = attributes[:'ncharacterSet'] if attributes[:'ncharacterSet']

      raise 'You cannot provide both :ncharacterSet and :ncharacter_set' if attributes.key?(:'ncharacterSet') && attributes.key?(:'ncharacter_set')

      self.ncharacter_set = attributes[:'ncharacter_set'] if attributes[:'ncharacter_set']

      self.db_home_id = attributes[:'dbHomeId'] if attributes[:'dbHomeId']

      raise 'You cannot provide both :dbHomeId and :db_home_id' if attributes.key?(:'dbHomeId') && attributes.key?(:'db_home_id')

      self.db_home_id = attributes[:'db_home_id'] if attributes[:'db_home_id']

      self.db_system_id = attributes[:'dbSystemId'] if attributes[:'dbSystemId']

      raise 'You cannot provide both :dbSystemId and :db_system_id' if attributes.key?(:'dbSystemId') && attributes.key?(:'db_system_id')

      self.db_system_id = attributes[:'db_system_id'] if attributes[:'db_system_id']

      self.vm_cluster_id = attributes[:'vmClusterId'] if attributes[:'vmClusterId']

      raise 'You cannot provide both :vmClusterId and :vm_cluster_id' if attributes.key?(:'vmClusterId') && attributes.key?(:'vm_cluster_id')

      self.vm_cluster_id = attributes[:'vm_cluster_id'] if attributes[:'vm_cluster_id']

      self.db_name = attributes[:'dbName'] if attributes[:'dbName']

      raise 'You cannot provide both :dbName and :db_name' if attributes.key?(:'dbName') && attributes.key?(:'db_name')

      self.db_name = attributes[:'db_name'] if attributes[:'db_name']

      self.pdb_name = attributes[:'pdbName'] if attributes[:'pdbName']

      raise 'You cannot provide both :pdbName and :pdb_name' if attributes.key?(:'pdbName') && attributes.key?(:'pdb_name')

      self.pdb_name = attributes[:'pdb_name'] if attributes[:'pdb_name']

      self.db_workload = attributes[:'dbWorkload'] if attributes[:'dbWorkload']

      raise 'You cannot provide both :dbWorkload and :db_workload' if attributes.key?(:'dbWorkload') && attributes.key?(:'db_workload')

      self.db_workload = attributes[:'db_workload'] if attributes[:'db_workload']

      self.db_unique_name = attributes[:'dbUniqueName'] if attributes[:'dbUniqueName']

      raise 'You cannot provide both :dbUniqueName and :db_unique_name' if attributes.key?(:'dbUniqueName') && attributes.key?(:'db_unique_name')

      self.db_unique_name = attributes[:'db_unique_name'] if attributes[:'db_unique_name']

      self.lifecycle_details = attributes[:'lifecycleDetails'] if attributes[:'lifecycleDetails']

      raise 'You cannot provide both :lifecycleDetails and :lifecycle_details' if attributes.key?(:'lifecycleDetails') && attributes.key?(:'lifecycle_details')

      self.lifecycle_details = attributes[:'lifecycle_details'] if attributes[:'lifecycle_details']

      self.lifecycle_state = attributes[:'lifecycleState'] if attributes[:'lifecycleState']

      raise 'You cannot provide both :lifecycleState and :lifecycle_state' if attributes.key?(:'lifecycleState') && attributes.key?(:'lifecycle_state')

      self.lifecycle_state = attributes[:'lifecycle_state'] if attributes[:'lifecycle_state']

      self.time_created = attributes[:'timeCreated'] if attributes[:'timeCreated']

      raise 'You cannot provide both :timeCreated and :time_created' if attributes.key?(:'timeCreated') && attributes.key?(:'time_created')

      self.time_created = attributes[:'time_created'] if attributes[:'time_created']

      self.last_backup_timestamp = attributes[:'lastBackupTimestamp'] if attributes[:'lastBackupTimestamp']

      raise 'You cannot provide both :lastBackupTimestamp and :last_backup_timestamp' if attributes.key?(:'lastBackupTimestamp') && attributes.key?(:'last_backup_timestamp')

      self.last_backup_timestamp = attributes[:'last_backup_timestamp'] if attributes[:'last_backup_timestamp']

      self.db_backup_config = attributes[:'dbBackupConfig'] if attributes[:'dbBackupConfig']

      raise 'You cannot provide both :dbBackupConfig and :db_backup_config' if attributes.key?(:'dbBackupConfig') && attributes.key?(:'db_backup_config')

      self.db_backup_config = attributes[:'db_backup_config'] if attributes[:'db_backup_config']

      self.freeform_tags = attributes[:'freeformTags'] if attributes[:'freeformTags']

      raise 'You cannot provide both :freeformTags and :freeform_tags' if attributes.key?(:'freeformTags') && attributes.key?(:'freeform_tags')

      self.freeform_tags = attributes[:'freeform_tags'] if attributes[:'freeform_tags']

      self.defined_tags = attributes[:'definedTags'] if attributes[:'definedTags']

      raise 'You cannot provide both :definedTags and :defined_tags' if attributes.key?(:'definedTags') && attributes.key?(:'defined_tags')

      self.defined_tags = attributes[:'defined_tags'] if attributes[:'defined_tags']

      self.connection_strings = attributes[:'connectionStrings'] if attributes[:'connectionStrings']

      raise 'You cannot provide both :connectionStrings and :connection_strings' if attributes.key?(:'connectionStrings') && attributes.key?(:'connection_strings')

      self.connection_strings = attributes[:'connection_strings'] if attributes[:'connection_strings']

      self.kms_key_id = attributes[:'kmsKeyId'] if attributes[:'kmsKeyId']

      raise 'You cannot provide both :kmsKeyId and :kms_key_id' if attributes.key?(:'kmsKeyId') && attributes.key?(:'kms_key_id')

      self.kms_key_id = attributes[:'kms_key_id'] if attributes[:'kms_key_id']

      self.source_database_point_in_time_recovery_timestamp = attributes[:'sourceDatabasePointInTimeRecoveryTimestamp'] if attributes[:'sourceDatabasePointInTimeRecoveryTimestamp']

      raise 'You cannot provide both :sourceDatabasePointInTimeRecoveryTimestamp and :source_database_point_in_time_recovery_timestamp' if attributes.key?(:'sourceDatabasePointInTimeRecoveryTimestamp') && attributes.key?(:'source_database_point_in_time_recovery_timestamp')

      self.source_database_point_in_time_recovery_timestamp = attributes[:'source_database_point_in_time_recovery_timestamp'] if attributes[:'source_database_point_in_time_recovery_timestamp']

      self.database_software_image_id = attributes[:'databaseSoftwareImageId'] if attributes[:'databaseSoftwareImageId']

      raise 'You cannot provide both :databaseSoftwareImageId and :database_software_image_id' if attributes.key?(:'databaseSoftwareImageId') && attributes.key?(:'database_software_image_id')

      self.database_software_image_id = attributes[:'database_software_image_id'] if attributes[:'database_software_image_id']
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
        id == other.id &&
        compartment_id == other.compartment_id &&
        character_set == other.character_set &&
        ncharacter_set == other.ncharacter_set &&
        db_home_id == other.db_home_id &&
        db_system_id == other.db_system_id &&
        vm_cluster_id == other.vm_cluster_id &&
        db_name == other.db_name &&
        pdb_name == other.pdb_name &&
        db_workload == other.db_workload &&
        db_unique_name == other.db_unique_name &&
        lifecycle_details == other.lifecycle_details &&
        lifecycle_state == other.lifecycle_state &&
        time_created == other.time_created &&
        last_backup_timestamp == other.last_backup_timestamp &&
        db_backup_config == other.db_backup_config &&
        freeform_tags == other.freeform_tags &&
        defined_tags == other.defined_tags &&
        connection_strings == other.connection_strings &&
        kms_key_id == other.kms_key_id &&
        source_database_point_in_time_recovery_timestamp == other.source_database_point_in_time_recovery_timestamp &&
        database_software_image_id == other.database_software_image_id
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
      [id, compartment_id, character_set, ncharacter_set, db_home_id, db_system_id, vm_cluster_id, db_name, pdb_name, db_workload, db_unique_name, lifecycle_details, lifecycle_state, time_created, last_backup_timestamp, db_backup_config, freeform_tags, defined_tags, connection_strings, kms_key_id, source_database_point_in_time_recovery_timestamp, database_software_image_id].hash
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
