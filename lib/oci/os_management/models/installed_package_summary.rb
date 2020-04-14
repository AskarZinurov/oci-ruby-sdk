# Copyright (c) 2016, 2020, Oracle and/or its affiliates. All rights reserved.

require 'date'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # A software package installed on a managed instance
  class OsManagement::Models::InstalledPackageSummary
    # **[Required]** Package name
    # @return [String]
    attr_accessor :display_name

    # **[Required]** Unique identifier for the package. NOTE - This is not an OCID
    # @return [String]
    attr_accessor :name

    # **[Required]** Type of the package
    # @return [String]
    attr_accessor :type

    # **[Required]** Version of the installed package
    # @return [String]
    attr_accessor :version

    # The architecture for which this package was built
    # @return [String]
    attr_accessor :architecture

    # Install time of the package
    # @return [String]
    attr_accessor :install_time

    # list of software sources that provide the software package
    # @return [Array<OCI::OsManagement::Models::SoftwareSourceId>]
    attr_accessor :software_sources

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'display_name': :'displayName',
        'name': :'name',
        'type': :'type',
        'version': :'version',
        'architecture': :'architecture',
        'install_time': :'installTime',
        'software_sources': :'softwareSources'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'display_name': :'String',
        'name': :'String',
        'type': :'String',
        'version': :'String',
        'architecture': :'String',
        'install_time': :'String',
        'software_sources': :'Array<OCI::OsManagement::Models::SoftwareSourceId>'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :display_name The value to assign to the {#display_name} property
    # @option attributes [String] :name The value to assign to the {#name} property
    # @option attributes [String] :type The value to assign to the {#type} property
    # @option attributes [String] :version The value to assign to the {#version} property
    # @option attributes [String] :architecture The value to assign to the {#architecture} property
    # @option attributes [String] :install_time The value to assign to the {#install_time} property
    # @option attributes [Array<OCI::OsManagement::Models::SoftwareSourceId>] :software_sources The value to assign to the {#software_sources} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.display_name = attributes[:'displayName'] if attributes[:'displayName']

      raise 'You cannot provide both :displayName and :display_name' if attributes.key?(:'displayName') && attributes.key?(:'display_name')

      self.display_name = attributes[:'display_name'] if attributes[:'display_name']

      self.name = attributes[:'name'] if attributes[:'name']

      self.type = attributes[:'type'] if attributes[:'type']

      self.version = attributes[:'version'] if attributes[:'version']

      self.architecture = attributes[:'architecture'] if attributes[:'architecture']

      self.install_time = attributes[:'installTime'] if attributes[:'installTime']

      raise 'You cannot provide both :installTime and :install_time' if attributes.key?(:'installTime') && attributes.key?(:'install_time')

      self.install_time = attributes[:'install_time'] if attributes[:'install_time']

      self.software_sources = attributes[:'softwareSources'] if attributes[:'softwareSources']

      raise 'You cannot provide both :softwareSources and :software_sources' if attributes.key?(:'softwareSources') && attributes.key?(:'software_sources')

      self.software_sources = attributes[:'software_sources'] if attributes[:'software_sources']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        display_name == other.display_name &&
        name == other.name &&
        type == other.type &&
        version == other.version &&
        architecture == other.architecture &&
        install_time == other.install_time &&
        software_sources == other.software_sources
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
      [display_name, name, type, version, architecture, install_time, software_sources].hash
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