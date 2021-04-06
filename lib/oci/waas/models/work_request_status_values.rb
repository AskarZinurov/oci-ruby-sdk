# Copyright (c) 2016, 2021, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

module OCI
  module Waas::Models
    WORK_REQUEST_STATUS_VALUES_ENUM = [
      WORK_REQUEST_STATUS_VALUES_ACCEPTED = 'ACCEPTED'.freeze,
      WORK_REQUEST_STATUS_VALUES_IN_PROGRESS = 'IN_PROGRESS'.freeze,
      WORK_REQUEST_STATUS_VALUES_FAILED = 'FAILED'.freeze,
      WORK_REQUEST_STATUS_VALUES_SUCCEEDED = 'SUCCEEDED'.freeze,
      WORK_REQUEST_STATUS_VALUES_CANCELING = 'CANCELING'.freeze,
      WORK_REQUEST_STATUS_VALUES_CANCELED = 'CANCELED'.freeze
    ].freeze
  end
end
