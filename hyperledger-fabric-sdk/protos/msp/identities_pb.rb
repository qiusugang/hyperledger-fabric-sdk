# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: msp/identities.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "msp.SerializedIdentity" do
    optional :mspid, :string, 1
    optional :id_bytes, :bytes, 2
  end
  add_message "msp.SerializedIdemixIdentity" do
    optional :nym_x, :bytes, 1
    optional :nym_y, :bytes, 2
    optional :ou, :bytes, 3
    optional :role, :bytes, 4
    optional :proof, :bytes, 5
  end
end

module Msp
  SerializedIdentity = Google::Protobuf::DescriptorPool.generated_pool.lookup("msp.SerializedIdentity").msgclass
  SerializedIdemixIdentity = Google::Protobuf::DescriptorPool.generated_pool.lookup("msp.SerializedIdemixIdentity").msgclass
end
