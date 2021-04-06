# Copyright (c) 2016, 2021, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'
require 'logger'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # The details of a Managed Database.
  class DatabaseManagement::Models::ManagedDatabase
    DATABASE_TYPE_ENUM = [
      DATABASE_TYPE_EXTERNAL_SIDB = 'EXTERNAL_SIDB'.freeze,
      DATABASE_TYPE_EXTERNAL_RAC = 'EXTERNAL_RAC'.freeze,
      DATABASE_TYPE_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    DATABASE_SUB_TYPE_ENUM = [
      DATABASE_SUB_TYPE_CDB = 'CDB'.freeze,
      DATABASE_SUB_TYPE_PDB = 'PDB'.freeze,
      DATABASE_SUB_TYPE_NON_CDB = 'NON_CDB'.freeze,
      DATABASE_SUB_TYPE_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    DATABASE_STATUS_ENUM = [
      DATABASE_STATUS_UP = 'UP'.freeze,
      DATABASE_STATUS_DOWN = 'DOWN'.freeze,
      DATABASE_STATUS_UNKNOWN = 'UNKNOWN'.freeze,
      DATABASE_STATUS_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    # **[Required]** The [OCID](https://docs.cloud.oracle.com/Content/General/Concepts/identifiers.htm) of the Managed Database.
    # @return [String]
    attr_accessor :id

    # **[Required]** The [OCID](https://docs.cloud.oracle.com/Content/General/Concepts/identifiers.htm) of the compartment.
    # @return [String]
    attr_accessor :compartment_id

    # **[Required]** The name of the Managed Database.
    # @return [String]
    attr_accessor :name

    # **[Required]** The type of Oracle Database installation.
    # @return [String]
    attr_reader :database_type

    # **[Required]** The subtype of the Oracle Database. Indicates whether the database is a Container Database, Pluggable Database, or a Non-container Database.
    # @return [String]
    attr_reader :database_sub_type

    # **[Required]** Indicates whether the Oracle Database is part of a cluster.
    # @return [BOOLEAN]
    attr_accessor :is_cluster

    # The [OCID](https://docs.cloud.oracle.com/Content/General/Concepts/identifiers.htm) of the parent Container Database
    # if Managed Database is a Pluggable Database.
    #
    # @return [String]
    attr_accessor :parent_container_id

    # A list of Managed Database Groups that the Managed Database belongs to.
    # @return [Array<OCI::DatabaseManagement::Models::ParentGroup>]
    attr_accessor :managed_database_groups

    # **[Required]** The date and time the Managed Database was created.
    # @return [DateTime]
    attr_accessor :time_created

    # The status of the Oracle Database. Indicates whether the status of the database
    # is UP, DOWN, or UNKNOWN at the current time.
    #
    # @return [String]
    attr_reader :database_status

    # The additional details specific to a type of database defined in `{\"key\": \"value\"}` format.
    # Example: `{\"bar-key\": \"value\"}`
    #
    # @return [Hash<String, String>]
    attr_accessor :additional_details

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'id': :'id',
        'compartment_id': :'compartmentId',
        'name': :'name',
        'database_type': :'databaseType',
        'database_sub_type': :'databaseSubType',
        'is_cluster': :'isCluster',
        'parent_container_id': :'parentContainerId',
        'managed_database_groups': :'managedDatabaseGroups',
        'time_created': :'timeCreated',
        'database_status': :'databaseStatus',
        'additional_details': :'additionalDetails'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'id': :'String',
        'compartment_id': :'String',
        'name': :'String',
        'database_type': :'String',
        'database_sub_type': :'String',
        'is_cluster': :'BOOLEAN',
        'parent_container_id': :'String',
        'managed_database_groups': :'Array<OCI::DatabaseManagement::Models::ParentGroup>',
        'time_created': :'DateTime',
        'database_status': :'String',
        'additional_details': :'Hash<String, String>'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :id The value to assign to the {#id} property
    # @option attributes [String] :compartment_id The value to assign to the {#compartment_id} property
    # @option attributes [String] :name The value to assign to the {#name} property
    # @option attributes [String] :database_type The value to assign to the {#database_type} property
    # @option attributes [String] :database_sub_type The value to assign to the {#database_sub_type} property
    # @option attributes [BOOLEAN] :is_cluster The value to assign to the {#is_cluster} property
    # @option attributes [String] :parent_container_id The value to assign to the {#parent_container_id} property
    # @option attributes [Array<OCI::DatabaseManagement::Models::ParentGroup>] :managed_database_groups The value to assign to the {#managed_database_groups} property
    # @option attributes [DateTime] :time_created The value to assign to the {#time_created} property
    # @option attributes [String] :database_status The value to assign to the {#database_status} property
    # @option attributes [Hash<String, String>] :additional_details The value to assign to the {#additional_details} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.id = attributes[:'id'] if attributes[:'id']

      self.compartment_id = attributes[:'compartmentId'] if attributes[:'compartmentId']

      raise 'You cannot provide both :compartmentId and :compartment_id' if attributes.key?(:'compartmentId') && attributes.key?(:'compartment_id')

      self.compartment_id = attributes[:'compartment_id'] if attributes[:'compartment_id']

      self.name = attributes[:'name'] if attributes[:'name']

      self.database_type = attributes[:'databaseType'] if attributes[:'databaseType']

      raise 'You cannot provide both :databaseType and :database_type' if attributes.key?(:'databaseType') && attributes.key?(:'database_type')

      self.database_type = attributes[:'database_type'] if attributes[:'database_type']

      self.database_sub_type = attributes[:'databaseSubType'] if attributes[:'databaseSubType']

      raise 'You cannot provide both :databaseSubType and :database_sub_type' if attributes.key?(:'databaseSubType') && attributes.key?(:'database_sub_type')

      self.database_sub_type = attributes[:'database_sub_type'] if attributes[:'database_sub_type']

      self.is_cluster = attributes[:'isCluster'] unless attributes[:'isCluster'].nil?

      raise 'You cannot provide both :isCluster and :is_cluster' if attributes.key?(:'isCluster') && attributes.key?(:'is_cluster')

      self.is_cluster = attributes[:'is_cluster'] unless attributes[:'is_cluster'].nil?

      self.parent_container_id = attributes[:'parentContainerId'] if attributes[:'parentContainerId']

      raise 'You cannot provide both :parentContainerId and :parent_container_id' if attributes.key?(:'parentContainerId') && attributes.key?(:'parent_container_id')

      self.parent_container_id = attributes[:'parent_container_id'] if attributes[:'parent_container_id']

      self.managed_database_groups = attributes[:'managedDatabaseGroups'] if attributes[:'managedDatabaseGroups']

      raise 'You cannot provide both :managedDatabaseGroups and :managed_database_groups' if attributes.key?(:'managedDatabaseGroups') && attributes.key?(:'managed_database_groups')

      self.managed_database_groups = attributes[:'managed_database_groups'] if attributes[:'managed_database_groups']

      self.time_created = attributes[:'timeCreated'] if attributes[:'timeCreated']

      raise 'You cannot provide both :timeCreated and :time_created' if attributes.key?(:'timeCreated') && attributes.key?(:'time_created')

      self.time_created = attributes[:'time_created'] if attributes[:'time_created']

      self.database_status = attributes[:'databaseStatus'] if attributes[:'databaseStatus']

      raise 'You cannot provide both :databaseStatus and :database_status' if attributes.key?(:'databaseStatus') && attributes.key?(:'database_status')

      self.database_status = attributes[:'database_status'] if attributes[:'database_status']

      self.additional_details = attributes[:'additionalDetails'] if attributes[:'additionalDetails']

      raise 'You cannot provide both :additionalDetails and :additional_details' if attributes.key?(:'additionalDetails') && attributes.key?(:'additional_details')

      self.additional_details = attributes[:'additional_details'] if attributes[:'additional_details']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] database_type Object to be assigned
    def database_type=(database_type)
      # rubocop:disable Style/ConditionalAssignment
      if database_type && !DATABASE_TYPE_ENUM.include?(database_type)
        OCI.logger.debug("Unknown value for 'database_type' [" + database_type + "]. Mapping to 'DATABASE_TYPE_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @database_type = DATABASE_TYPE_UNKNOWN_ENUM_VALUE
      else
        @database_type = database_type
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] database_sub_type Object to be assigned
    def database_sub_type=(database_sub_type)
      # rubocop:disable Style/ConditionalAssignment
      if database_sub_type && !DATABASE_SUB_TYPE_ENUM.include?(database_sub_type)
        OCI.logger.debug("Unknown value for 'database_sub_type' [" + database_sub_type + "]. Mapping to 'DATABASE_SUB_TYPE_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @database_sub_type = DATABASE_SUB_TYPE_UNKNOWN_ENUM_VALUE
      else
        @database_sub_type = database_sub_type
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] database_status Object to be assigned
    def database_status=(database_status)
      # rubocop:disable Style/ConditionalAssignment
      if database_status && !DATABASE_STATUS_ENUM.include?(database_status)
        OCI.logger.debug("Unknown value for 'database_status' [" + database_status + "]. Mapping to 'DATABASE_STATUS_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @database_status = DATABASE_STATUS_UNKNOWN_ENUM_VALUE
      else
        @database_status = database_status
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
        name == other.name &&
        database_type == other.database_type &&
        database_sub_type == other.database_sub_type &&
        is_cluster == other.is_cluster &&
        parent_container_id == other.parent_container_id &&
        managed_database_groups == other.managed_database_groups &&
        time_created == other.time_created &&
        database_status == other.database_status &&
        additional_details == other.additional_details
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
      [id, compartment_id, name, database_type, database_sub_type, is_cluster, parent_container_id, managed_database_groups, time_created, database_status, additional_details].hash
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
