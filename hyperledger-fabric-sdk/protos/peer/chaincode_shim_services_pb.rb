# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: peer/chaincode_shim.proto for package 'protos'
# Original file comments:
#
# Copyright IBM Corp. All Rights Reserved.
#
# SPDX-License-Identifier: Apache-2.0
#

require 'grpc'
require 'peer/chaincode_shim_pb'

module Protos
  module ChaincodeSupport
    # Interface that provides support to chaincode execution. ChaincodeContext
    # provides the context necessary for the server to respond appropriately.
    class Service

      include GRPC::GenericService

      self.marshal_class_method = :encode
      self.unmarshal_class_method = :decode
      self.service_name = 'protos.ChaincodeSupport'

      rpc :Register, stream(ChaincodeMessage), stream(ChaincodeMessage)
    end

    Stub = Service.rpc_stub_class
  end
end
