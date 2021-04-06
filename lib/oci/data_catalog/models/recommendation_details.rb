# Copyright (c) 2016, 2021, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'
require 'logger'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # Details of a recommendation.
  #
  class DataCatalog::Models::RecommendationDetails
    RECOMMENDATION_TYPE_ENUM = [
      RECOMMENDATION_TYPE_LINK_GLOSSARY_TERM = 'LINK_GLOSSARY_TERM'.freeze,
      RECOMMENDATION_TYPE_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    RECOMMENDATION_STATUS_ENUM = [
      RECOMMENDATION_STATUS_ACCEPTED = 'ACCEPTED'.freeze,
      RECOMMENDATION_STATUS_REJECTED = 'REJECTED'.freeze,
      RECOMMENDATION_STATUS_INFERRED = 'INFERRED'.freeze,
      RECOMMENDATION_STATUS_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    SOURCE_OBJECT_TYPE_ENUM = [
      SOURCE_OBJECT_TYPE_DATA_ENTITY = 'DATA_ENTITY'.freeze,
      SOURCE_OBJECT_TYPE_ATTRIBUTE = 'ATTRIBUTE'.freeze,
      SOURCE_OBJECT_TYPE_TERM = 'TERM'.freeze,
      SOURCE_OBJECT_TYPE_CATEGORY = 'CATEGORY'.freeze,
      SOURCE_OBJECT_TYPE_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    TARGET_OBJECT_TYPE_ENUM = [
      TARGET_OBJECT_TYPE_DATA_ENTITY = 'DATA_ENTITY'.freeze,
      TARGET_OBJECT_TYPE_ATTRIBUTE = 'ATTRIBUTE'.freeze,
      TARGET_OBJECT_TYPE_TERM = 'TERM'.freeze,
      TARGET_OBJECT_TYPE_CATEGORY = 'CATEGORY'.freeze,
      TARGET_OBJECT_TYPE_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    # **[Required]** Unique identifier of the recommendation.
    # @return [String]
    attr_accessor :recommendation_key

    # **[Required]** Type of recommendation.
    # @return [String]
    attr_reader :recommendation_type

    # **[Required]** Status of a recommendation.
    # @return [String]
    attr_reader :recommendation_status

    # Level of confidence, on a scale between 0 and 1, that the recommendation is applicable.
    # @return [Float]
    attr_accessor :confidence_score

    # Unique identifier of the source object; the one for which a recommendation is made.
    # @return [String]
    attr_accessor :source_object_key

    # Name of the source object; the one for which a recommendation is made.
    # @return [String]
    attr_accessor :source_object_name

    # Type of the source object; the one for which a recommendation is made.
    # @return [String]
    attr_reader :source_object_type

    # Unique identifier of the target object; the one which has been recommended.
    # @return [String]
    attr_accessor :target_object_key

    # Name of the target object; the one which has been recommended.
    # @return [String]
    attr_accessor :target_object_name

    # Type of the target object; the one which has been recommended.
    # @return [String]
    attr_reader :target_object_type

    # A map of maps that contains additional properties which are specific to the associated objects.
    # Each associated object defines it's set of required and optional properties.
    # Example: `{
    #             \"DataEntity\": {
    #               \"parentId\": \"entityId\"
    #             },
    #             \"Term\": {
    #               \"parentId\": \"glossaryId\"
    #             }
    #           }`
    #
    # @return [Hash<String, Hash<String, String>>]
    attr_accessor :properties

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'recommendation_key': :'recommendationKey',
        'recommendation_type': :'recommendationType',
        'recommendation_status': :'recommendationStatus',
        'confidence_score': :'confidenceScore',
        'source_object_key': :'sourceObjectKey',
        'source_object_name': :'sourceObjectName',
        'source_object_type': :'sourceObjectType',
        'target_object_key': :'targetObjectKey',
        'target_object_name': :'targetObjectName',
        'target_object_type': :'targetObjectType',
        'properties': :'properties'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'recommendation_key': :'String',
        'recommendation_type': :'String',
        'recommendation_status': :'String',
        'confidence_score': :'Float',
        'source_object_key': :'String',
        'source_object_name': :'String',
        'source_object_type': :'String',
        'target_object_key': :'String',
        'target_object_name': :'String',
        'target_object_type': :'String',
        'properties': :'Hash<String, Hash<String, String>>'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :recommendation_key The value to assign to the {#recommendation_key} property
    # @option attributes [String] :recommendation_type The value to assign to the {#recommendation_type} property
    # @option attributes [String] :recommendation_status The value to assign to the {#recommendation_status} property
    # @option attributes [Float] :confidence_score The value to assign to the {#confidence_score} property
    # @option attributes [String] :source_object_key The value to assign to the {#source_object_key} property
    # @option attributes [String] :source_object_name The value to assign to the {#source_object_name} property
    # @option attributes [String] :source_object_type The value to assign to the {#source_object_type} property
    # @option attributes [String] :target_object_key The value to assign to the {#target_object_key} property
    # @option attributes [String] :target_object_name The value to assign to the {#target_object_name} property
    # @option attributes [String] :target_object_type The value to assign to the {#target_object_type} property
    # @option attributes [Hash<String, Hash<String, String>>] :properties The value to assign to the {#properties} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.recommendation_key = attributes[:'recommendationKey'] if attributes[:'recommendationKey']

      raise 'You cannot provide both :recommendationKey and :recommendation_key' if attributes.key?(:'recommendationKey') && attributes.key?(:'recommendation_key')

      self.recommendation_key = attributes[:'recommendation_key'] if attributes[:'recommendation_key']

      self.recommendation_type = attributes[:'recommendationType'] if attributes[:'recommendationType']

      raise 'You cannot provide both :recommendationType and :recommendation_type' if attributes.key?(:'recommendationType') && attributes.key?(:'recommendation_type')

      self.recommendation_type = attributes[:'recommendation_type'] if attributes[:'recommendation_type']

      self.recommendation_status = attributes[:'recommendationStatus'] if attributes[:'recommendationStatus']

      raise 'You cannot provide both :recommendationStatus and :recommendation_status' if attributes.key?(:'recommendationStatus') && attributes.key?(:'recommendation_status')

      self.recommendation_status = attributes[:'recommendation_status'] if attributes[:'recommendation_status']

      self.confidence_score = attributes[:'confidenceScore'] if attributes[:'confidenceScore']

      raise 'You cannot provide both :confidenceScore and :confidence_score' if attributes.key?(:'confidenceScore') && attributes.key?(:'confidence_score')

      self.confidence_score = attributes[:'confidence_score'] if attributes[:'confidence_score']

      self.source_object_key = attributes[:'sourceObjectKey'] if attributes[:'sourceObjectKey']

      raise 'You cannot provide both :sourceObjectKey and :source_object_key' if attributes.key?(:'sourceObjectKey') && attributes.key?(:'source_object_key')

      self.source_object_key = attributes[:'source_object_key'] if attributes[:'source_object_key']

      self.source_object_name = attributes[:'sourceObjectName'] if attributes[:'sourceObjectName']

      raise 'You cannot provide both :sourceObjectName and :source_object_name' if attributes.key?(:'sourceObjectName') && attributes.key?(:'source_object_name')

      self.source_object_name = attributes[:'source_object_name'] if attributes[:'source_object_name']

      self.source_object_type = attributes[:'sourceObjectType'] if attributes[:'sourceObjectType']

      raise 'You cannot provide both :sourceObjectType and :source_object_type' if attributes.key?(:'sourceObjectType') && attributes.key?(:'source_object_type')

      self.source_object_type = attributes[:'source_object_type'] if attributes[:'source_object_type']

      self.target_object_key = attributes[:'targetObjectKey'] if attributes[:'targetObjectKey']

      raise 'You cannot provide both :targetObjectKey and :target_object_key' if attributes.key?(:'targetObjectKey') && attributes.key?(:'target_object_key')

      self.target_object_key = attributes[:'target_object_key'] if attributes[:'target_object_key']

      self.target_object_name = attributes[:'targetObjectName'] if attributes[:'targetObjectName']

      raise 'You cannot provide both :targetObjectName and :target_object_name' if attributes.key?(:'targetObjectName') && attributes.key?(:'target_object_name')

      self.target_object_name = attributes[:'target_object_name'] if attributes[:'target_object_name']

      self.target_object_type = attributes[:'targetObjectType'] if attributes[:'targetObjectType']

      raise 'You cannot provide both :targetObjectType and :target_object_type' if attributes.key?(:'targetObjectType') && attributes.key?(:'target_object_type')

      self.target_object_type = attributes[:'target_object_type'] if attributes[:'target_object_type']

      self.properties = attributes[:'properties'] if attributes[:'properties']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] recommendation_type Object to be assigned
    def recommendation_type=(recommendation_type)
      # rubocop:disable Style/ConditionalAssignment
      if recommendation_type && !RECOMMENDATION_TYPE_ENUM.include?(recommendation_type)
        OCI.logger.debug("Unknown value for 'recommendation_type' [" + recommendation_type + "]. Mapping to 'RECOMMENDATION_TYPE_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @recommendation_type = RECOMMENDATION_TYPE_UNKNOWN_ENUM_VALUE
      else
        @recommendation_type = recommendation_type
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] recommendation_status Object to be assigned
    def recommendation_status=(recommendation_status)
      # rubocop:disable Style/ConditionalAssignment
      if recommendation_status && !RECOMMENDATION_STATUS_ENUM.include?(recommendation_status)
        OCI.logger.debug("Unknown value for 'recommendation_status' [" + recommendation_status + "]. Mapping to 'RECOMMENDATION_STATUS_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @recommendation_status = RECOMMENDATION_STATUS_UNKNOWN_ENUM_VALUE
      else
        @recommendation_status = recommendation_status
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] source_object_type Object to be assigned
    def source_object_type=(source_object_type)
      # rubocop:disable Style/ConditionalAssignment
      if source_object_type && !SOURCE_OBJECT_TYPE_ENUM.include?(source_object_type)
        OCI.logger.debug("Unknown value for 'source_object_type' [" + source_object_type + "]. Mapping to 'SOURCE_OBJECT_TYPE_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @source_object_type = SOURCE_OBJECT_TYPE_UNKNOWN_ENUM_VALUE
      else
        @source_object_type = source_object_type
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] target_object_type Object to be assigned
    def target_object_type=(target_object_type)
      # rubocop:disable Style/ConditionalAssignment
      if target_object_type && !TARGET_OBJECT_TYPE_ENUM.include?(target_object_type)
        OCI.logger.debug("Unknown value for 'target_object_type' [" + target_object_type + "]. Mapping to 'TARGET_OBJECT_TYPE_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @target_object_type = TARGET_OBJECT_TYPE_UNKNOWN_ENUM_VALUE
      else
        @target_object_type = target_object_type
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        recommendation_key == other.recommendation_key &&
        recommendation_type == other.recommendation_type &&
        recommendation_status == other.recommendation_status &&
        confidence_score == other.confidence_score &&
        source_object_key == other.source_object_key &&
        source_object_name == other.source_object_name &&
        source_object_type == other.source_object_type &&
        target_object_key == other.target_object_key &&
        target_object_name == other.target_object_name &&
        target_object_type == other.target_object_type &&
        properties == other.properties
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
      [recommendation_key, recommendation_type, recommendation_status, confidence_score, source_object_key, source_object_name, source_object_type, target_object_key, target_object_name, target_object_type, properties].hash
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
