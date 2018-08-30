# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: peer/transaction.proto

require 'google/protobuf'

require 'google/protobuf/timestamp_pb'
require 'peer/proposal_response_pb'
require 'common/common_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "protos.SignedTransaction" do
    optional :transaction_bytes, :bytes, 1
    optional :signature, :bytes, 2
  end
  add_message "protos.ProcessedTransaction" do
    optional :transactionEnvelope, :message, 1, "common.Envelope"
    optional :validationCode, :int32, 2
  end
  add_message "protos.Transaction" do
    repeated :actions, :message, 1, "protos.TransactionAction"
  end
  add_message "protos.TransactionAction" do
    optional :header, :bytes, 1
    optional :payload, :bytes, 2
  end
  add_message "protos.ChaincodeActionPayload" do
    optional :chaincode_proposal_payload, :bytes, 1
    optional :action, :message, 2, "protos.ChaincodeEndorsedAction"
  end
  add_message "protos.ChaincodeEndorsedAction" do
    optional :proposal_response_payload, :bytes, 1
    repeated :endorsements, :message, 2, "protos.Endorsement"
  end
  add_enum "protos.TxValidationCode" do
    value :VALID, 0
    value :NIL_ENVELOPE, 1
    value :BAD_PAYLOAD, 2
    value :BAD_COMMON_HEADER, 3
    value :BAD_CREATOR_SIGNATURE, 4
    value :INVALID_ENDORSER_TRANSACTION, 5
    value :INVALID_CONFIG_TRANSACTION, 6
    value :UNSUPPORTED_TX_PAYLOAD, 7
    value :BAD_PROPOSAL_TXID, 8
    value :DUPLICATE_TXID, 9
    value :ENDORSEMENT_POLICY_FAILURE, 10
    value :MVCC_READ_CONFLICT, 11
    value :PHANTOM_READ_CONFLICT, 12
    value :UNKNOWN_TX_TYPE, 13
    value :TARGET_CHAIN_NOT_FOUND, 14
    value :MARSHAL_TX_ERROR, 15
    value :NIL_TXACTION, 16
    value :EXPIRED_CHAINCODE, 17
    value :CHAINCODE_VERSION_CONFLICT, 18
    value :BAD_HEADER_EXTENSION, 19
    value :BAD_CHANNEL_HEADER, 20
    value :BAD_RESPONSE_PAYLOAD, 21
    value :BAD_RWSET, 22
    value :ILLEGAL_WRITESET, 23
    value :INVALID_WRITESET, 24
    value :NOT_VALIDATED, 254
    value :INVALID_OTHER_REASON, 255
  end
end

module Protos
  SignedTransaction = Google::Protobuf::DescriptorPool.generated_pool.lookup("protos.SignedTransaction").msgclass
  ProcessedTransaction = Google::Protobuf::DescriptorPool.generated_pool.lookup("protos.ProcessedTransaction").msgclass
  Transaction = Google::Protobuf::DescriptorPool.generated_pool.lookup("protos.Transaction").msgclass
  TransactionAction = Google::Protobuf::DescriptorPool.generated_pool.lookup("protos.TransactionAction").msgclass
  ChaincodeActionPayload = Google::Protobuf::DescriptorPool.generated_pool.lookup("protos.ChaincodeActionPayload").msgclass
  ChaincodeEndorsedAction = Google::Protobuf::DescriptorPool.generated_pool.lookup("protos.ChaincodeEndorsedAction").msgclass
  TxValidationCode = Google::Protobuf::DescriptorPool.generated_pool.lookup("protos.TxValidationCode").enummodule
end
