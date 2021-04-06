# Copyright (c) 2016, 2021, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # Configuration options for the Oracle Cloud Agent software running on the instance.
  class Core::Models::InstanceAgentConfig
    # Whether Oracle Cloud Agent can gather performance metrics and monitor the instance using the
    # monitoring plugins.
    #
    # These are the monitoring plugins: Compute Instance Monitoring
    # and Custom Logs Monitoring.
    #
    # The monitoring plugins are controlled by this parameter and by the per-plugin
    # configuration in the `pluginsConfig` object.
    #
    # - If `isMonitoringDisabled` is true, all of the monitoring plugins are disabled, regardless of
    # the per-plugin configuration.
    # - If `isMonitoringDisabled` is false, all of the monitoring plugins are enabled. You
    # can optionally disable individual monitoring plugins by providing a value in the `pluginsConfig`
    # object.
    #
    # @return [BOOLEAN]
    attr_accessor :is_monitoring_disabled

    # Whether Oracle Cloud Agent can run all the available management plugins.
    #
    # These are the management plugins: OS Management Service Agent and Compute Instance
    # Run Command.
    #
    # The management plugins are controlled by this parameter and by the per-plugin
    # configuration in the `pluginsConfig` object.
    #
    # - If `isManagementDisabled` is true, all of the management plugins are disabled, regardless of
    # the per-plugin configuration.
    # - If `isManagementDisabled` is false, all of the management plugins are enabled. You
    # can optionally disable individual management plugins by providing a value in the `pluginsConfig`
    # object.
    #
    # @return [BOOLEAN]
    attr_accessor :is_management_disabled

    # Whether Oracle Cloud Agent can run all of the available plugins.
    # This includes the management and monitoring plugins.
    #
    # For more information about the available plugins, see
    # [Managing Plugins with Oracle Cloud Agent](https://docs.cloud.oracle.com/iaas/Content/Compute/Tasks/manage-plugins.htm).
    #
    # @return [BOOLEAN]
    attr_accessor :are_all_plugins_disabled

    # The configuration of plugins associated with this instance.
    # @return [Array<OCI::Core::Models::InstanceAgentPluginConfigDetails>]
    attr_accessor :plugins_config

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'is_monitoring_disabled': :'isMonitoringDisabled',
        'is_management_disabled': :'isManagementDisabled',
        'are_all_plugins_disabled': :'areAllPluginsDisabled',
        'plugins_config': :'pluginsConfig'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'is_monitoring_disabled': :'BOOLEAN',
        'is_management_disabled': :'BOOLEAN',
        'are_all_plugins_disabled': :'BOOLEAN',
        'plugins_config': :'Array<OCI::Core::Models::InstanceAgentPluginConfigDetails>'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [BOOLEAN] :is_monitoring_disabled The value to assign to the {#is_monitoring_disabled} property
    # @option attributes [BOOLEAN] :is_management_disabled The value to assign to the {#is_management_disabled} property
    # @option attributes [BOOLEAN] :are_all_plugins_disabled The value to assign to the {#are_all_plugins_disabled} property
    # @option attributes [Array<OCI::Core::Models::InstanceAgentPluginConfigDetails>] :plugins_config The value to assign to the {#plugins_config} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.is_monitoring_disabled = attributes[:'isMonitoringDisabled'] unless attributes[:'isMonitoringDisabled'].nil?
      self.is_monitoring_disabled = false if is_monitoring_disabled.nil? && !attributes.key?(:'isMonitoringDisabled') # rubocop:disable Style/StringLiterals

      raise 'You cannot provide both :isMonitoringDisabled and :is_monitoring_disabled' if attributes.key?(:'isMonitoringDisabled') && attributes.key?(:'is_monitoring_disabled')

      self.is_monitoring_disabled = attributes[:'is_monitoring_disabled'] unless attributes[:'is_monitoring_disabled'].nil?
      self.is_monitoring_disabled = false if is_monitoring_disabled.nil? && !attributes.key?(:'isMonitoringDisabled') && !attributes.key?(:'is_monitoring_disabled') # rubocop:disable Style/StringLiterals

      self.is_management_disabled = attributes[:'isManagementDisabled'] unless attributes[:'isManagementDisabled'].nil?
      self.is_management_disabled = false if is_management_disabled.nil? && !attributes.key?(:'isManagementDisabled') # rubocop:disable Style/StringLiterals

      raise 'You cannot provide both :isManagementDisabled and :is_management_disabled' if attributes.key?(:'isManagementDisabled') && attributes.key?(:'is_management_disabled')

      self.is_management_disabled = attributes[:'is_management_disabled'] unless attributes[:'is_management_disabled'].nil?
      self.is_management_disabled = false if is_management_disabled.nil? && !attributes.key?(:'isManagementDisabled') && !attributes.key?(:'is_management_disabled') # rubocop:disable Style/StringLiterals

      self.are_all_plugins_disabled = attributes[:'areAllPluginsDisabled'] unless attributes[:'areAllPluginsDisabled'].nil?
      self.are_all_plugins_disabled = false if are_all_plugins_disabled.nil? && !attributes.key?(:'areAllPluginsDisabled') # rubocop:disable Style/StringLiterals

      raise 'You cannot provide both :areAllPluginsDisabled and :are_all_plugins_disabled' if attributes.key?(:'areAllPluginsDisabled') && attributes.key?(:'are_all_plugins_disabled')

      self.are_all_plugins_disabled = attributes[:'are_all_plugins_disabled'] unless attributes[:'are_all_plugins_disabled'].nil?
      self.are_all_plugins_disabled = false if are_all_plugins_disabled.nil? && !attributes.key?(:'areAllPluginsDisabled') && !attributes.key?(:'are_all_plugins_disabled') # rubocop:disable Style/StringLiterals

      self.plugins_config = attributes[:'pluginsConfig'] if attributes[:'pluginsConfig']

      raise 'You cannot provide both :pluginsConfig and :plugins_config' if attributes.key?(:'pluginsConfig') && attributes.key?(:'plugins_config')

      self.plugins_config = attributes[:'plugins_config'] if attributes[:'plugins_config']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        is_monitoring_disabled == other.is_monitoring_disabled &&
        is_management_disabled == other.is_management_disabled &&
        are_all_plugins_disabled == other.are_all_plugins_disabled &&
        plugins_config == other.plugins_config
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
      [is_monitoring_disabled, is_management_disabled, are_all_plugins_disabled, plugins_config].hash
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
