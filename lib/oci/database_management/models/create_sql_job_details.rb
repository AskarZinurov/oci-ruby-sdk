# Copyright (c) 2016, 2021, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'
require_relative 'create_job_details'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # The details specific to the SQL job request.
  class DatabaseManagement::Models::CreateSqlJobDetails < DatabaseManagement::Models::CreateJobDetails
    # The SQL text to be executed as part of the job.
    # @return [String]
    attr_accessor :sql_text

    # @return [String]
    attr_accessor :sql_type

    # **[Required]** The SQL operation type.
    # @return [String]
    attr_accessor :operation_type

    # The database user name used to execute the SQL job. If the job is being executed on a
    # Managed Database Group, then the user name should exist on all the databases in the
    # group with the same password.
    #
    # @return [String]
    attr_accessor :user_name

    # The password for the database user name used to execute the SQL job.
    # @return [String]
    attr_accessor :password

    # The role of the database user. Indicates whether the database user is a normal user or sysdba.
    # @return [String]
    attr_accessor :role

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'name': :'name',
        'description': :'description',
        'compartment_id': :'compartmentId',
        'managed_database_group_id': :'managedDatabaseGroupId',
        'managed_database_id': :'managedDatabaseId',
        'database_sub_type': :'databaseSubType',
        'schedule_type': :'scheduleType',
        'job_type': :'jobType',
        'timeout': :'timeout',
        'result_location': :'resultLocation',
        'sql_text': :'sqlText',
        'sql_type': :'sqlType',
        'operation_type': :'operationType',
        'user_name': :'userName',
        'password': :'password',
        'role': :'role'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'name': :'String',
        'description': :'String',
        'compartment_id': :'String',
        'managed_database_group_id': :'String',
        'managed_database_id': :'String',
        'database_sub_type': :'String',
        'schedule_type': :'String',
        'job_type': :'String',
        'timeout': :'String',
        'result_location': :'OCI::DatabaseManagement::Models::JobExecutionResultLocation',
        'sql_text': :'String',
        'sql_type': :'String',
        'operation_type': :'String',
        'user_name': :'String',
        'password': :'String',
        'role': :'String'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :name The value to assign to the {OCI::DatabaseManagement::Models::CreateJobDetails#name #name} proprety
    # @option attributes [String] :description The value to assign to the {OCI::DatabaseManagement::Models::CreateJobDetails#description #description} proprety
    # @option attributes [String] :compartment_id The value to assign to the {OCI::DatabaseManagement::Models::CreateJobDetails#compartment_id #compartment_id} proprety
    # @option attributes [String] :managed_database_group_id The value to assign to the {OCI::DatabaseManagement::Models::CreateJobDetails#managed_database_group_id #managed_database_group_id} proprety
    # @option attributes [String] :managed_database_id The value to assign to the {OCI::DatabaseManagement::Models::CreateJobDetails#managed_database_id #managed_database_id} proprety
    # @option attributes [String] :database_sub_type The value to assign to the {OCI::DatabaseManagement::Models::CreateJobDetails#database_sub_type #database_sub_type} proprety
    # @option attributes [String] :schedule_type The value to assign to the {OCI::DatabaseManagement::Models::CreateJobDetails#schedule_type #schedule_type} proprety
    # @option attributes [String] :timeout The value to assign to the {OCI::DatabaseManagement::Models::CreateJobDetails#timeout #timeout} proprety
    # @option attributes [OCI::DatabaseManagement::Models::JobExecutionResultLocation] :result_location The value to assign to the {OCI::DatabaseManagement::Models::CreateJobDetails#result_location #result_location} proprety
    # @option attributes [String] :sql_text The value to assign to the {#sql_text} property
    # @option attributes [String] :sql_type The value to assign to the {#sql_type} property
    # @option attributes [String] :operation_type The value to assign to the {#operation_type} property
    # @option attributes [String] :user_name The value to assign to the {#user_name} property
    # @option attributes [String] :password The value to assign to the {#password} property
    # @option attributes [String] :role The value to assign to the {#role} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      attributes['jobType'] = 'SQL'

      super(attributes)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.sql_text = attributes[:'sqlText'] if attributes[:'sqlText']

      raise 'You cannot provide both :sqlText and :sql_text' if attributes.key?(:'sqlText') && attributes.key?(:'sql_text')

      self.sql_text = attributes[:'sql_text'] if attributes[:'sql_text']

      self.sql_type = attributes[:'sqlType'] if attributes[:'sqlType']

      raise 'You cannot provide both :sqlType and :sql_type' if attributes.key?(:'sqlType') && attributes.key?(:'sql_type')

      self.sql_type = attributes[:'sql_type'] if attributes[:'sql_type']

      self.operation_type = attributes[:'operationType'] if attributes[:'operationType']

      raise 'You cannot provide both :operationType and :operation_type' if attributes.key?(:'operationType') && attributes.key?(:'operation_type')

      self.operation_type = attributes[:'operation_type'] if attributes[:'operation_type']

      self.user_name = attributes[:'userName'] if attributes[:'userName']

      raise 'You cannot provide both :userName and :user_name' if attributes.key?(:'userName') && attributes.key?(:'user_name')

      self.user_name = attributes[:'user_name'] if attributes[:'user_name']

      self.password = attributes[:'password'] if attributes[:'password']

      self.role = attributes[:'role'] if attributes[:'role']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        name == other.name &&
        description == other.description &&
        compartment_id == other.compartment_id &&
        managed_database_group_id == other.managed_database_group_id &&
        managed_database_id == other.managed_database_id &&
        database_sub_type == other.database_sub_type &&
        schedule_type == other.schedule_type &&
        job_type == other.job_type &&
        timeout == other.timeout &&
        result_location == other.result_location &&
        sql_text == other.sql_text &&
        sql_type == other.sql_type &&
        operation_type == other.operation_type &&
        user_name == other.user_name &&
        password == other.password &&
        role == other.role
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
      [name, description, compartment_id, managed_database_group_id, managed_database_id, database_sub_type, schedule_type, job_type, timeout, result_location, sql_text, sql_type, operation_type, user_name, password, role].hash
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
