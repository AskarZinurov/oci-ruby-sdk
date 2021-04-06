# Copyright (c) 2016, 2021, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # Details gathered during the creation of the support ticket.
  #
  # **Caution:** Avoid using any confidential information when you supply string values using the API.
  #
  class Cims::Models::CreateIncident
    PROBLEM_TYPE_ENUM = [
      PROBLEM_TYPE_LIMIT = 'LIMIT'.freeze,
      PROBLEM_TYPE_LEGACY_LIMIT = 'LEGACY_LIMIT'.freeze,
      PROBLEM_TYPE_TECH = 'TECH'.freeze,
      PROBLEM_TYPE_ACCOUNT = 'ACCOUNT'.freeze
    ].freeze

    # **[Required]** The OCID of the tenancy.
    # @return [String]
    attr_accessor :compartment_id

    # This attribute is required.
    # @return [OCI::Cims::Models::CreateTicketDetails]
    attr_accessor :ticket

    # The Customer Support Identifier number for the support account.
    # @return [String]
    attr_accessor :csi

    # **[Required]** The kind of support ticket, such as a technical issue request.
    # @return [String]
    attr_reader :problem_type

    # The list of contacts.
    # @return [Array<OCI::Cims::Models::Contact>]
    attr_accessor :contacts

    # The incident referrer. This value is often the URL that the customer used when creating the support ticket.
    # @return [String]
    attr_accessor :referrer

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'compartment_id': :'compartmentId',
        'ticket': :'ticket',
        'csi': :'csi',
        'problem_type': :'problemType',
        'contacts': :'contacts',
        'referrer': :'referrer'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'compartment_id': :'String',
        'ticket': :'OCI::Cims::Models::CreateTicketDetails',
        'csi': :'String',
        'problem_type': :'String',
        'contacts': :'Array<OCI::Cims::Models::Contact>',
        'referrer': :'String'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :compartment_id The value to assign to the {#compartment_id} property
    # @option attributes [OCI::Cims::Models::CreateTicketDetails] :ticket The value to assign to the {#ticket} property
    # @option attributes [String] :csi The value to assign to the {#csi} property
    # @option attributes [String] :problem_type The value to assign to the {#problem_type} property
    # @option attributes [Array<OCI::Cims::Models::Contact>] :contacts The value to assign to the {#contacts} property
    # @option attributes [String] :referrer The value to assign to the {#referrer} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.compartment_id = attributes[:'compartmentId'] if attributes[:'compartmentId']

      raise 'You cannot provide both :compartmentId and :compartment_id' if attributes.key?(:'compartmentId') && attributes.key?(:'compartment_id')

      self.compartment_id = attributes[:'compartment_id'] if attributes[:'compartment_id']

      self.ticket = attributes[:'ticket'] if attributes[:'ticket']

      self.csi = attributes[:'csi'] if attributes[:'csi']

      self.problem_type = attributes[:'problemType'] if attributes[:'problemType']

      raise 'You cannot provide both :problemType and :problem_type' if attributes.key?(:'problemType') && attributes.key?(:'problem_type')

      self.problem_type = attributes[:'problem_type'] if attributes[:'problem_type']

      self.contacts = attributes[:'contacts'] if attributes[:'contacts']

      self.referrer = attributes[:'referrer'] if attributes[:'referrer']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] problem_type Object to be assigned
    def problem_type=(problem_type)
      raise "Invalid value for 'problem_type': this must be one of the values in PROBLEM_TYPE_ENUM." if problem_type && !PROBLEM_TYPE_ENUM.include?(problem_type)

      @problem_type = problem_type
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        compartment_id == other.compartment_id &&
        ticket == other.ticket &&
        csi == other.csi &&
        problem_type == other.problem_type &&
        contacts == other.contacts &&
        referrer == other.referrer
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
      [compartment_id, ticket, csi, problem_type, contacts, referrer].hash
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
