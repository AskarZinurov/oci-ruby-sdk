# Copyright (c) 2016, 2021, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

module OCI
  module CloudGuard::Models
    CONDITION_OPERATOR_NAME_ENUM = [
      CONDITION_OPERATOR_NAME_AND = 'AND'.freeze,
      CONDITION_OPERATOR_NAME_OR = 'OR'.freeze,
      CONDITION_OPERATOR_NAME_IN = 'IN'.freeze,
      CONDITION_OPERATOR_NAME_NOT_IN = 'NOT_IN'.freeze,
      CONDITION_OPERATOR_NAME_EQUALS = 'EQUALS'.freeze,
      CONDITION_OPERATOR_NAME_NOT_EQUALS = 'NOT_EQUALS'.freeze,
      CONDITION_OPERATOR_NAME_LESS_THAN = 'LESS_THAN'.freeze,
      CONDITION_OPERATOR_NAME_GREATER_THAN = 'GREATER_THAN'.freeze,
      CONDITION_OPERATOR_NAME_RANGE = 'RANGE'.freeze
    ].freeze
  end
end
