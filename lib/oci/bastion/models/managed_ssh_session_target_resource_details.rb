# Copyright (c) 2016, 2021, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'
require_relative 'target_resource_details'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # Details about a managed SSH session for a target resource.
  class Bastion::Models::ManagedSshSessionTargetResourceDetails < Bastion::Models::TargetResourceDetails
    # **[Required]** The name of the user on the target resource operating system that the session uses for the connection.
    # @return [String]
    attr_accessor :target_resource_operating_system_user_name

    # **[Required]** The unique identifier (OCID) of the target resource (a Compute instance, for example) that the session connects to.
    # @return [String]
    attr_accessor :target_resource_id

    # The private IP address of the target resource that the session connects to.
    # @return [String]
    attr_accessor :target_resource_private_ip_address

    # **[Required]** The display name of the target Compute instance that the session connects to.
    # @return [String]
    attr_accessor :target_resource_display_name

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'session_type': :'sessionType',
        'target_resource_port': :'targetResourcePort',
        'target_resource_operating_system_user_name': :'targetResourceOperatingSystemUserName',
        'target_resource_id': :'targetResourceId',
        'target_resource_private_ip_address': :'targetResourcePrivateIpAddress',
        'target_resource_display_name': :'targetResourceDisplayName'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'session_type': :'String',
        'target_resource_port': :'Integer',
        'target_resource_operating_system_user_name': :'String',
        'target_resource_id': :'String',
        'target_resource_private_ip_address': :'String',
        'target_resource_display_name': :'String'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [Integer] :target_resource_port The value to assign to the {OCI::Bastion::Models::TargetResourceDetails#target_resource_port #target_resource_port} proprety
    # @option attributes [String] :target_resource_operating_system_user_name The value to assign to the {#target_resource_operating_system_user_name} property
    # @option attributes [String] :target_resource_id The value to assign to the {#target_resource_id} property
    # @option attributes [String] :target_resource_private_ip_address The value to assign to the {#target_resource_private_ip_address} property
    # @option attributes [String] :target_resource_display_name The value to assign to the {#target_resource_display_name} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      attributes['sessionType'] = 'MANAGED_SSH'

      super(attributes)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.target_resource_operating_system_user_name = attributes[:'targetResourceOperatingSystemUserName'] if attributes[:'targetResourceOperatingSystemUserName']

      raise 'You cannot provide both :targetResourceOperatingSystemUserName and :target_resource_operating_system_user_name' if attributes.key?(:'targetResourceOperatingSystemUserName') && attributes.key?(:'target_resource_operating_system_user_name')

      self.target_resource_operating_system_user_name = attributes[:'target_resource_operating_system_user_name'] if attributes[:'target_resource_operating_system_user_name']

      self.target_resource_id = attributes[:'targetResourceId'] if attributes[:'targetResourceId']

      raise 'You cannot provide both :targetResourceId and :target_resource_id' if attributes.key?(:'targetResourceId') && attributes.key?(:'target_resource_id')

      self.target_resource_id = attributes[:'target_resource_id'] if attributes[:'target_resource_id']

      self.target_resource_private_ip_address = attributes[:'targetResourcePrivateIpAddress'] if attributes[:'targetResourcePrivateIpAddress']

      raise 'You cannot provide both :targetResourcePrivateIpAddress and :target_resource_private_ip_address' if attributes.key?(:'targetResourcePrivateIpAddress') && attributes.key?(:'target_resource_private_ip_address')

      self.target_resource_private_ip_address = attributes[:'target_resource_private_ip_address'] if attributes[:'target_resource_private_ip_address']

      self.target_resource_display_name = attributes[:'targetResourceDisplayName'] if attributes[:'targetResourceDisplayName']

      raise 'You cannot provide both :targetResourceDisplayName and :target_resource_display_name' if attributes.key?(:'targetResourceDisplayName') && attributes.key?(:'target_resource_display_name')

      self.target_resource_display_name = attributes[:'target_resource_display_name'] if attributes[:'target_resource_display_name']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        session_type == other.session_type &&
        target_resource_port == other.target_resource_port &&
        target_resource_operating_system_user_name == other.target_resource_operating_system_user_name &&
        target_resource_id == other.target_resource_id &&
        target_resource_private_ip_address == other.target_resource_private_ip_address &&
        target_resource_display_name == other.target_resource_display_name
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
      [session_type, target_resource_port, target_resource_operating_system_user_name, target_resource_id, target_resource_private_ip_address, target_resource_display_name].hash
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