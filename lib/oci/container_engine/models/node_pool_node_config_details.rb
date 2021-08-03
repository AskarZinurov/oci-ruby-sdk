# Copyright (c) 2016, 2021, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # The size and placement configuration of nodes in the node pool.
  class ContainerEngine::Models::NodePoolNodeConfigDetails
    # The number of nodes in the node pool.
    #
    # @return [Integer]
    attr_accessor :size

    # The OCIDs of the Network Security Group(s) to associate nodes for this node pool with. For more information about NSGs, see {NetworkSecurityGroup}.
    #
    # @return [Array<String>]
    attr_accessor :nsg_ids

    # The placement configurations for the node pool. Provide one placement
    # configuration for each availability domain in which you intend to launch a node.
    #
    # To use the node pool with a regional subnet, provide a placement configuration for
    # each availability domain, and include the regional subnet in each placement
    # configuration.
    #
    # @return [Array<OCI::ContainerEngine::Models::NodePoolPlacementConfigDetails>]
    attr_accessor :placement_configs

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'size': :'size',
        'nsg_ids': :'nsgIds',
        'placement_configs': :'placementConfigs'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'size': :'Integer',
        'nsg_ids': :'Array<String>',
        'placement_configs': :'Array<OCI::ContainerEngine::Models::NodePoolPlacementConfigDetails>'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [Integer] :size The value to assign to the {#size} property
    # @option attributes [Array<String>] :nsg_ids The value to assign to the {#nsg_ids} property
    # @option attributes [Array<OCI::ContainerEngine::Models::NodePoolPlacementConfigDetails>] :placement_configs The value to assign to the {#placement_configs} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.size = attributes[:'size'] if attributes[:'size']

      self.nsg_ids = attributes[:'nsgIds'] if attributes[:'nsgIds']

      raise 'You cannot provide both :nsgIds and :nsg_ids' if attributes.key?(:'nsgIds') && attributes.key?(:'nsg_ids')

      self.nsg_ids = attributes[:'nsg_ids'] if attributes[:'nsg_ids']

      self.placement_configs = attributes[:'placementConfigs'] if attributes[:'placementConfigs']

      raise 'You cannot provide both :placementConfigs and :placement_configs' if attributes.key?(:'placementConfigs') && attributes.key?(:'placement_configs')

      self.placement_configs = attributes[:'placement_configs'] if attributes[:'placement_configs']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        size == other.size &&
        nsg_ids == other.nsg_ids &&
        placement_configs == other.placement_configs
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
      [size, nsg_ids, placement_configs].hash
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
