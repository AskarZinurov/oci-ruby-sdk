# Copyright (c) 2016, 2021, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # The configuration details for creating a Data Guard association between databases.
  #
  # **Warning:** Oracle recommends that you avoid using any confidential information when you supply string values using the API.
  #
  # This class has direct subclasses. If you are using this class as input to a service operations then you should favor using a subclass over the base class
  class Database::Models::CreateDataGuardAssociationDetails
    PROTECTION_MODE_ENUM = [
      PROTECTION_MODE_MAXIMUM_AVAILABILITY = 'MAXIMUM_AVAILABILITY'.freeze,
      PROTECTION_MODE_MAXIMUM_PERFORMANCE = 'MAXIMUM_PERFORMANCE'.freeze,
      PROTECTION_MODE_MAXIMUM_PROTECTION = 'MAXIMUM_PROTECTION'.freeze
    ].freeze

    TRANSPORT_TYPE_ENUM = [
      TRANSPORT_TYPE_SYNC = 'SYNC'.freeze,
      TRANSPORT_TYPE_ASYNC = 'ASYNC'.freeze,
      TRANSPORT_TYPE_FASTSYNC = 'FASTSYNC'.freeze
    ].freeze

    # The database software image [OCID](https://docs.cloud.oracle.com/Content/General/Concepts/identifiers.htm)
    # @return [String]
    attr_accessor :database_software_image_id

    # **[Required]** A strong password for the `SYS`, `SYSTEM`, and `PDB Admin` users to apply during standby creation.
    #
    # The password must contain no fewer than nine characters and include:
    #
    # * At least two uppercase characters.
    #
    # * At least two lowercase characters.
    #
    # * At least two numeric characters.
    #
    # * At least two special characters. Valid special characters include \"_\", \"#\", and \"-\" only.
    #
    # **The password MUST be the same as the primary admin password.**
    #
    # @return [String]
    attr_accessor :database_admin_password

    # **[Required]** The protection mode to set up between the primary and standby databases. For more information, see
    # [Oracle Data Guard Protection Modes](http://docs.oracle.com/database/122/SBYDB/oracle-data-guard-protection-modes.htm#SBYDB02000)
    # in the Oracle Data Guard documentation.
    #
    # **IMPORTANT** - The only protection mode currently supported by the Database service is MAXIMUM_PERFORMANCE.
    #
    # @return [String]
    attr_reader :protection_mode

    # **[Required]** The redo transport type to use for this Data Guard association.  Valid values depend on the specified `protectionMode`:
    #
    # * MAXIMUM_AVAILABILITY - SYNC or FASTSYNC
    # * MAXIMUM_PERFORMANCE - ASYNC
    # * MAXIMUM_PROTECTION - SYNC
    #
    # For more information, see
    # [Redo Transport Services](http://docs.oracle.com/database/122/SBYDB/oracle-data-guard-redo-transport-services.htm#SBYDB00400)
    # in the Oracle Data Guard documentation.
    #
    # **IMPORTANT** - The only transport type currently supported by the Database service is ASYNC.
    #
    # @return [String]
    attr_reader :transport_type

    # **[Required]** Specifies whether to create the peer database in an existing DB system or in a new DB system.
    #
    # @return [String]
    attr_accessor :creation_type

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'database_software_image_id': :'databaseSoftwareImageId',
        'database_admin_password': :'databaseAdminPassword',
        'protection_mode': :'protectionMode',
        'transport_type': :'transportType',
        'creation_type': :'creationType'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'database_software_image_id': :'String',
        'database_admin_password': :'String',
        'protection_mode': :'String',
        'transport_type': :'String',
        'creation_type': :'String'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Layout/EmptyLines, Metrics/PerceivedComplexity, Metrics/AbcSize


    # Given the hash representation of a subtype of this class,
    # use the info in the hash to return the class of the subtype.
    def self.get_subtype(object_hash)
      type = object_hash[:'creationType'] # rubocop:disable Style/SymbolLiteral

      return 'OCI::Database::Models::CreateDataGuardAssociationWithNewDbSystemDetails' if type == 'NewDbSystem'
      return 'OCI::Database::Models::CreateDataGuardAssociationToExistingVmClusterDetails' if type == 'ExistingVmCluster'
      return 'OCI::Database::Models::CreateDataGuardAssociationToExistingDbSystemDetails' if type == 'ExistingDbSystem'

      # TODO: Log a warning when the subtype is not found.
      'OCI::Database::Models::CreateDataGuardAssociationDetails'
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Layout/EmptyLines, Metrics/PerceivedComplexity, Metrics/AbcSize

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :database_software_image_id The value to assign to the {#database_software_image_id} property
    # @option attributes [String] :database_admin_password The value to assign to the {#database_admin_password} property
    # @option attributes [String] :protection_mode The value to assign to the {#protection_mode} property
    # @option attributes [String] :transport_type The value to assign to the {#transport_type} property
    # @option attributes [String] :creation_type The value to assign to the {#creation_type} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.database_software_image_id = attributes[:'databaseSoftwareImageId'] if attributes[:'databaseSoftwareImageId']

      raise 'You cannot provide both :databaseSoftwareImageId and :database_software_image_id' if attributes.key?(:'databaseSoftwareImageId') && attributes.key?(:'database_software_image_id')

      self.database_software_image_id = attributes[:'database_software_image_id'] if attributes[:'database_software_image_id']

      self.database_admin_password = attributes[:'databaseAdminPassword'] if attributes[:'databaseAdminPassword']

      raise 'You cannot provide both :databaseAdminPassword and :database_admin_password' if attributes.key?(:'databaseAdminPassword') && attributes.key?(:'database_admin_password')

      self.database_admin_password = attributes[:'database_admin_password'] if attributes[:'database_admin_password']

      self.protection_mode = attributes[:'protectionMode'] if attributes[:'protectionMode']

      raise 'You cannot provide both :protectionMode and :protection_mode' if attributes.key?(:'protectionMode') && attributes.key?(:'protection_mode')

      self.protection_mode = attributes[:'protection_mode'] if attributes[:'protection_mode']

      self.transport_type = attributes[:'transportType'] if attributes[:'transportType']

      raise 'You cannot provide both :transportType and :transport_type' if attributes.key?(:'transportType') && attributes.key?(:'transport_type')

      self.transport_type = attributes[:'transport_type'] if attributes[:'transport_type']

      self.creation_type = attributes[:'creationType'] if attributes[:'creationType']

      raise 'You cannot provide both :creationType and :creation_type' if attributes.key?(:'creationType') && attributes.key?(:'creation_type')

      self.creation_type = attributes[:'creation_type'] if attributes[:'creation_type']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] protection_mode Object to be assigned
    def protection_mode=(protection_mode)
      raise "Invalid value for 'protection_mode': this must be one of the values in PROTECTION_MODE_ENUM." if protection_mode && !PROTECTION_MODE_ENUM.include?(protection_mode)

      @protection_mode = protection_mode
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] transport_type Object to be assigned
    def transport_type=(transport_type)
      raise "Invalid value for 'transport_type': this must be one of the values in TRANSPORT_TYPE_ENUM." if transport_type && !TRANSPORT_TYPE_ENUM.include?(transport_type)

      @transport_type = transport_type
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        database_software_image_id == other.database_software_image_id &&
        database_admin_password == other.database_admin_password &&
        protection_mode == other.protection_mode &&
        transport_type == other.transport_type &&
        creation_type == other.creation_type
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
      [database_software_image_id, database_admin_password, protection_mode, transport_type, creation_type].hash
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
