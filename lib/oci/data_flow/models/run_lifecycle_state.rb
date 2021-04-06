# Copyright (c) 2016, 2021, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

module OCI
  module DataFlow::Models
    RUN_LIFECYCLE_STATE_ENUM = [
      RUN_LIFECYCLE_STATE_ACCEPTED = 'ACCEPTED'.freeze,
      RUN_LIFECYCLE_STATE_IN_PROGRESS = 'IN_PROGRESS'.freeze,
      RUN_LIFECYCLE_STATE_CANCELING = 'CANCELING'.freeze,
      RUN_LIFECYCLE_STATE_CANCELED = 'CANCELED'.freeze,
      RUN_LIFECYCLE_STATE_FAILED = 'FAILED'.freeze,
      RUN_LIFECYCLE_STATE_SUCCEEDED = 'SUCCEEDED'.freeze
    ].freeze
  end
end
