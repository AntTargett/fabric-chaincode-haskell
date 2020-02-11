module Stub where

import Data.ByteString

import Google.Protobuf.Timestamp as Pb
import Peer.Proposal as Pb

import Interfaces

-- Algebraic Type represeting the DefaultChaincodeStub.  This is the
-- one used to enable the chaincode to interact with ledger and chaincode
-- execution services of the peer. A istance of this type is created for
-- each of the chaincode invocations that are performed.
data DefaultChaincodeStub = DefaultChaincodeStub {
    -- chaincode invocation arguments. serialised as arrays of bytes.
    args :: Maybe [ByteString],
    -- name of the function being invoked.
    function :: Maybe String,
    -- arguments of the function idenfied by the chaincode invocation.
    parameters :: Maybe [String],
    -- transaction identifier.
    txId :: String,
    -- timestamp of the transaction invocation
    txTimestamp :: Maybe Pb.Timestamp,
    -- bytes of the X.509 identity of the originator of the transaction.
    creator :: Maybe ByteString,
    -- information about the signed proposalgit
    signedProposal :: Maybe Pb.SignedProposal,
    transient :: Maybe MapStringBytes,
    binding :: Maybe MapStringBytes,
    decorations :: Maybe MapStringBytes
}

-- Default error value used for functions that are not implemented
-- yet. This is used to save creation of Error values that are
-- effectively all the same.
notImplemented = Error "Function not implemented"

instance ChaincodeStub DefaultChaincodeStub where
    -- getArgs :: ccs -> [ByteString]
    -- getArgs ccs = args

    -- getStringArgs :: ccs -> [String]
    -- getStringArgs ccs = map (\_ ) args

    -- getFunctionAndParameters :: ccs -> (String, [String])
    -- getFunctionAndParameters ccs = (function, parameters)

    -- getArgsSlice :: ccs -> Either Error ByteString
    -- getArgsSlice ccs  = Left notImplemented

    -- getTxId :: css -> String
    getTxId css = txId css

    -- getChannelId :: ccs -> String
    -- getChannelId ccs = channelId

    -- invokeChaincode :: ccs -> String -> [ByteString] -> String -> Pb.Response
    -- invokeChaincode ccs cc params = Pb.Response{ responseStatus = 500, responseMessage = message(notImplemented), responsePayload = Nothing }
    --
    -- -- getState :: ccs -> String -> Either Error ByteString
    -- getState ccs key = Left notImplemented
    --
    -- -- putState :: ccs -> String -> ByteString -> Maybe Error
    -- putState ccs key value = Right notImplemented
    --
    -- -- delState :: ccs -> String -> Maybe Error
    -- delState ccs key = Right notImplemented
    --
    -- -- setStateValidationParameter :: ccs -> String -> [ByteString] -> Maybe Error
    -- setStateValidationParameter ccs key parameters = Right notImplemented
    --
    -- -- getStateValiationParameter :: ccs -> String -> Either Error [ByteString]
    -- getStateValiationParameter ccs key = Left notImplemented
    --
    -- -- getStateByRange :: ccs -> String -> String -> Either Error StateQueryIterator
    -- getStateByRange ccs startKey endKey = Left notImplemented
    --
    -- -- getStateByRangeWithPagination :: ccs -> String -> String -> Int32 -> String -> Either Error (StateQueryIterator, Pb.QueryResponseMetadata)
    -- getStateByRangeWithPagination ccs startKey endKey pageSize bookmark = Left notImplemented
    --
    -- -- getStateByPartialCompositeKey :: ccs -> String -> [String] -> Either Error StateQueryIterator
    -- getStateByPartialCompositeKey ccs objectType keys  = Left notImplemented
    --
    -- --getStateByPartialCompositeKeyWithPagination :: ccs -> String -> [String] -> Int32 -> String -> Either Error (StateQueryIterator, Pb.QueryResponseMetadata)
    -- getStateByPartialCompositeKeyWithPagination ccs objectType keys pageSize bookmark = Left notImplemented
    --
    -- --createCompositeKey :: ccs -> String -> [String] -> Either Error String
    -- createCompositeKey ccs objectType keys = Left notImplemented
    --
    -- --splitCompositeKey :: ccs -> String -> Either Error (String, [String])
    -- splitCompositeKey ccs key = Left notImplemented
    --
    -- --getQueryResult :: ccs -> String -> Either Error StateQueryIterator
    -- getQueryResult ccs query = Left notImplemented
    --
    -- --getQueryResultWithPagination :: ccs -> String -> Int32 -> String -> Either Error (StateQueryIterator, Pb.QueryResponseMetadata)
    -- getQueryResultWithPagination ccs key pageSize bookmark = Left notImplemented
    --
    -- --getHistoryForKey :: ccs -> String -> Either Error HistoryQueryIterator
    -- getHistoryForKey ccs key = Left notImplemented
    --
    -- --getPrivateData :: ccs -> String -> String -> Either Error ByteString
    -- getPrivateData ccs collection key = Left notImplemented
    --
    -- --getPrivateDataHash :: ccs -> String -> String -> Either Error ByteString
    -- getPrivateDataHash ccs collection key = Left notImplemented
    --
    -- --putPrivateData :: ccs -> String -> String -> ByteString -> Maybe Error
    -- putPrivateData ccs collection string value = Right notImplemented
    --
    -- --delPrivateData :: ccs -> String -> String -> Maybe Error
    -- delPrivateData ccs collection key = Right notImplemented
    --
    -- --setPrivateDataValidationParameter :: ccs -> String -> String -> ByteArray -> Maybe Error
    -- setPrivateDataValidationParameter ccs collection key params = Right notImplemented
    --
    -- --getPrivateDataValidationParameter :: ccs -> String -> String -> Either Error ByteString
    -- getPrivateDataValidationParameter ccs collection key = Left notImplemented
    --
    -- --getPrivateDataByRange :: ccs -> String -> String -> String -> Either Error StateQueryIterator
    -- getPrivateDataByRange ccs collection startKey endKey = Left notImplemented
    --
    -- --getPrivateDataByPartialCompositeKey :: ccs -> String -> String -> [String] -> Either Error StateQueryIterator
    -- getPrivateDataByPartialCompositeKey ccs collection objectType keys = Left notImplemented
    --
    -- -- getPrivateDataQueryResult :: ccs -> String -> String -> Either Error StateQueryIterator
    -- getPrivateDataQueryResult ccs collection query  = Left notImplemented
    --
    -- -- getCreator :: ccs -> Either Error ByteArray
    -- getCreator ccs = Right creator
    --
    -- -- getTransient :: ccs -> Either Error MapStringBytes
    -- getTransient ccs = Right transient
    --
    -- -- getBinding :: ccs -> Either Error MapStringBytes
    -- getBinding ccs = Right binding
    --
    -- -- getDecorations :: ccs -> MapStringBytes
    -- getDecorations ccs = Right decorations
    --
    -- -- getSignedProposal :: ccs -> Either Error Pb.SignedProposal
    -- getSignedProposal ccs = Right signedProposal
    --
    -- -- getTxTimestamp :: ccs -> Either Error Pb.Timestamp
    -- getTxTimestamp ccs = Right txTimestamp
    --
    -- -- setEvent :: ccs -> String -> ByteArray -> Maybe Error
    -- setEvent ccs = Right notImplemented
