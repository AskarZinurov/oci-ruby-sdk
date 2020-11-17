# Copyright (c) 2016, 2020, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'
require 'logger'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # A generic term used in the data catalog for an external organization concept used for a collection of data entities
  # or processes within a data asset. This term is an internal term which models multiple external types of folder,
  # such as file directories, database schemas, and so on. Some data assets, such as Object Store containers, may contain
  # many levels of folders.
  #
  class DataCatalog::Models::Folder
    LIFECYCLE_STATE_ENUM = [
      LIFECYCLE_STATE_CREATING = 'CREATING'.freeze,
      LIFECYCLE_STATE_ACTIVE = 'ACTIVE'.freeze,
      LIFECYCLE_STATE_INACTIVE = 'INACTIVE'.freeze,
      LIFECYCLE_STATE_UPDATING = 'UPDATING'.freeze,
      LIFECYCLE_STATE_DELETING = 'DELETING'.freeze,
      LIFECYCLE_STATE_DELETED = 'DELETED'.freeze,
      LIFECYCLE_STATE_FAILED = 'FAILED'.freeze,
      LIFECYCLE_STATE_MOVING = 'MOVING'.freeze,
      LIFECYCLE_STATE_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    HARVEST_STATUS_ENUM = [
      HARVEST_STATUS_COMPLETE = 'COMPLETE'.freeze,
      HARVEST_STATUS_ERROR = 'ERROR'.freeze,
      HARVEST_STATUS_IN_PROGRESS = 'IN_PROGRESS'.freeze,
      HARVEST_STATUS_DEFERRED = 'DEFERRED'.freeze,
      HARVEST_STATUS_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    # **[Required]** Unique folder key that is immutable.
    # @return [String]
    attr_accessor :key

    # A user-friendly display name. Does not have to be unique, and it's changeable.
    # Avoid entering confidential information.
    #
    # @return [String]
    attr_accessor :display_name

    # Detailed description of a folder.
    # @return [String]
    attr_accessor :description

    # The unique key of the containing folder or null if there is no parent folder.
    # @return [String]
    attr_accessor :parent_folder_key

    # Full path of the folder.
    # @return [String]
    attr_accessor :path

    # The key of the associated data asset.
    # @return [String]
    attr_accessor :data_asset_key

    # The list of customized properties along with the values for this object
    # @return [Array<OCI::DataCatalog::Models::CustomPropertyGetUsage>]
    attr_accessor :custom_property_members

    # A map of maps that contains the properties which are specific to the folder type. Each folder type
    # definition defines it's set of required and optional properties. The map keys are category names and the
    # values are maps of property name to property value. Every property is contained inside of a category. Most
    # folders have required properties within the \"default\" category.
    # Example: `{\"properties\": { \"default\": { \"key1\": \"value1\"}}}`
    #
    # @return [Hash<String, Hash<String, String>>]
    attr_accessor :properties

    # Unique external key of this object in the source system.
    # @return [String]
    attr_accessor :external_key

    # The date and time the folder was created, in the format defined by [RFC3339](https://tools.ietf.org/html/rfc3339).
    # Example: `2019-03-25T21:10:29.600Z`
    #
    # @return [DateTime]
    attr_accessor :time_created

    # The last time that any change was made to the folder. An [RFC3339](https://tools.ietf.org/html/rfc3339) formatted datetime string.
    #
    # @return [DateTime]
    attr_accessor :time_updated

    # OCID of the user who created the folder.
    # @return [String]
    attr_accessor :created_by_id

    # OCID of the user who modified the folder.
    # @return [String]
    attr_accessor :updated_by_id

    # Last modified timestamp of this object in the external system.
    # @return [DateTime]
    attr_accessor :time_external

    # The current state of the folder.
    # @return [String]
    attr_reader :lifecycle_state

    # Status of the object as updated by the harvest process.
    # @return [String]
    attr_reader :harvest_status

    # The key of the last harvest process to update the metadata of this object.
    # @return [String]
    attr_accessor :last_job_key

    # URI to the folder instance in the API.
    # @return [String]
    attr_accessor :uri

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'key': :'key',
        'display_name': :'displayName',
        'description': :'description',
        'parent_folder_key': :'parentFolderKey',
        'path': :'path',
        'data_asset_key': :'dataAssetKey',
        'custom_property_members': :'customPropertyMembers',
        'properties': :'properties',
        'external_key': :'externalKey',
        'time_created': :'timeCreated',
        'time_updated': :'timeUpdated',
        'created_by_id': :'createdById',
        'updated_by_id': :'updatedById',
        'time_external': :'timeExternal',
        'lifecycle_state': :'lifecycleState',
        'harvest_status': :'harvestStatus',
        'last_job_key': :'lastJobKey',
        'uri': :'uri'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'key': :'String',
        'display_name': :'String',
        'description': :'String',
        'parent_folder_key': :'String',
        'path': :'String',
        'data_asset_key': :'String',
        'custom_property_members': :'Array<OCI::DataCatalog::Models::CustomPropertyGetUsage>',
        'properties': :'Hash<String, Hash<String, String>>',
        'external_key': :'String',
        'time_created': :'DateTime',
        'time_updated': :'DateTime',
        'created_by_id': :'String',
        'updated_by_id': :'String',
        'time_external': :'DateTime',
        'lifecycle_state': :'String',
        'harvest_status': :'String',
        'last_job_key': :'String',
        'uri': :'String'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :key The value to assign to the {#key} property
    # @option attributes [String] :display_name The value to assign to the {#display_name} property
    # @option attributes [String] :description The value to assign to the {#description} property
    # @option attributes [String] :parent_folder_key The value to assign to the {#parent_folder_key} property
    # @option attributes [String] :path The value to assign to the {#path} property
    # @option attributes [String] :data_asset_key The value to assign to the {#data_asset_key} property
    # @option attributes [Array<OCI::DataCatalog::Models::CustomPropertyGetUsage>] :custom_property_members The value to assign to the {#custom_property_members} property
    # @option attributes [Hash<String, Hash<String, String>>] :properties The value to assign to the {#properties} property
    # @option attributes [String] :external_key The value to assign to the {#external_key} property
    # @option attributes [DateTime] :time_created The value to assign to the {#time_created} property
    # @option attributes [DateTime] :time_updated The value to assign to the {#time_updated} property
    # @option attributes [String] :created_by_id The value to assign to the {#created_by_id} property
    # @option attributes [String] :updated_by_id The value to assign to the {#updated_by_id} property
    # @option attributes [DateTime] :time_external The value to assign to the {#time_external} property
    # @option attributes [String] :lifecycle_state The value to assign to the {#lifecycle_state} property
    # @option attributes [String] :harvest_status The value to assign to the {#harvest_status} property
    # @option attributes [String] :last_job_key The value to assign to the {#last_job_key} property
    # @option attributes [String] :uri The value to assign to the {#uri} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.key = attributes[:'key'] if attributes[:'key']

      self.display_name = attributes[:'displayName'] if attributes[:'displayName']

      raise 'You cannot provide both :displayName and :display_name' if attributes.key?(:'displayName') && attributes.key?(:'display_name')

      self.display_name = attributes[:'display_name'] if attributes[:'display_name']

      self.description = attributes[:'description'] if attributes[:'description']

      self.parent_folder_key = attributes[:'parentFolderKey'] if attributes[:'parentFolderKey']

      raise 'You cannot provide both :parentFolderKey and :parent_folder_key' if attributes.key?(:'parentFolderKey') && attributes.key?(:'parent_folder_key')

      self.parent_folder_key = attributes[:'parent_folder_key'] if attributes[:'parent_folder_key']

      self.path = attributes[:'path'] if attributes[:'path']

      self.data_asset_key = attributes[:'dataAssetKey'] if attributes[:'dataAssetKey']

      raise 'You cannot provide both :dataAssetKey and :data_asset_key' if attributes.key?(:'dataAssetKey') && attributes.key?(:'data_asset_key')

      self.data_asset_key = attributes[:'data_asset_key'] if attributes[:'data_asset_key']

      self.custom_property_members = attributes[:'customPropertyMembers'] if attributes[:'customPropertyMembers']

      raise 'You cannot provide both :customPropertyMembers and :custom_property_members' if attributes.key?(:'customPropertyMembers') && attributes.key?(:'custom_property_members')

      self.custom_property_members = attributes[:'custom_property_members'] if attributes[:'custom_property_members']

      self.properties = attributes[:'properties'] if attributes[:'properties']

      self.external_key = attributes[:'externalKey'] if attributes[:'externalKey']

      raise 'You cannot provide both :externalKey and :external_key' if attributes.key?(:'externalKey') && attributes.key?(:'external_key')

      self.external_key = attributes[:'external_key'] if attributes[:'external_key']

      self.time_created = attributes[:'timeCreated'] if attributes[:'timeCreated']

      raise 'You cannot provide both :timeCreated and :time_created' if attributes.key?(:'timeCreated') && attributes.key?(:'time_created')

      self.time_created = attributes[:'time_created'] if attributes[:'time_created']

      self.time_updated = attributes[:'timeUpdated'] if attributes[:'timeUpdated']

      raise 'You cannot provide both :timeUpdated and :time_updated' if attributes.key?(:'timeUpdated') && attributes.key?(:'time_updated')

      self.time_updated = attributes[:'time_updated'] if attributes[:'time_updated']

      self.created_by_id = attributes[:'createdById'] if attributes[:'createdById']

      raise 'You cannot provide both :createdById and :created_by_id' if attributes.key?(:'createdById') && attributes.key?(:'created_by_id')

      self.created_by_id = attributes[:'created_by_id'] if attributes[:'created_by_id']

      self.updated_by_id = attributes[:'updatedById'] if attributes[:'updatedById']

      raise 'You cannot provide both :updatedById and :updated_by_id' if attributes.key?(:'updatedById') && attributes.key?(:'updated_by_id')

      self.updated_by_id = attributes[:'updated_by_id'] if attributes[:'updated_by_id']

      self.time_external = attributes[:'timeExternal'] if attributes[:'timeExternal']

      raise 'You cannot provide both :timeExternal and :time_external' if attributes.key?(:'timeExternal') && attributes.key?(:'time_external')

      self.time_external = attributes[:'time_external'] if attributes[:'time_external']

      self.lifecycle_state = attributes[:'lifecycleState'] if attributes[:'lifecycleState']

      raise 'You cannot provide both :lifecycleState and :lifecycle_state' if attributes.key?(:'lifecycleState') && attributes.key?(:'lifecycle_state')

      self.lifecycle_state = attributes[:'lifecycle_state'] if attributes[:'lifecycle_state']

      self.harvest_status = attributes[:'harvestStatus'] if attributes[:'harvestStatus']

      raise 'You cannot provide both :harvestStatus and :harvest_status' if attributes.key?(:'harvestStatus') && attributes.key?(:'harvest_status')

      self.harvest_status = attributes[:'harvest_status'] if attributes[:'harvest_status']

      self.last_job_key = attributes[:'lastJobKey'] if attributes[:'lastJobKey']

      raise 'You cannot provide both :lastJobKey and :last_job_key' if attributes.key?(:'lastJobKey') && attributes.key?(:'last_job_key')

      self.last_job_key = attributes[:'last_job_key'] if attributes[:'last_job_key']

      self.uri = attributes[:'uri'] if attributes[:'uri']
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
    # @param [Object] harvest_status Object to be assigned
    def harvest_status=(harvest_status)
      # rubocop:disable Style/ConditionalAssignment
      if harvest_status && !HARVEST_STATUS_ENUM.include?(harvest_status)
        OCI.logger.debug("Unknown value for 'harvest_status' [" + harvest_status + "]. Mapping to 'HARVEST_STATUS_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @harvest_status = HARVEST_STATUS_UNKNOWN_ENUM_VALUE
      else
        @harvest_status = harvest_status
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        key == other.key &&
        display_name == other.display_name &&
        description == other.description &&
        parent_folder_key == other.parent_folder_key &&
        path == other.path &&
        data_asset_key == other.data_asset_key &&
        custom_property_members == other.custom_property_members &&
        properties == other.properties &&
        external_key == other.external_key &&
        time_created == other.time_created &&
        time_updated == other.time_updated &&
        created_by_id == other.created_by_id &&
        updated_by_id == other.updated_by_id &&
        time_external == other.time_external &&
        lifecycle_state == other.lifecycle_state &&
        harvest_status == other.harvest_status &&
        last_job_key == other.last_job_key &&
        uri == other.uri
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
      [key, display_name, description, parent_folder_key, path, data_asset_key, custom_property_members, properties, external_key, time_created, time_updated, created_by_id, updated_by_id, time_external, lifecycle_state, harvest_status, last_job_key, uri].hash
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
