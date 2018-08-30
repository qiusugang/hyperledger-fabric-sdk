# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: peer/admin.proto for package 'protos'
# Original file comments:
#
# Copyright IBM Corp. All Rights Reserved.
#
# SPDX-License-Identifier: Apache-2.0
#

require 'grpc'
require 'peer/admin_pb'

module Protos
  module Admin
    # Interface exported by the server.
    class Service

      include GRPC::GenericService

      self.marshal_class_method = :encode
      self.unmarshal_class_method = :decode
      self.service_name = 'protos.Admin'

      rpc :GetStatus, Common::Envelope, ServerStatus
      rpc :StartServer, Common::Envelope, ServerStatus
      rpc :GetModuleLogLevel, Common::Envelope, LogLevelResponse
      rpc :SetModuleLogLevel, Common::Envelope, LogLevelResponse
      rpc :RevertLogLevels, Common::Envelope, Google::Protobuf::Empty
    end

    Stub = Service.rpc_stub_class
  end
end
