# Copyright (c) 2016, 2021, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # The update application details.
  #
  class DataFlow::Models::UpdateApplicationDetails
    LANGUAGE_ENUM = [
      LANGUAGE_SCALA = 'SCALA'.freeze,
      LANGUAGE_JAVA = 'JAVA'.freeze,
      LANGUAGE_PYTHON = 'PYTHON'.freeze,
      LANGUAGE_SQL = 'SQL'.freeze
    ].freeze

    # The class for the application.
    #
    # @return [String]
    attr_accessor :class_name

    # An Oracle Cloud Infrastructure URI of the file containing the application to execute.
    # See https://docs.cloud.oracle.com/iaas/Content/API/SDKDocs/hdfsconnector.htm#uriformat.
    #
    # @return [String]
    attr_accessor :file_uri

    # The Spark version utilized to run the application.
    #
    # @return [String]
    attr_accessor :spark_version

    # The Spark language.
    #
    # @return [String]
    attr_reader :language

    # An Oracle Cloud Infrastructure URI of an archive.zip file containing custom dependencies that may be used to support the execution a Python, Java, or Scala application.
    # See https://docs.cloud.oracle.com/iaas/Content/API/SDKDocs/hdfsconnector.htm#uriformat.
    #
    # @return [String]
    attr_accessor :archive_uri

    # The arguments passed to the running application as command line arguments.  An argument is
    # either a plain text or a placeholder. Placeholders are replaced using values from the parameters
    # map.  Each placeholder specified must be represented in the parameters map else the request
    # (POST or PUT) will fail with a HTTP 400 status code.  Placeholders are specified as
    # `Service Api Spec`, where `name` is the name of the parameter.
    # Example:  `[ \"--input\", \"${input_file}\", \"--name\", \"John Doe\" ]`
    # If \"input_file\" has a value of \"mydata.xml\", then the value above will be translated to
    # `--input mydata.xml --name \"John Doe\"`
    #
    # @return [Array<String>]
    attr_accessor :arguments

    # The Spark configuration passed to the running process.
    # See https://spark.apache.org/docs/latest/configuration.html#available-properties.
    # Example: { \"spark.app.name\" : \"My App Name\", \"spark.shuffle.io.maxRetries\" : \"4\" }
    # Note: Not all Spark properties are permitted to be set.  Attempting to set a property that is
    # not allowed to be overwritten will cause a 400 status to be returned.
    #
    # @return [Hash<String, String>]
    attr_accessor :configuration

    # Defined tags for this resource. Each key is predefined and scoped to a namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm).
    # Example: `{\"Operations\": {\"CostCenter\": \"42\"}}`
    #
    # @return [Hash<String, Hash<String, Object>>]
    attr_accessor :defined_tags

    # A user-friendly description. Avoid entering confidential information.
    #
    # @return [String]
    attr_accessor :description

    # A user-friendly name. It does not have to be unique. Avoid entering confidential information.
    #
    # @return [String]
    attr_accessor :display_name

    # The VM shape for the driver. Sets the driver cores and memory.
    #
    # @return [String]
    attr_accessor :driver_shape

    # The input used for spark-submit command. For more details see https://spark.apache.org/docs/latest/submitting-applications.html#launching-applications-with-spark-submit.
    # Supported options include ``--class``, ``--file``, ``--jars``, ``--conf``, ``--py-files``, and main application file with arguments.
    # Example: ``--jars oci://path/to/a.jar,oci://path/to/b.jar --files oci://path/to/a.json,oci://path/to/b.csv --py-files oci://path/to/a.py,oci://path/to/b.py --conf spark.sql.crossJoin.enabled=true --class org.apache.spark.examples.SparkPi oci://path/to/main.jar 10``
    # Note: If execute is specified together with applicationId, className, configuration, fileUri, language, arguments, parameters during application create/update, or run create/submit,
    # Data Flow service will use derived information from execute input only.
    #
    # @return [String]
    attr_accessor :execute

    # The VM shape for the executors. Sets the executor cores and memory.
    #
    # @return [String]
    attr_accessor :executor_shape

    # Free-form tags for this resource. Each tag is a simple key-value pair with no predefined name, type, or namespace.
    # For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm).
    # Example: `{\"Department\": \"Finance\"}`
    #
    # @return [Hash<String, String>]
    attr_accessor :freeform_tags

    # An Oracle Cloud Infrastructure URI of the bucket where the Spark job logs are to be uploaded.
    # See https://docs.cloud.oracle.com/iaas/Content/API/SDKDocs/hdfsconnector.htm#uriformat.
    #
    # @return [String]
    attr_accessor :logs_bucket_uri

    # The OCID of OCI Hive Metastore.
    #
    # @return [String]
    attr_accessor :metastore_id

    # The number of executor VMs requested.
    #
    # @return [Integer]
    attr_accessor :num_executors

    # An array of name/value pairs used to fill placeholders found in properties like
    # `Application.arguments`.  The name must be a string of one or more word characters
    # (a-z, A-Z, 0-9, _).  The value can be a string of 0 or more characters of any kind.
    # Example:  [ { name: \"iterations\", value: \"10\"}, { name: \"input_file\", value: \"mydata.xml\" }, { name: \"variable_x\", value: \"${x}\"} ]
    #
    # @return [Array<OCI::DataFlow::Models::ApplicationParameter>]
    attr_accessor :parameters

    # The OCID of a private endpoint.
    #
    # @return [String]
    attr_accessor :private_endpoint_id

    # An Oracle Cloud Infrastructure URI of the bucket to be used as default warehouse directory
    # for BATCH SQL runs.
    # See https://docs.cloud.oracle.com/iaas/Content/API/SDKDocs/hdfsconnector.htm#uriformat.
    #
    # @return [String]
    attr_accessor :warehouse_bucket_uri

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'class_name': :'className',
        'file_uri': :'fileUri',
        'spark_version': :'sparkVersion',
        'language': :'language',
        'archive_uri': :'archiveUri',
        'arguments': :'arguments',
        'configuration': :'configuration',
        'defined_tags': :'definedTags',
        'description': :'description',
        'display_name': :'displayName',
        'driver_shape': :'driverShape',
        'execute': :'execute',
        'executor_shape': :'executorShape',
        'freeform_tags': :'freeformTags',
        'logs_bucket_uri': :'logsBucketUri',
        'metastore_id': :'metastoreId',
        'num_executors': :'numExecutors',
        'parameters': :'parameters',
        'private_endpoint_id': :'privateEndpointId',
        'warehouse_bucket_uri': :'warehouseBucketUri'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'class_name': :'String',
        'file_uri': :'String',
        'spark_version': :'String',
        'language': :'String',
        'archive_uri': :'String',
        'arguments': :'Array<String>',
        'configuration': :'Hash<String, String>',
        'defined_tags': :'Hash<String, Hash<String, Object>>',
        'description': :'String',
        'display_name': :'String',
        'driver_shape': :'String',
        'execute': :'String',
        'executor_shape': :'String',
        'freeform_tags': :'Hash<String, String>',
        'logs_bucket_uri': :'String',
        'metastore_id': :'String',
        'num_executors': :'Integer',
        'parameters': :'Array<OCI::DataFlow::Models::ApplicationParameter>',
        'private_endpoint_id': :'String',
        'warehouse_bucket_uri': :'String'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :class_name The value to assign to the {#class_name} property
    # @option attributes [String] :file_uri The value to assign to the {#file_uri} property
    # @option attributes [String] :spark_version The value to assign to the {#spark_version} property
    # @option attributes [String] :language The value to assign to the {#language} property
    # @option attributes [String] :archive_uri The value to assign to the {#archive_uri} property
    # @option attributes [Array<String>] :arguments The value to assign to the {#arguments} property
    # @option attributes [Hash<String, String>] :configuration The value to assign to the {#configuration} property
    # @option attributes [Hash<String, Hash<String, Object>>] :defined_tags The value to assign to the {#defined_tags} property
    # @option attributes [String] :description The value to assign to the {#description} property
    # @option attributes [String] :display_name The value to assign to the {#display_name} property
    # @option attributes [String] :driver_shape The value to assign to the {#driver_shape} property
    # @option attributes [String] :execute The value to assign to the {#execute} property
    # @option attributes [String] :executor_shape The value to assign to the {#executor_shape} property
    # @option attributes [Hash<String, String>] :freeform_tags The value to assign to the {#freeform_tags} property
    # @option attributes [String] :logs_bucket_uri The value to assign to the {#logs_bucket_uri} property
    # @option attributes [String] :metastore_id The value to assign to the {#metastore_id} property
    # @option attributes [Integer] :num_executors The value to assign to the {#num_executors} property
    # @option attributes [Array<OCI::DataFlow::Models::ApplicationParameter>] :parameters The value to assign to the {#parameters} property
    # @option attributes [String] :private_endpoint_id The value to assign to the {#private_endpoint_id} property
    # @option attributes [String] :warehouse_bucket_uri The value to assign to the {#warehouse_bucket_uri} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.class_name = attributes[:'className'] if attributes[:'className']

      raise 'You cannot provide both :className and :class_name' if attributes.key?(:'className') && attributes.key?(:'class_name')

      self.class_name = attributes[:'class_name'] if attributes[:'class_name']

      self.file_uri = attributes[:'fileUri'] if attributes[:'fileUri']

      raise 'You cannot provide both :fileUri and :file_uri' if attributes.key?(:'fileUri') && attributes.key?(:'file_uri')

      self.file_uri = attributes[:'file_uri'] if attributes[:'file_uri']

      self.spark_version = attributes[:'sparkVersion'] if attributes[:'sparkVersion']

      raise 'You cannot provide both :sparkVersion and :spark_version' if attributes.key?(:'sparkVersion') && attributes.key?(:'spark_version')

      self.spark_version = attributes[:'spark_version'] if attributes[:'spark_version']

      self.language = attributes[:'language'] if attributes[:'language']

      self.archive_uri = attributes[:'archiveUri'] if attributes[:'archiveUri']

      raise 'You cannot provide both :archiveUri and :archive_uri' if attributes.key?(:'archiveUri') && attributes.key?(:'archive_uri')

      self.archive_uri = attributes[:'archive_uri'] if attributes[:'archive_uri']

      self.arguments = attributes[:'arguments'] if attributes[:'arguments']

      self.configuration = attributes[:'configuration'] if attributes[:'configuration']

      self.defined_tags = attributes[:'definedTags'] if attributes[:'definedTags']

      raise 'You cannot provide both :definedTags and :defined_tags' if attributes.key?(:'definedTags') && attributes.key?(:'defined_tags')

      self.defined_tags = attributes[:'defined_tags'] if attributes[:'defined_tags']

      self.description = attributes[:'description'] if attributes[:'description']

      self.display_name = attributes[:'displayName'] if attributes[:'displayName']

      raise 'You cannot provide both :displayName and :display_name' if attributes.key?(:'displayName') && attributes.key?(:'display_name')

      self.display_name = attributes[:'display_name'] if attributes[:'display_name']

      self.driver_shape = attributes[:'driverShape'] if attributes[:'driverShape']

      raise 'You cannot provide both :driverShape and :driver_shape' if attributes.key?(:'driverShape') && attributes.key?(:'driver_shape')

      self.driver_shape = attributes[:'driver_shape'] if attributes[:'driver_shape']

      self.execute = attributes[:'execute'] if attributes[:'execute']

      self.executor_shape = attributes[:'executorShape'] if attributes[:'executorShape']

      raise 'You cannot provide both :executorShape and :executor_shape' if attributes.key?(:'executorShape') && attributes.key?(:'executor_shape')

      self.executor_shape = attributes[:'executor_shape'] if attributes[:'executor_shape']

      self.freeform_tags = attributes[:'freeformTags'] if attributes[:'freeformTags']

      raise 'You cannot provide both :freeformTags and :freeform_tags' if attributes.key?(:'freeformTags') && attributes.key?(:'freeform_tags')

      self.freeform_tags = attributes[:'freeform_tags'] if attributes[:'freeform_tags']

      self.logs_bucket_uri = attributes[:'logsBucketUri'] if attributes[:'logsBucketUri']

      raise 'You cannot provide both :logsBucketUri and :logs_bucket_uri' if attributes.key?(:'logsBucketUri') && attributes.key?(:'logs_bucket_uri')

      self.logs_bucket_uri = attributes[:'logs_bucket_uri'] if attributes[:'logs_bucket_uri']

      self.metastore_id = attributes[:'metastoreId'] if attributes[:'metastoreId']

      raise 'You cannot provide both :metastoreId and :metastore_id' if attributes.key?(:'metastoreId') && attributes.key?(:'metastore_id')

      self.metastore_id = attributes[:'metastore_id'] if attributes[:'metastore_id']

      self.num_executors = attributes[:'numExecutors'] if attributes[:'numExecutors']

      raise 'You cannot provide both :numExecutors and :num_executors' if attributes.key?(:'numExecutors') && attributes.key?(:'num_executors')

      self.num_executors = attributes[:'num_executors'] if attributes[:'num_executors']

      self.parameters = attributes[:'parameters'] if attributes[:'parameters']

      self.private_endpoint_id = attributes[:'privateEndpointId'] if attributes[:'privateEndpointId']

      raise 'You cannot provide both :privateEndpointId and :private_endpoint_id' if attributes.key?(:'privateEndpointId') && attributes.key?(:'private_endpoint_id')

      self.private_endpoint_id = attributes[:'private_endpoint_id'] if attributes[:'private_endpoint_id']

      self.warehouse_bucket_uri = attributes[:'warehouseBucketUri'] if attributes[:'warehouseBucketUri']

      raise 'You cannot provide both :warehouseBucketUri and :warehouse_bucket_uri' if attributes.key?(:'warehouseBucketUri') && attributes.key?(:'warehouse_bucket_uri')

      self.warehouse_bucket_uri = attributes[:'warehouse_bucket_uri'] if attributes[:'warehouse_bucket_uri']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] language Object to be assigned
    def language=(language)
      raise "Invalid value for 'language': this must be one of the values in LANGUAGE_ENUM." if language && !LANGUAGE_ENUM.include?(language)

      @language = language
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        class_name == other.class_name &&
        file_uri == other.file_uri &&
        spark_version == other.spark_version &&
        language == other.language &&
        archive_uri == other.archive_uri &&
        arguments == other.arguments &&
        configuration == other.configuration &&
        defined_tags == other.defined_tags &&
        description == other.description &&
        display_name == other.display_name &&
        driver_shape == other.driver_shape &&
        execute == other.execute &&
        executor_shape == other.executor_shape &&
        freeform_tags == other.freeform_tags &&
        logs_bucket_uri == other.logs_bucket_uri &&
        metastore_id == other.metastore_id &&
        num_executors == other.num_executors &&
        parameters == other.parameters &&
        private_endpoint_id == other.private_endpoint_id &&
        warehouse_bucket_uri == other.warehouse_bucket_uri
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
      [class_name, file_uri, spark_version, language, archive_uri, arguments, configuration, defined_tags, description, display_name, driver_shape, execute, executor_shape, freeform_tags, logs_bucket_uri, metastore_id, num_executors, parameters, private_endpoint_id, warehouse_bucket_uri].hash
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
