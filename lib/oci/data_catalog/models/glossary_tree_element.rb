# Copyright (c) 2016, 2021, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'
require 'logger'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # Glossary tree element with child terms.
  class DataCatalog::Models::GlossaryTreeElement
    WORKFLOW_STATUS_ENUM = [
      WORKFLOW_STATUS_NEW = 'NEW'.freeze,
      WORKFLOW_STATUS_APPROVED = 'APPROVED'.freeze,
      WORKFLOW_STATUS_UNDER_REVIEW = 'UNDER_REVIEW'.freeze,
      WORKFLOW_STATUS_ESCALATED = 'ESCALATED'.freeze,
      WORKFLOW_STATUS_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

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

    # An array of child terms.
    # @return [Array<OCI::DataCatalog::Models::GlossaryTreeElement>]
    attr_accessor :child_terms

    # **[Required]** Unique term key that is immutable.
    # @return [String]
    attr_accessor :key

    # A user-friendly display name. Does not have to be unique, and it's changeable.
    # Avoid entering confidential information.
    #
    # @return [String]
    attr_accessor :display_name

    # Detailed description of the term.
    # @return [String]
    attr_accessor :description

    # Unique id of the parent glossary.
    # @return [String]
    attr_accessor :glossary_key

    # URI to the term instance in the API.
    # @return [String]
    attr_accessor :uri

    # This terms parent term key. Will be null if the term has no parent term.
    # @return [String]
    attr_accessor :parent_term_key

    # Indicates whether a term may contain child terms.
    # @return [BOOLEAN]
    attr_accessor :is_allowed_to_have_child_terms

    # Absolute path of the term.
    # @return [String]
    attr_accessor :path

    # The date and time the term was created, in the format defined by [RFC3339](https://tools.ietf.org/html/rfc3339).
    # Example: `2019-03-25T21:10:29.600Z`
    #
    # @return [DateTime]
    attr_accessor :time_created

    # Status of the approval process workflow for this business term in the glossary.
    # @return [String]
    attr_reader :workflow_status

    # The number of objects tagged with this term.
    # @return [Integer]
    attr_accessor :associated_object_count

    # State of the term.
    # @return [String]
    attr_reader :lifecycle_state

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'child_terms': :'childTerms',
        'key': :'key',
        'display_name': :'displayName',
        'description': :'description',
        'glossary_key': :'glossaryKey',
        'uri': :'uri',
        'parent_term_key': :'parentTermKey',
        'is_allowed_to_have_child_terms': :'isAllowedToHaveChildTerms',
        'path': :'path',
        'time_created': :'timeCreated',
        'workflow_status': :'workflowStatus',
        'associated_object_count': :'associatedObjectCount',
        'lifecycle_state': :'lifecycleState'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'child_terms': :'Array<OCI::DataCatalog::Models::GlossaryTreeElement>',
        'key': :'String',
        'display_name': :'String',
        'description': :'String',
        'glossary_key': :'String',
        'uri': :'String',
        'parent_term_key': :'String',
        'is_allowed_to_have_child_terms': :'BOOLEAN',
        'path': :'String',
        'time_created': :'DateTime',
        'workflow_status': :'String',
        'associated_object_count': :'Integer',
        'lifecycle_state': :'String'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [Array<OCI::DataCatalog::Models::GlossaryTreeElement>] :child_terms The value to assign to the {#child_terms} property
    # @option attributes [String] :key The value to assign to the {#key} property
    # @option attributes [String] :display_name The value to assign to the {#display_name} property
    # @option attributes [String] :description The value to assign to the {#description} property
    # @option attributes [String] :glossary_key The value to assign to the {#glossary_key} property
    # @option attributes [String] :uri The value to assign to the {#uri} property
    # @option attributes [String] :parent_term_key The value to assign to the {#parent_term_key} property
    # @option attributes [BOOLEAN] :is_allowed_to_have_child_terms The value to assign to the {#is_allowed_to_have_child_terms} property
    # @option attributes [String] :path The value to assign to the {#path} property
    # @option attributes [DateTime] :time_created The value to assign to the {#time_created} property
    # @option attributes [String] :workflow_status The value to assign to the {#workflow_status} property
    # @option attributes [Integer] :associated_object_count The value to assign to the {#associated_object_count} property
    # @option attributes [String] :lifecycle_state The value to assign to the {#lifecycle_state} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.child_terms = attributes[:'childTerms'] if attributes[:'childTerms']

      raise 'You cannot provide both :childTerms and :child_terms' if attributes.key?(:'childTerms') && attributes.key?(:'child_terms')

      self.child_terms = attributes[:'child_terms'] if attributes[:'child_terms']

      self.key = attributes[:'key'] if attributes[:'key']

      self.display_name = attributes[:'displayName'] if attributes[:'displayName']

      raise 'You cannot provide both :displayName and :display_name' if attributes.key?(:'displayName') && attributes.key?(:'display_name')

      self.display_name = attributes[:'display_name'] if attributes[:'display_name']

      self.description = attributes[:'description'] if attributes[:'description']

      self.glossary_key = attributes[:'glossaryKey'] if attributes[:'glossaryKey']

      raise 'You cannot provide both :glossaryKey and :glossary_key' if attributes.key?(:'glossaryKey') && attributes.key?(:'glossary_key')

      self.glossary_key = attributes[:'glossary_key'] if attributes[:'glossary_key']

      self.uri = attributes[:'uri'] if attributes[:'uri']

      self.parent_term_key = attributes[:'parentTermKey'] if attributes[:'parentTermKey']

      raise 'You cannot provide both :parentTermKey and :parent_term_key' if attributes.key?(:'parentTermKey') && attributes.key?(:'parent_term_key')

      self.parent_term_key = attributes[:'parent_term_key'] if attributes[:'parent_term_key']

      self.is_allowed_to_have_child_terms = attributes[:'isAllowedToHaveChildTerms'] unless attributes[:'isAllowedToHaveChildTerms'].nil?
      self.is_allowed_to_have_child_terms = true if is_allowed_to_have_child_terms.nil? && !attributes.key?(:'isAllowedToHaveChildTerms') # rubocop:disable Style/StringLiterals

      raise 'You cannot provide both :isAllowedToHaveChildTerms and :is_allowed_to_have_child_terms' if attributes.key?(:'isAllowedToHaveChildTerms') && attributes.key?(:'is_allowed_to_have_child_terms')

      self.is_allowed_to_have_child_terms = attributes[:'is_allowed_to_have_child_terms'] unless attributes[:'is_allowed_to_have_child_terms'].nil?
      self.is_allowed_to_have_child_terms = true if is_allowed_to_have_child_terms.nil? && !attributes.key?(:'isAllowedToHaveChildTerms') && !attributes.key?(:'is_allowed_to_have_child_terms') # rubocop:disable Style/StringLiterals

      self.path = attributes[:'path'] if attributes[:'path']

      self.time_created = attributes[:'timeCreated'] if attributes[:'timeCreated']

      raise 'You cannot provide both :timeCreated and :time_created' if attributes.key?(:'timeCreated') && attributes.key?(:'time_created')

      self.time_created = attributes[:'time_created'] if attributes[:'time_created']

      self.workflow_status = attributes[:'workflowStatus'] if attributes[:'workflowStatus']

      raise 'You cannot provide both :workflowStatus and :workflow_status' if attributes.key?(:'workflowStatus') && attributes.key?(:'workflow_status')

      self.workflow_status = attributes[:'workflow_status'] if attributes[:'workflow_status']

      self.associated_object_count = attributes[:'associatedObjectCount'] if attributes[:'associatedObjectCount']

      raise 'You cannot provide both :associatedObjectCount and :associated_object_count' if attributes.key?(:'associatedObjectCount') && attributes.key?(:'associated_object_count')

      self.associated_object_count = attributes[:'associated_object_count'] if attributes[:'associated_object_count']

      self.lifecycle_state = attributes[:'lifecycleState'] if attributes[:'lifecycleState']

      raise 'You cannot provide both :lifecycleState and :lifecycle_state' if attributes.key?(:'lifecycleState') && attributes.key?(:'lifecycle_state')

      self.lifecycle_state = attributes[:'lifecycle_state'] if attributes[:'lifecycle_state']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] workflow_status Object to be assigned
    def workflow_status=(workflow_status)
      # rubocop:disable Style/ConditionalAssignment
      if workflow_status && !WORKFLOW_STATUS_ENUM.include?(workflow_status)
        OCI.logger.debug("Unknown value for 'workflow_status' [" + workflow_status + "]. Mapping to 'WORKFLOW_STATUS_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @workflow_status = WORKFLOW_STATUS_UNKNOWN_ENUM_VALUE
      else
        @workflow_status = workflow_status
      end
      # rubocop:enable Style/ConditionalAssignment
    end

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
        child_terms == other.child_terms &&
        key == other.key &&
        display_name == other.display_name &&
        description == other.description &&
        glossary_key == other.glossary_key &&
        uri == other.uri &&
        parent_term_key == other.parent_term_key &&
        is_allowed_to_have_child_terms == other.is_allowed_to_have_child_terms &&
        path == other.path &&
        time_created == other.time_created &&
        workflow_status == other.workflow_status &&
        associated_object_count == other.associated_object_count &&
        lifecycle_state == other.lifecycle_state
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
      [child_terms, key, display_name, description, glossary_key, uri, parent_term_key, is_allowed_to_have_child_terms, path, time_created, workflow_status, associated_object_count, lifecycle_state].hash
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
