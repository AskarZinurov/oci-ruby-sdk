# Copyright (c) 2016, 2021, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'
require 'logger'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # Container image metadata.
  class Artifacts::Models::ContainerImage
    LIFECYCLE_STATE_ENUM = [
      LIFECYCLE_STATE_AVAILABLE = 'AVAILABLE'.freeze,
      LIFECYCLE_STATE_DELETED = 'DELETED'.freeze,
      LIFECYCLE_STATE_DELETING = 'DELETING'.freeze,
      LIFECYCLE_STATE_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    # **[Required]** The compartment OCID to which the container image belongs. Inferred from the container repository.
    # @return [String]
    attr_accessor :compartment_id

    # **[Required]** The [OCID](https://docs.cloud.oracle.com/Content/General/Concepts/identifiers.htm) of the user or principal that created the resource.
    # @return [String]
    attr_accessor :created_by

    # **[Required]** The container image digest.
    # @return [String]
    attr_accessor :digest

    # **[Required]** The repository name and the most recent version associated with the image.
    # If there are no versions associated with the image, then last known version and digest are used instead.
    # If the last known version is unavailable, then 'unknown' is used instead of the version.
    #
    # Example: `ubuntu:latest` or `ubuntu:latest@sha256:45b23dee08af5e43a7fea6c4cf9c25ccf269ee113168c19722f87876677c5cb2`
    #
    # @return [String]
    attr_accessor :display_name

    # **[Required]** The [OCID](https://docs.cloud.oracle.com/Content/General/Concepts/identifiers.htm) of the container image.
    #
    # Example: `ocid1.containerimage.oc1..exampleuniqueID`
    #
    # @return [String]
    attr_accessor :id

    # **[Required]** Layers of which the image is composed, ordered by the layer digest.
    # @return [Array<OCI::Artifacts::Models::ContainerImageLayer>]
    attr_accessor :layers

    # **[Required]** The total size of the container image layers in bytes.
    # @return [Integer]
    attr_accessor :layers_size_in_bytes

    # **[Required]** The current state of the container image.
    # @return [String]
    attr_reader :lifecycle_state

    # **[Required]** The size of the container image manifest in bytes.
    # @return [Integer]
    attr_accessor :manifest_size_in_bytes

    # **[Required]** Total number of pulls.
    # @return [Integer]
    attr_accessor :pull_count

    # **[Required]** The [OCID](https://docs.cloud.oracle.com/Content/General/Concepts/identifiers.htm) of the container repository.
    # @return [String]
    attr_accessor :repository_id

    # **[Required]** The container repository name.
    # @return [String]
    attr_accessor :repository_name

    # **[Required]** An RFC 3339 timestamp indicating when the image was created.
    # @return [DateTime]
    attr_accessor :time_created

    # An RFC 3339 timestamp indicating when the image was last pulled.
    # @return [DateTime]
    attr_accessor :time_last_pulled

    # The most recent version associated with this image.
    # @return [String]
    attr_accessor :version

    # **[Required]** The versions associated with this image.
    # @return [Array<OCI::Artifacts::Models::ContainerVersion>]
    attr_accessor :versions

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'compartment_id': :'compartmentId',
        'created_by': :'createdBy',
        'digest': :'digest',
        'display_name': :'displayName',
        'id': :'id',
        'layers': :'layers',
        'layers_size_in_bytes': :'layersSizeInBytes',
        'lifecycle_state': :'lifecycleState',
        'manifest_size_in_bytes': :'manifestSizeInBytes',
        'pull_count': :'pullCount',
        'repository_id': :'repositoryId',
        'repository_name': :'repositoryName',
        'time_created': :'timeCreated',
        'time_last_pulled': :'timeLastPulled',
        'version': :'version',
        'versions': :'versions'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'compartment_id': :'String',
        'created_by': :'String',
        'digest': :'String',
        'display_name': :'String',
        'id': :'String',
        'layers': :'Array<OCI::Artifacts::Models::ContainerImageLayer>',
        'layers_size_in_bytes': :'Integer',
        'lifecycle_state': :'String',
        'manifest_size_in_bytes': :'Integer',
        'pull_count': :'Integer',
        'repository_id': :'String',
        'repository_name': :'String',
        'time_created': :'DateTime',
        'time_last_pulled': :'DateTime',
        'version': :'String',
        'versions': :'Array<OCI::Artifacts::Models::ContainerVersion>'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :compartment_id The value to assign to the {#compartment_id} property
    # @option attributes [String] :created_by The value to assign to the {#created_by} property
    # @option attributes [String] :digest The value to assign to the {#digest} property
    # @option attributes [String] :display_name The value to assign to the {#display_name} property
    # @option attributes [String] :id The value to assign to the {#id} property
    # @option attributes [Array<OCI::Artifacts::Models::ContainerImageLayer>] :layers The value to assign to the {#layers} property
    # @option attributes [Integer] :layers_size_in_bytes The value to assign to the {#layers_size_in_bytes} property
    # @option attributes [String] :lifecycle_state The value to assign to the {#lifecycle_state} property
    # @option attributes [Integer] :manifest_size_in_bytes The value to assign to the {#manifest_size_in_bytes} property
    # @option attributes [Integer] :pull_count The value to assign to the {#pull_count} property
    # @option attributes [String] :repository_id The value to assign to the {#repository_id} property
    # @option attributes [String] :repository_name The value to assign to the {#repository_name} property
    # @option attributes [DateTime] :time_created The value to assign to the {#time_created} property
    # @option attributes [DateTime] :time_last_pulled The value to assign to the {#time_last_pulled} property
    # @option attributes [String] :version The value to assign to the {#version} property
    # @option attributes [Array<OCI::Artifacts::Models::ContainerVersion>] :versions The value to assign to the {#versions} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.compartment_id = attributes[:'compartmentId'] if attributes[:'compartmentId']

      raise 'You cannot provide both :compartmentId and :compartment_id' if attributes.key?(:'compartmentId') && attributes.key?(:'compartment_id')

      self.compartment_id = attributes[:'compartment_id'] if attributes[:'compartment_id']

      self.created_by = attributes[:'createdBy'] if attributes[:'createdBy']

      raise 'You cannot provide both :createdBy and :created_by' if attributes.key?(:'createdBy') && attributes.key?(:'created_by')

      self.created_by = attributes[:'created_by'] if attributes[:'created_by']

      self.digest = attributes[:'digest'] if attributes[:'digest']

      self.display_name = attributes[:'displayName'] if attributes[:'displayName']

      raise 'You cannot provide both :displayName and :display_name' if attributes.key?(:'displayName') && attributes.key?(:'display_name')

      self.display_name = attributes[:'display_name'] if attributes[:'display_name']

      self.id = attributes[:'id'] if attributes[:'id']

      self.layers = attributes[:'layers'] if attributes[:'layers']

      self.layers_size_in_bytes = attributes[:'layersSizeInBytes'] if attributes[:'layersSizeInBytes']

      raise 'You cannot provide both :layersSizeInBytes and :layers_size_in_bytes' if attributes.key?(:'layersSizeInBytes') && attributes.key?(:'layers_size_in_bytes')

      self.layers_size_in_bytes = attributes[:'layers_size_in_bytes'] if attributes[:'layers_size_in_bytes']

      self.lifecycle_state = attributes[:'lifecycleState'] if attributes[:'lifecycleState']

      raise 'You cannot provide both :lifecycleState and :lifecycle_state' if attributes.key?(:'lifecycleState') && attributes.key?(:'lifecycle_state')

      self.lifecycle_state = attributes[:'lifecycle_state'] if attributes[:'lifecycle_state']

      self.manifest_size_in_bytes = attributes[:'manifestSizeInBytes'] if attributes[:'manifestSizeInBytes']

      raise 'You cannot provide both :manifestSizeInBytes and :manifest_size_in_bytes' if attributes.key?(:'manifestSizeInBytes') && attributes.key?(:'manifest_size_in_bytes')

      self.manifest_size_in_bytes = attributes[:'manifest_size_in_bytes'] if attributes[:'manifest_size_in_bytes']

      self.pull_count = attributes[:'pullCount'] if attributes[:'pullCount']

      raise 'You cannot provide both :pullCount and :pull_count' if attributes.key?(:'pullCount') && attributes.key?(:'pull_count')

      self.pull_count = attributes[:'pull_count'] if attributes[:'pull_count']

      self.repository_id = attributes[:'repositoryId'] if attributes[:'repositoryId']

      raise 'You cannot provide both :repositoryId and :repository_id' if attributes.key?(:'repositoryId') && attributes.key?(:'repository_id')

      self.repository_id = attributes[:'repository_id'] if attributes[:'repository_id']

      self.repository_name = attributes[:'repositoryName'] if attributes[:'repositoryName']

      raise 'You cannot provide both :repositoryName and :repository_name' if attributes.key?(:'repositoryName') && attributes.key?(:'repository_name')

      self.repository_name = attributes[:'repository_name'] if attributes[:'repository_name']

      self.time_created = attributes[:'timeCreated'] if attributes[:'timeCreated']

      raise 'You cannot provide both :timeCreated and :time_created' if attributes.key?(:'timeCreated') && attributes.key?(:'time_created')

      self.time_created = attributes[:'time_created'] if attributes[:'time_created']

      self.time_last_pulled = attributes[:'timeLastPulled'] if attributes[:'timeLastPulled']

      raise 'You cannot provide both :timeLastPulled and :time_last_pulled' if attributes.key?(:'timeLastPulled') && attributes.key?(:'time_last_pulled')

      self.time_last_pulled = attributes[:'time_last_pulled'] if attributes[:'time_last_pulled']

      self.version = attributes[:'version'] if attributes[:'version']

      self.versions = attributes[:'versions'] if attributes[:'versions']
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
        compartment_id == other.compartment_id &&
        created_by == other.created_by &&
        digest == other.digest &&
        display_name == other.display_name &&
        id == other.id &&
        layers == other.layers &&
        layers_size_in_bytes == other.layers_size_in_bytes &&
        lifecycle_state == other.lifecycle_state &&
        manifest_size_in_bytes == other.manifest_size_in_bytes &&
        pull_count == other.pull_count &&
        repository_id == other.repository_id &&
        repository_name == other.repository_name &&
        time_created == other.time_created &&
        time_last_pulled == other.time_last_pulled &&
        version == other.version &&
        versions == other.versions
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
      [compartment_id, created_by, digest, display_name, id, layers, layers_size_in_bytes, lifecycle_state, manifest_size_in_bytes, pull_count, repository_id, repository_name, time_created, time_last_pulled, version, versions].hash
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
