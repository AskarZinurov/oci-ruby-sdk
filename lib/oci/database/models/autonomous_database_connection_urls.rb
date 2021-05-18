# Copyright (c) 2016, 2021, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # The URLs for accessing Oracle Application Express (APEX) and SQL Developer Web with a browser from a Compute instance within your VCN or that has a direct connection to your VCN. Note that these URLs are provided by the console only for databases on [dedicated Exadata infrastructure](https://docs.cloud.oracle.com/Content/Database/Concepts/adbddoverview.htm).
  #
  # Example: `{\"sqlDevWebUrl\": \"https://<hostname>/ords...\", \"apexUrl\", \"https://<hostname>/ords...\"}`
  #
  class Database::Models::AutonomousDatabaseConnectionUrls
    # Oracle SQL Developer Web URL.
    # @return [String]
    attr_accessor :sql_dev_web_url

    # Oracle Application Express (APEX) URL.
    # @return [String]
    attr_accessor :apex_url

    # Oracle Machine Learning user management URL.
    # @return [String]
    attr_accessor :machine_learning_user_management_url

    # The URL of the Graph Studio for the Autonomous Database.
    # @return [String]
    attr_accessor :graph_studio_url

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'sql_dev_web_url': :'sqlDevWebUrl',
        'apex_url': :'apexUrl',
        'machine_learning_user_management_url': :'machineLearningUserManagementUrl',
        'graph_studio_url': :'graphStudioUrl'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'sql_dev_web_url': :'String',
        'apex_url': :'String',
        'machine_learning_user_management_url': :'String',
        'graph_studio_url': :'String'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :sql_dev_web_url The value to assign to the {#sql_dev_web_url} property
    # @option attributes [String] :apex_url The value to assign to the {#apex_url} property
    # @option attributes [String] :machine_learning_user_management_url The value to assign to the {#machine_learning_user_management_url} property
    # @option attributes [String] :graph_studio_url The value to assign to the {#graph_studio_url} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.sql_dev_web_url = attributes[:'sqlDevWebUrl'] if attributes[:'sqlDevWebUrl']

      raise 'You cannot provide both :sqlDevWebUrl and :sql_dev_web_url' if attributes.key?(:'sqlDevWebUrl') && attributes.key?(:'sql_dev_web_url')

      self.sql_dev_web_url = attributes[:'sql_dev_web_url'] if attributes[:'sql_dev_web_url']

      self.apex_url = attributes[:'apexUrl'] if attributes[:'apexUrl']

      raise 'You cannot provide both :apexUrl and :apex_url' if attributes.key?(:'apexUrl') && attributes.key?(:'apex_url')

      self.apex_url = attributes[:'apex_url'] if attributes[:'apex_url']

      self.machine_learning_user_management_url = attributes[:'machineLearningUserManagementUrl'] if attributes[:'machineLearningUserManagementUrl']

      raise 'You cannot provide both :machineLearningUserManagementUrl and :machine_learning_user_management_url' if attributes.key?(:'machineLearningUserManagementUrl') && attributes.key?(:'machine_learning_user_management_url')

      self.machine_learning_user_management_url = attributes[:'machine_learning_user_management_url'] if attributes[:'machine_learning_user_management_url']

      self.graph_studio_url = attributes[:'graphStudioUrl'] if attributes[:'graphStudioUrl']

      raise 'You cannot provide both :graphStudioUrl and :graph_studio_url' if attributes.key?(:'graphStudioUrl') && attributes.key?(:'graph_studio_url')

      self.graph_studio_url = attributes[:'graph_studio_url'] if attributes[:'graph_studio_url']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        sql_dev_web_url == other.sql_dev_web_url &&
        apex_url == other.apex_url &&
        machine_learning_user_management_url == other.machine_learning_user_management_url &&
        graph_studio_url == other.graph_studio_url
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
      [sql_dev_web_url, apex_url, machine_learning_user_management_url, graph_studio_url].hash
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
