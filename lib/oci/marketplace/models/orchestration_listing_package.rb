# Copyright (c) 2016, 2021, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'
require_relative 'listing_package'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # A listing package for orchestration.
  class Marketplace::Models::OrchestrationListingPackage < Marketplace::Models::ListingPackage
    # Link to the orchestration resource.
    # @return [String]
    attr_accessor :resource_link

    # List of variables for the orchestration resource.
    # @return [Array<OCI::Marketplace::Models::OrchestrationVariable>]
    attr_accessor :variables

    # The regions where you can deploy this listing package. (Some packages have restrictions that limit their deployment to United States regions only.)
    #
    # @return [Array<OCI::Marketplace::Models::Region>]
    attr_accessor :regions

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'description': :'description',
        'listing_id': :'listingId',
        'version': :'version',
        'package_type': :'packageType',
        'pricing': :'pricing',
        'resource_id': :'resourceId',
        'time_created': :'timeCreated',
        'operating_system': :'operatingSystem',
        'resource_link': :'resourceLink',
        'variables': :'variables',
        'regions': :'regions'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'description': :'String',
        'listing_id': :'String',
        'version': :'String',
        'package_type': :'String',
        'pricing': :'OCI::Marketplace::Models::PricingModel',
        'resource_id': :'String',
        'time_created': :'DateTime',
        'operating_system': :'OCI::Marketplace::Models::OperatingSystem',
        'resource_link': :'String',
        'variables': :'Array<OCI::Marketplace::Models::OrchestrationVariable>',
        'regions': :'Array<OCI::Marketplace::Models::Region>'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :description The value to assign to the {OCI::Marketplace::Models::ListingPackage#description #description} proprety
    # @option attributes [String] :listing_id The value to assign to the {OCI::Marketplace::Models::ListingPackage#listing_id #listing_id} proprety
    # @option attributes [String] :version The value to assign to the {OCI::Marketplace::Models::ListingPackage#version #version} proprety
    # @option attributes [OCI::Marketplace::Models::PricingModel] :pricing The value to assign to the {OCI::Marketplace::Models::ListingPackage#pricing #pricing} proprety
    # @option attributes [String] :resource_id The value to assign to the {OCI::Marketplace::Models::ListingPackage#resource_id #resource_id} proprety
    # @option attributes [DateTime] :time_created The value to assign to the {OCI::Marketplace::Models::ListingPackage#time_created #time_created} proprety
    # @option attributes [OCI::Marketplace::Models::OperatingSystem] :operating_system The value to assign to the {OCI::Marketplace::Models::ListingPackage#operating_system #operating_system} proprety
    # @option attributes [String] :resource_link The value to assign to the {#resource_link} property
    # @option attributes [Array<OCI::Marketplace::Models::OrchestrationVariable>] :variables The value to assign to the {#variables} property
    # @option attributes [Array<OCI::Marketplace::Models::Region>] :regions The value to assign to the {#regions} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      attributes['packageType'] = 'ORCHESTRATION'

      super(attributes)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.resource_link = attributes[:'resourceLink'] if attributes[:'resourceLink']

      raise 'You cannot provide both :resourceLink and :resource_link' if attributes.key?(:'resourceLink') && attributes.key?(:'resource_link')

      self.resource_link = attributes[:'resource_link'] if attributes[:'resource_link']

      self.variables = attributes[:'variables'] if attributes[:'variables']

      self.regions = attributes[:'regions'] if attributes[:'regions']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        description == other.description &&
        listing_id == other.listing_id &&
        version == other.version &&
        package_type == other.package_type &&
        pricing == other.pricing &&
        resource_id == other.resource_id &&
        time_created == other.time_created &&
        operating_system == other.operating_system &&
        resource_link == other.resource_link &&
        variables == other.variables &&
        regions == other.regions
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
      [description, listing_id, version, package_type, pricing, resource_id, time_created, operating_system, resource_link, variables, regions].hash
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
