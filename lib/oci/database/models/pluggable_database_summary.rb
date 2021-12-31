# Copyright (c) 2016, 2021, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'
require 'logger'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # A pluggable database (PDB) is portable collection of schemas, schema objects, and non-schema objects that appears to an Oracle client as a non-container database. To use a PDB, it needs to be plugged into a CDB.
  # To use any of the API operations, you must be authorized in an IAM policy. If you are not authorized, talk to a tenancy administrator. If you are an administrator who needs to write policies to give users access, see [Getting Started with Policies](https://docs.cloud.oracle.com/Content/Identity/Concepts/policygetstarted.htm).
  #
  # **Warning:** Oracle recommends that you avoid using any confidential information when you supply string values using the API.
  #
  class Database::Models::PluggableDatabaseSummary
    LIFECYCLE_STATE_ENUM = [
      LIFECYCLE_STATE_PROVISIONING = 'PROVISIONING'.freeze,
      LIFECYCLE_STATE_AVAILABLE = 'AVAILABLE'.freeze,
      LIFECYCLE_STATE_TERMINATING = 'TERMINATING'.freeze,
      LIFECYCLE_STATE_TERMINATED = 'TERMINATED'.freeze,
      LIFECYCLE_STATE_UPDATING = 'UPDATING'.freeze,
      LIFECYCLE_STATE_FAILED = 'FAILED'.freeze,
      LIFECYCLE_STATE_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    OPEN_MODE_ENUM = [
      OPEN_MODE_READ_ONLY = 'READ_ONLY'.freeze,
      OPEN_MODE_READ_WRITE = 'READ_WRITE'.freeze,
      OPEN_MODE_MOUNTED = 'MOUNTED'.freeze,
      OPEN_MODE_MIGRATE = 'MIGRATE'.freeze,
      OPEN_MODE_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    # **[Required]** The [OCID](https://docs.cloud.oracle.com/Content/General/Concepts/identifiers.htm) of the pluggable database.
    # @return [String]
    attr_accessor :id

    # **[Required]** The [OCID](https://docs.cloud.oracle.com/Content/General/Concepts/identifiers.htm) of the CDB.
    # @return [String]
    attr_accessor :container_database_id

    # **[Required]** The name for the pluggable database (PDB). The name is unique in the context of a {Database}. The name must begin with an alphabetic character and can contain a maximum of thirty alphanumeric characters. Special characters are not permitted. The pluggable database name should not be same as the container database name.
    # @return [String]
    attr_accessor :pdb_name

    # **[Required]** The current state of the pluggable database.
    # @return [String]
    attr_reader :lifecycle_state

    # Detailed message for the lifecycle state.
    # @return [String]
    attr_accessor :lifecycle_details

    # **[Required]** The date and time the pluggable database was created.
    # @return [DateTime]
    attr_accessor :time_created

    # @return [OCI::Database::Models::PluggableDatabaseConnectionStrings]
    attr_accessor :connection_strings

    # **[Required]** The mode that pluggable database is in. Open mode can only be changed to READ_ONLY or MIGRATE directly from the backend (within the Oracle Database software).
    #
    # @return [String]
    attr_reader :open_mode

    # The restricted mode of the pluggable database. If a pluggable database is opened in restricted mode,
    # the user needs both create a session and have restricted session privileges to connect to it.
    #
    # @return [BOOLEAN]
    attr_accessor :is_restricted

    # **[Required]** The [OCID](https://docs.cloud.oracle.com/Content/General/Concepts/identifiers.htm) of the compartment.
    # @return [String]
    attr_accessor :compartment_id

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

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'id': :'id',
        'container_database_id': :'containerDatabaseId',
        'pdb_name': :'pdbName',
        'lifecycle_state': :'lifecycleState',
        'lifecycle_details': :'lifecycleDetails',
        'time_created': :'timeCreated',
        'connection_strings': :'connectionStrings',
        'open_mode': :'openMode',
        'is_restricted': :'isRestricted',
        'compartment_id': :'compartmentId',
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
        'container_database_id': :'String',
        'pdb_name': :'String',
        'lifecycle_state': :'String',
        'lifecycle_details': :'String',
        'time_created': :'DateTime',
        'connection_strings': :'OCI::Database::Models::PluggableDatabaseConnectionStrings',
        'open_mode': :'String',
        'is_restricted': :'BOOLEAN',
        'compartment_id': :'String',
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
    # @option attributes [String] :container_database_id The value to assign to the {#container_database_id} property
    # @option attributes [String] :pdb_name The value to assign to the {#pdb_name} property
    # @option attributes [String] :lifecycle_state The value to assign to the {#lifecycle_state} property
    # @option attributes [String] :lifecycle_details The value to assign to the {#lifecycle_details} property
    # @option attributes [DateTime] :time_created The value to assign to the {#time_created} property
    # @option attributes [OCI::Database::Models::PluggableDatabaseConnectionStrings] :connection_strings The value to assign to the {#connection_strings} property
    # @option attributes [String] :open_mode The value to assign to the {#open_mode} property
    # @option attributes [BOOLEAN] :is_restricted The value to assign to the {#is_restricted} property
    # @option attributes [String] :compartment_id The value to assign to the {#compartment_id} property
    # @option attributes [Hash<String, String>] :freeform_tags The value to assign to the {#freeform_tags} property
    # @option attributes [Hash<String, Hash<String, Object>>] :defined_tags The value to assign to the {#defined_tags} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.id = attributes[:'id'] if attributes[:'id']

      self.container_database_id = attributes[:'containerDatabaseId'] if attributes[:'containerDatabaseId']

      raise 'You cannot provide both :containerDatabaseId and :container_database_id' if attributes.key?(:'containerDatabaseId') && attributes.key?(:'container_database_id')

      self.container_database_id = attributes[:'container_database_id'] if attributes[:'container_database_id']

      self.pdb_name = attributes[:'pdbName'] if attributes[:'pdbName']

      raise 'You cannot provide both :pdbName and :pdb_name' if attributes.key?(:'pdbName') && attributes.key?(:'pdb_name')

      self.pdb_name = attributes[:'pdb_name'] if attributes[:'pdb_name']

      self.lifecycle_state = attributes[:'lifecycleState'] if attributes[:'lifecycleState']

      raise 'You cannot provide both :lifecycleState and :lifecycle_state' if attributes.key?(:'lifecycleState') && attributes.key?(:'lifecycle_state')

      self.lifecycle_state = attributes[:'lifecycle_state'] if attributes[:'lifecycle_state']

      self.lifecycle_details = attributes[:'lifecycleDetails'] if attributes[:'lifecycleDetails']

      raise 'You cannot provide both :lifecycleDetails and :lifecycle_details' if attributes.key?(:'lifecycleDetails') && attributes.key?(:'lifecycle_details')

      self.lifecycle_details = attributes[:'lifecycle_details'] if attributes[:'lifecycle_details']

      self.time_created = attributes[:'timeCreated'] if attributes[:'timeCreated']

      raise 'You cannot provide both :timeCreated and :time_created' if attributes.key?(:'timeCreated') && attributes.key?(:'time_created')

      self.time_created = attributes[:'time_created'] if attributes[:'time_created']

      self.connection_strings = attributes[:'connectionStrings'] if attributes[:'connectionStrings']

      raise 'You cannot provide both :connectionStrings and :connection_strings' if attributes.key?(:'connectionStrings') && attributes.key?(:'connection_strings')

      self.connection_strings = attributes[:'connection_strings'] if attributes[:'connection_strings']

      self.open_mode = attributes[:'openMode'] if attributes[:'openMode']

      raise 'You cannot provide both :openMode and :open_mode' if attributes.key?(:'openMode') && attributes.key?(:'open_mode')

      self.open_mode = attributes[:'open_mode'] if attributes[:'open_mode']

      self.is_restricted = attributes[:'isRestricted'] unless attributes[:'isRestricted'].nil?

      raise 'You cannot provide both :isRestricted and :is_restricted' if attributes.key?(:'isRestricted') && attributes.key?(:'is_restricted')

      self.is_restricted = attributes[:'is_restricted'] unless attributes[:'is_restricted'].nil?

      self.compartment_id = attributes[:'compartmentId'] if attributes[:'compartmentId']

      raise 'You cannot provide both :compartmentId and :compartment_id' if attributes.key?(:'compartmentId') && attributes.key?(:'compartment_id')

      self.compartment_id = attributes[:'compartment_id'] if attributes[:'compartment_id']

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
    # @param [Object] open_mode Object to be assigned
    def open_mode=(open_mode)
      # rubocop:disable Style/ConditionalAssignment
      if open_mode && !OPEN_MODE_ENUM.include?(open_mode)
        OCI.logger.debug("Unknown value for 'open_mode' [" + open_mode + "]. Mapping to 'OPEN_MODE_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @open_mode = OPEN_MODE_UNKNOWN_ENUM_VALUE
      else
        @open_mode = open_mode
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
        container_database_id == other.container_database_id &&
        pdb_name == other.pdb_name &&
        lifecycle_state == other.lifecycle_state &&
        lifecycle_details == other.lifecycle_details &&
        time_created == other.time_created &&
        connection_strings == other.connection_strings &&
        open_mode == other.open_mode &&
        is_restricted == other.is_restricted &&
        compartment_id == other.compartment_id &&
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
      [id, container_database_id, pdb_name, lifecycle_state, lifecycle_details, time_created, connection_strings, open_mode, is_restricted, compartment_id, freeform_tags, defined_tags].hash
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