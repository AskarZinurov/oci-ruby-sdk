# Copyright (c) 2016, 2021, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'
require 'logger'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # Brief data about an application or a solution, which lives inside the tenancy and may be included into service catalogs.
  #
  class ServiceCatalog::Models::PrivateApplicationSummary
    PACKAGE_TYPE_ENUM = [
      PACKAGE_TYPE_STACK = 'STACK'.freeze,
      PACKAGE_TYPE_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    # **[Required]** The lifecycle state of the private application.
    # @return [String]
    attr_accessor :lifecycle_state

    # **[Required]** The [OCID](https://docs.cloud.oracle.com/Content/General/Concepts/identifiers.htm) of the compartment where the private application resides.
    #
    # @return [String]
    attr_accessor :compartment_id

    # **[Required]** The [OCID](https://docs.cloud.oracle.com/Content/General/Concepts/identifiers.htm) of the private application.
    # @return [String]
    attr_accessor :id

    # **[Required]** The name of the private application.
    # @return [String]
    attr_accessor :display_name

    # A short description of the private application.
    # @return [String]
    attr_accessor :short_description

    # @return [OCI::ServiceCatalog::Models::UploadData]
    attr_accessor :logo

    # **[Required]** Type of the packages, which are hosted by the private application.
    # @return [String]
    attr_reader :package_type

    # **[Required]** The date and time the private application was created, expressed in [RFC 3339](https://tools.ietf.org/html/rfc3339)
    # timestamp format.
    #
    # Example: `2021-05-27T21:10:29.600Z`
    #
    # @return [DateTime]
    attr_accessor :time_created

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'lifecycle_state': :'lifecycleState',
        'compartment_id': :'compartmentId',
        'id': :'id',
        'display_name': :'displayName',
        'short_description': :'shortDescription',
        'logo': :'logo',
        'package_type': :'packageType',
        'time_created': :'timeCreated'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'lifecycle_state': :'String',
        'compartment_id': :'String',
        'id': :'String',
        'display_name': :'String',
        'short_description': :'String',
        'logo': :'OCI::ServiceCatalog::Models::UploadData',
        'package_type': :'String',
        'time_created': :'DateTime'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :lifecycle_state The value to assign to the {#lifecycle_state} property
    # @option attributes [String] :compartment_id The value to assign to the {#compartment_id} property
    # @option attributes [String] :id The value to assign to the {#id} property
    # @option attributes [String] :display_name The value to assign to the {#display_name} property
    # @option attributes [String] :short_description The value to assign to the {#short_description} property
    # @option attributes [OCI::ServiceCatalog::Models::UploadData] :logo The value to assign to the {#logo} property
    # @option attributes [String] :package_type The value to assign to the {#package_type} property
    # @option attributes [DateTime] :time_created The value to assign to the {#time_created} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.lifecycle_state = attributes[:'lifecycleState'] if attributes[:'lifecycleState']

      raise 'You cannot provide both :lifecycleState and :lifecycle_state' if attributes.key?(:'lifecycleState') && attributes.key?(:'lifecycle_state')

      self.lifecycle_state = attributes[:'lifecycle_state'] if attributes[:'lifecycle_state']

      self.compartment_id = attributes[:'compartmentId'] if attributes[:'compartmentId']

      raise 'You cannot provide both :compartmentId and :compartment_id' if attributes.key?(:'compartmentId') && attributes.key?(:'compartment_id')

      self.compartment_id = attributes[:'compartment_id'] if attributes[:'compartment_id']

      self.id = attributes[:'id'] if attributes[:'id']

      self.display_name = attributes[:'displayName'] if attributes[:'displayName']

      raise 'You cannot provide both :displayName and :display_name' if attributes.key?(:'displayName') && attributes.key?(:'display_name')

      self.display_name = attributes[:'display_name'] if attributes[:'display_name']

      self.short_description = attributes[:'shortDescription'] if attributes[:'shortDescription']

      raise 'You cannot provide both :shortDescription and :short_description' if attributes.key?(:'shortDescription') && attributes.key?(:'short_description')

      self.short_description = attributes[:'short_description'] if attributes[:'short_description']

      self.logo = attributes[:'logo'] if attributes[:'logo']

      self.package_type = attributes[:'packageType'] if attributes[:'packageType']

      raise 'You cannot provide both :packageType and :package_type' if attributes.key?(:'packageType') && attributes.key?(:'package_type')

      self.package_type = attributes[:'package_type'] if attributes[:'package_type']

      self.time_created = attributes[:'timeCreated'] if attributes[:'timeCreated']

      raise 'You cannot provide both :timeCreated and :time_created' if attributes.key?(:'timeCreated') && attributes.key?(:'time_created')

      self.time_created = attributes[:'time_created'] if attributes[:'time_created']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] package_type Object to be assigned
    def package_type=(package_type)
      # rubocop:disable Style/ConditionalAssignment
      if package_type && !PACKAGE_TYPE_ENUM.include?(package_type)
        OCI.logger.debug("Unknown value for 'package_type' [" + package_type + "]. Mapping to 'PACKAGE_TYPE_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @package_type = PACKAGE_TYPE_UNKNOWN_ENUM_VALUE
      else
        @package_type = package_type
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        lifecycle_state == other.lifecycle_state &&
        compartment_id == other.compartment_id &&
        id == other.id &&
        display_name == other.display_name &&
        short_description == other.short_description &&
        logo == other.logo &&
        package_type == other.package_type &&
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
      [lifecycle_state, compartment_id, id, display_name, short_description, logo, package_type, time_created].hash
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
