
module AWS.Kinesis.Types where

import Prelude
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.Generic.Types (Options)
import Data.Foreign.NullOrUndefined (NullOrUndefined(..))
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap (StrMap) as StrMap

import AWS.Request.Types as Types

options :: Options
options = defaultOptions { unwrapSingleConstructors = true }


-- | <p>Represents the input for <code>AddTagsToStream</code>.</p>
newtype AddTagsToStreamInput = AddTagsToStreamInput 
  { "StreamName" :: (StreamName)
  , "Tags" :: (TagMap)
  }
derive instance newtypeAddTagsToStreamInput :: Newtype AddTagsToStreamInput _
derive instance repGenericAddTagsToStreamInput :: Generic AddTagsToStreamInput _
instance showAddTagsToStreamInput :: Show AddTagsToStreamInput where show = genericShow
instance decodeAddTagsToStreamInput :: Decode AddTagsToStreamInput where decode = genericDecode options
instance encodeAddTagsToStreamInput :: Encode AddTagsToStreamInput where encode = genericEncode options

-- | Constructs AddTagsToStreamInput from required parameters
newAddTagsToStreamInput :: StreamName -> TagMap -> AddTagsToStreamInput
newAddTagsToStreamInput _StreamName _Tags = AddTagsToStreamInput { "StreamName": _StreamName, "Tags": _Tags }

-- | Constructs AddTagsToStreamInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAddTagsToStreamInput' :: StreamName -> TagMap -> ( { "StreamName" :: (StreamName) , "Tags" :: (TagMap) } -> {"StreamName" :: (StreamName) , "Tags" :: (TagMap) } ) -> AddTagsToStreamInput
newAddTagsToStreamInput' _StreamName _Tags customize = (AddTagsToStreamInput <<< customize) { "StreamName": _StreamName, "Tags": _Tags }



newtype BooleanObject = BooleanObject Boolean
derive instance newtypeBooleanObject :: Newtype BooleanObject _
derive instance repGenericBooleanObject :: Generic BooleanObject _
instance showBooleanObject :: Show BooleanObject where show = genericShow
instance decodeBooleanObject :: Decode BooleanObject where decode = genericDecode options
instance encodeBooleanObject :: Encode BooleanObject where encode = genericEncode options



-- | <p>Represents the input for <code>CreateStream</code>.</p>
newtype CreateStreamInput = CreateStreamInput 
  { "StreamName" :: (StreamName)
  , "ShardCount" :: (PositiveIntegerObject)
  }
derive instance newtypeCreateStreamInput :: Newtype CreateStreamInput _
derive instance repGenericCreateStreamInput :: Generic CreateStreamInput _
instance showCreateStreamInput :: Show CreateStreamInput where show = genericShow
instance decodeCreateStreamInput :: Decode CreateStreamInput where decode = genericDecode options
instance encodeCreateStreamInput :: Encode CreateStreamInput where encode = genericEncode options

-- | Constructs CreateStreamInput from required parameters
newCreateStreamInput :: PositiveIntegerObject -> StreamName -> CreateStreamInput
newCreateStreamInput _ShardCount _StreamName = CreateStreamInput { "ShardCount": _ShardCount, "StreamName": _StreamName }

-- | Constructs CreateStreamInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateStreamInput' :: PositiveIntegerObject -> StreamName -> ( { "StreamName" :: (StreamName) , "ShardCount" :: (PositiveIntegerObject) } -> {"StreamName" :: (StreamName) , "ShardCount" :: (PositiveIntegerObject) } ) -> CreateStreamInput
newCreateStreamInput' _ShardCount _StreamName customize = (CreateStreamInput <<< customize) { "ShardCount": _ShardCount, "StreamName": _StreamName }



newtype Data = Data String
derive instance newtypeData :: Newtype Data _
derive instance repGenericData :: Generic Data _
instance showData :: Show Data where show = genericShow
instance decodeData :: Decode Data where decode = genericDecode options
instance encodeData :: Encode Data where encode = genericEncode options



-- | <p>Represents the input for <a>DecreaseStreamRetentionPeriod</a>.</p>
newtype DecreaseStreamRetentionPeriodInput = DecreaseStreamRetentionPeriodInput 
  { "StreamName" :: (StreamName)
  , "RetentionPeriodHours" :: (RetentionPeriodHours)
  }
derive instance newtypeDecreaseStreamRetentionPeriodInput :: Newtype DecreaseStreamRetentionPeriodInput _
derive instance repGenericDecreaseStreamRetentionPeriodInput :: Generic DecreaseStreamRetentionPeriodInput _
instance showDecreaseStreamRetentionPeriodInput :: Show DecreaseStreamRetentionPeriodInput where show = genericShow
instance decodeDecreaseStreamRetentionPeriodInput :: Decode DecreaseStreamRetentionPeriodInput where decode = genericDecode options
instance encodeDecreaseStreamRetentionPeriodInput :: Encode DecreaseStreamRetentionPeriodInput where encode = genericEncode options

-- | Constructs DecreaseStreamRetentionPeriodInput from required parameters
newDecreaseStreamRetentionPeriodInput :: RetentionPeriodHours -> StreamName -> DecreaseStreamRetentionPeriodInput
newDecreaseStreamRetentionPeriodInput _RetentionPeriodHours _StreamName = DecreaseStreamRetentionPeriodInput { "RetentionPeriodHours": _RetentionPeriodHours, "StreamName": _StreamName }

-- | Constructs DecreaseStreamRetentionPeriodInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDecreaseStreamRetentionPeriodInput' :: RetentionPeriodHours -> StreamName -> ( { "StreamName" :: (StreamName) , "RetentionPeriodHours" :: (RetentionPeriodHours) } -> {"StreamName" :: (StreamName) , "RetentionPeriodHours" :: (RetentionPeriodHours) } ) -> DecreaseStreamRetentionPeriodInput
newDecreaseStreamRetentionPeriodInput' _RetentionPeriodHours _StreamName customize = (DecreaseStreamRetentionPeriodInput <<< customize) { "RetentionPeriodHours": _RetentionPeriodHours, "StreamName": _StreamName }



-- | <p>Represents the input for <a>DeleteStream</a>.</p>
newtype DeleteStreamInput = DeleteStreamInput 
  { "StreamName" :: (StreamName)
  }
derive instance newtypeDeleteStreamInput :: Newtype DeleteStreamInput _
derive instance repGenericDeleteStreamInput :: Generic DeleteStreamInput _
instance showDeleteStreamInput :: Show DeleteStreamInput where show = genericShow
instance decodeDeleteStreamInput :: Decode DeleteStreamInput where decode = genericDecode options
instance encodeDeleteStreamInput :: Encode DeleteStreamInput where encode = genericEncode options

-- | Constructs DeleteStreamInput from required parameters
newDeleteStreamInput :: StreamName -> DeleteStreamInput
newDeleteStreamInput _StreamName = DeleteStreamInput { "StreamName": _StreamName }

-- | Constructs DeleteStreamInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteStreamInput' :: StreamName -> ( { "StreamName" :: (StreamName) } -> {"StreamName" :: (StreamName) } ) -> DeleteStreamInput
newDeleteStreamInput' _StreamName customize = (DeleteStreamInput <<< customize) { "StreamName": _StreamName }



newtype DescribeLimitsInput = DescribeLimitsInput Types.NoArguments
derive instance newtypeDescribeLimitsInput :: Newtype DescribeLimitsInput _
derive instance repGenericDescribeLimitsInput :: Generic DescribeLimitsInput _
instance showDescribeLimitsInput :: Show DescribeLimitsInput where show = genericShow
instance decodeDescribeLimitsInput :: Decode DescribeLimitsInput where decode = genericDecode options
instance encodeDescribeLimitsInput :: Encode DescribeLimitsInput where encode = genericEncode options



newtype DescribeLimitsOutput = DescribeLimitsOutput 
  { "ShardLimit" :: (ShardCountObject)
  , "OpenShardCount" :: (ShardCountObject)
  }
derive instance newtypeDescribeLimitsOutput :: Newtype DescribeLimitsOutput _
derive instance repGenericDescribeLimitsOutput :: Generic DescribeLimitsOutput _
instance showDescribeLimitsOutput :: Show DescribeLimitsOutput where show = genericShow
instance decodeDescribeLimitsOutput :: Decode DescribeLimitsOutput where decode = genericDecode options
instance encodeDescribeLimitsOutput :: Encode DescribeLimitsOutput where encode = genericEncode options

-- | Constructs DescribeLimitsOutput from required parameters
newDescribeLimitsOutput :: ShardCountObject -> ShardCountObject -> DescribeLimitsOutput
newDescribeLimitsOutput _OpenShardCount _ShardLimit = DescribeLimitsOutput { "OpenShardCount": _OpenShardCount, "ShardLimit": _ShardLimit }

-- | Constructs DescribeLimitsOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeLimitsOutput' :: ShardCountObject -> ShardCountObject -> ( { "ShardLimit" :: (ShardCountObject) , "OpenShardCount" :: (ShardCountObject) } -> {"ShardLimit" :: (ShardCountObject) , "OpenShardCount" :: (ShardCountObject) } ) -> DescribeLimitsOutput
newDescribeLimitsOutput' _OpenShardCount _ShardLimit customize = (DescribeLimitsOutput <<< customize) { "OpenShardCount": _OpenShardCount, "ShardLimit": _ShardLimit }



-- | <p>Represents the input for <code>DescribeStream</code>.</p>
newtype DescribeStreamInput = DescribeStreamInput 
  { "StreamName" :: (StreamName)
  , "Limit" :: NullOrUndefined (DescribeStreamInputLimit)
  , "ExclusiveStartShardId" :: NullOrUndefined (ShardId)
  }
derive instance newtypeDescribeStreamInput :: Newtype DescribeStreamInput _
derive instance repGenericDescribeStreamInput :: Generic DescribeStreamInput _
instance showDescribeStreamInput :: Show DescribeStreamInput where show = genericShow
instance decodeDescribeStreamInput :: Decode DescribeStreamInput where decode = genericDecode options
instance encodeDescribeStreamInput :: Encode DescribeStreamInput where encode = genericEncode options

-- | Constructs DescribeStreamInput from required parameters
newDescribeStreamInput :: StreamName -> DescribeStreamInput
newDescribeStreamInput _StreamName = DescribeStreamInput { "StreamName": _StreamName, "ExclusiveStartShardId": (NullOrUndefined Nothing), "Limit": (NullOrUndefined Nothing) }

-- | Constructs DescribeStreamInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeStreamInput' :: StreamName -> ( { "StreamName" :: (StreamName) , "Limit" :: NullOrUndefined (DescribeStreamInputLimit) , "ExclusiveStartShardId" :: NullOrUndefined (ShardId) } -> {"StreamName" :: (StreamName) , "Limit" :: NullOrUndefined (DescribeStreamInputLimit) , "ExclusiveStartShardId" :: NullOrUndefined (ShardId) } ) -> DescribeStreamInput
newDescribeStreamInput' _StreamName customize = (DescribeStreamInput <<< customize) { "StreamName": _StreamName, "ExclusiveStartShardId": (NullOrUndefined Nothing), "Limit": (NullOrUndefined Nothing) }



newtype DescribeStreamInputLimit = DescribeStreamInputLimit Int
derive instance newtypeDescribeStreamInputLimit :: Newtype DescribeStreamInputLimit _
derive instance repGenericDescribeStreamInputLimit :: Generic DescribeStreamInputLimit _
instance showDescribeStreamInputLimit :: Show DescribeStreamInputLimit where show = genericShow
instance decodeDescribeStreamInputLimit :: Decode DescribeStreamInputLimit where decode = genericDecode options
instance encodeDescribeStreamInputLimit :: Encode DescribeStreamInputLimit where encode = genericEncode options



-- | <p>Represents the output for <code>DescribeStream</code>.</p>
newtype DescribeStreamOutput = DescribeStreamOutput 
  { "StreamDescription" :: (StreamDescription)
  }
derive instance newtypeDescribeStreamOutput :: Newtype DescribeStreamOutput _
derive instance repGenericDescribeStreamOutput :: Generic DescribeStreamOutput _
instance showDescribeStreamOutput :: Show DescribeStreamOutput where show = genericShow
instance decodeDescribeStreamOutput :: Decode DescribeStreamOutput where decode = genericDecode options
instance encodeDescribeStreamOutput :: Encode DescribeStreamOutput where encode = genericEncode options

-- | Constructs DescribeStreamOutput from required parameters
newDescribeStreamOutput :: StreamDescription -> DescribeStreamOutput
newDescribeStreamOutput _StreamDescription = DescribeStreamOutput { "StreamDescription": _StreamDescription }

-- | Constructs DescribeStreamOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeStreamOutput' :: StreamDescription -> ( { "StreamDescription" :: (StreamDescription) } -> {"StreamDescription" :: (StreamDescription) } ) -> DescribeStreamOutput
newDescribeStreamOutput' _StreamDescription customize = (DescribeStreamOutput <<< customize) { "StreamDescription": _StreamDescription }



newtype DescribeStreamSummaryInput = DescribeStreamSummaryInput 
  { "StreamName" :: (StreamName)
  }
derive instance newtypeDescribeStreamSummaryInput :: Newtype DescribeStreamSummaryInput _
derive instance repGenericDescribeStreamSummaryInput :: Generic DescribeStreamSummaryInput _
instance showDescribeStreamSummaryInput :: Show DescribeStreamSummaryInput where show = genericShow
instance decodeDescribeStreamSummaryInput :: Decode DescribeStreamSummaryInput where decode = genericDecode options
instance encodeDescribeStreamSummaryInput :: Encode DescribeStreamSummaryInput where encode = genericEncode options

-- | Constructs DescribeStreamSummaryInput from required parameters
newDescribeStreamSummaryInput :: StreamName -> DescribeStreamSummaryInput
newDescribeStreamSummaryInput _StreamName = DescribeStreamSummaryInput { "StreamName": _StreamName }

-- | Constructs DescribeStreamSummaryInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeStreamSummaryInput' :: StreamName -> ( { "StreamName" :: (StreamName) } -> {"StreamName" :: (StreamName) } ) -> DescribeStreamSummaryInput
newDescribeStreamSummaryInput' _StreamName customize = (DescribeStreamSummaryInput <<< customize) { "StreamName": _StreamName }



newtype DescribeStreamSummaryOutput = DescribeStreamSummaryOutput 
  { "StreamDescriptionSummary" :: (StreamDescriptionSummary)
  }
derive instance newtypeDescribeStreamSummaryOutput :: Newtype DescribeStreamSummaryOutput _
derive instance repGenericDescribeStreamSummaryOutput :: Generic DescribeStreamSummaryOutput _
instance showDescribeStreamSummaryOutput :: Show DescribeStreamSummaryOutput where show = genericShow
instance decodeDescribeStreamSummaryOutput :: Decode DescribeStreamSummaryOutput where decode = genericDecode options
instance encodeDescribeStreamSummaryOutput :: Encode DescribeStreamSummaryOutput where encode = genericEncode options

-- | Constructs DescribeStreamSummaryOutput from required parameters
newDescribeStreamSummaryOutput :: StreamDescriptionSummary -> DescribeStreamSummaryOutput
newDescribeStreamSummaryOutput _StreamDescriptionSummary = DescribeStreamSummaryOutput { "StreamDescriptionSummary": _StreamDescriptionSummary }

-- | Constructs DescribeStreamSummaryOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeStreamSummaryOutput' :: StreamDescriptionSummary -> ( { "StreamDescriptionSummary" :: (StreamDescriptionSummary) } -> {"StreamDescriptionSummary" :: (StreamDescriptionSummary) } ) -> DescribeStreamSummaryOutput
newDescribeStreamSummaryOutput' _StreamDescriptionSummary customize = (DescribeStreamSummaryOutput <<< customize) { "StreamDescriptionSummary": _StreamDescriptionSummary }



-- | <p>Represents the input for <a>DisableEnhancedMonitoring</a>.</p>
newtype DisableEnhancedMonitoringInput = DisableEnhancedMonitoringInput 
  { "StreamName" :: (StreamName)
  , "ShardLevelMetrics" :: (MetricsNameList)
  }
derive instance newtypeDisableEnhancedMonitoringInput :: Newtype DisableEnhancedMonitoringInput _
derive instance repGenericDisableEnhancedMonitoringInput :: Generic DisableEnhancedMonitoringInput _
instance showDisableEnhancedMonitoringInput :: Show DisableEnhancedMonitoringInput where show = genericShow
instance decodeDisableEnhancedMonitoringInput :: Decode DisableEnhancedMonitoringInput where decode = genericDecode options
instance encodeDisableEnhancedMonitoringInput :: Encode DisableEnhancedMonitoringInput where encode = genericEncode options

-- | Constructs DisableEnhancedMonitoringInput from required parameters
newDisableEnhancedMonitoringInput :: MetricsNameList -> StreamName -> DisableEnhancedMonitoringInput
newDisableEnhancedMonitoringInput _ShardLevelMetrics _StreamName = DisableEnhancedMonitoringInput { "ShardLevelMetrics": _ShardLevelMetrics, "StreamName": _StreamName }

-- | Constructs DisableEnhancedMonitoringInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDisableEnhancedMonitoringInput' :: MetricsNameList -> StreamName -> ( { "StreamName" :: (StreamName) , "ShardLevelMetrics" :: (MetricsNameList) } -> {"StreamName" :: (StreamName) , "ShardLevelMetrics" :: (MetricsNameList) } ) -> DisableEnhancedMonitoringInput
newDisableEnhancedMonitoringInput' _ShardLevelMetrics _StreamName customize = (DisableEnhancedMonitoringInput <<< customize) { "ShardLevelMetrics": _ShardLevelMetrics, "StreamName": _StreamName }



-- | <p>Represents the input for <a>EnableEnhancedMonitoring</a>.</p>
newtype EnableEnhancedMonitoringInput = EnableEnhancedMonitoringInput 
  { "StreamName" :: (StreamName)
  , "ShardLevelMetrics" :: (MetricsNameList)
  }
derive instance newtypeEnableEnhancedMonitoringInput :: Newtype EnableEnhancedMonitoringInput _
derive instance repGenericEnableEnhancedMonitoringInput :: Generic EnableEnhancedMonitoringInput _
instance showEnableEnhancedMonitoringInput :: Show EnableEnhancedMonitoringInput where show = genericShow
instance decodeEnableEnhancedMonitoringInput :: Decode EnableEnhancedMonitoringInput where decode = genericDecode options
instance encodeEnableEnhancedMonitoringInput :: Encode EnableEnhancedMonitoringInput where encode = genericEncode options

-- | Constructs EnableEnhancedMonitoringInput from required parameters
newEnableEnhancedMonitoringInput :: MetricsNameList -> StreamName -> EnableEnhancedMonitoringInput
newEnableEnhancedMonitoringInput _ShardLevelMetrics _StreamName = EnableEnhancedMonitoringInput { "ShardLevelMetrics": _ShardLevelMetrics, "StreamName": _StreamName }

-- | Constructs EnableEnhancedMonitoringInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEnableEnhancedMonitoringInput' :: MetricsNameList -> StreamName -> ( { "StreamName" :: (StreamName) , "ShardLevelMetrics" :: (MetricsNameList) } -> {"StreamName" :: (StreamName) , "ShardLevelMetrics" :: (MetricsNameList) } ) -> EnableEnhancedMonitoringInput
newEnableEnhancedMonitoringInput' _ShardLevelMetrics _StreamName customize = (EnableEnhancedMonitoringInput <<< customize) { "ShardLevelMetrics": _ShardLevelMetrics, "StreamName": _StreamName }



newtype EncryptionType = EncryptionType String
derive instance newtypeEncryptionType :: Newtype EncryptionType _
derive instance repGenericEncryptionType :: Generic EncryptionType _
instance showEncryptionType :: Show EncryptionType where show = genericShow
instance decodeEncryptionType :: Decode EncryptionType where decode = genericDecode options
instance encodeEncryptionType :: Encode EncryptionType where encode = genericEncode options



-- | <p>Represents enhanced metrics types.</p>
newtype EnhancedMetrics = EnhancedMetrics 
  { "ShardLevelMetrics" :: NullOrUndefined (MetricsNameList)
  }
derive instance newtypeEnhancedMetrics :: Newtype EnhancedMetrics _
derive instance repGenericEnhancedMetrics :: Generic EnhancedMetrics _
instance showEnhancedMetrics :: Show EnhancedMetrics where show = genericShow
instance decodeEnhancedMetrics :: Decode EnhancedMetrics where decode = genericDecode options
instance encodeEnhancedMetrics :: Encode EnhancedMetrics where encode = genericEncode options

-- | Constructs EnhancedMetrics from required parameters
newEnhancedMetrics :: EnhancedMetrics
newEnhancedMetrics  = EnhancedMetrics { "ShardLevelMetrics": (NullOrUndefined Nothing) }

-- | Constructs EnhancedMetrics's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEnhancedMetrics' :: ( { "ShardLevelMetrics" :: NullOrUndefined (MetricsNameList) } -> {"ShardLevelMetrics" :: NullOrUndefined (MetricsNameList) } ) -> EnhancedMetrics
newEnhancedMetrics'  customize = (EnhancedMetrics <<< customize) { "ShardLevelMetrics": (NullOrUndefined Nothing) }



newtype EnhancedMonitoringList = EnhancedMonitoringList (Array EnhancedMetrics)
derive instance newtypeEnhancedMonitoringList :: Newtype EnhancedMonitoringList _
derive instance repGenericEnhancedMonitoringList :: Generic EnhancedMonitoringList _
instance showEnhancedMonitoringList :: Show EnhancedMonitoringList where show = genericShow
instance decodeEnhancedMonitoringList :: Decode EnhancedMonitoringList where decode = genericDecode options
instance encodeEnhancedMonitoringList :: Encode EnhancedMonitoringList where encode = genericEncode options



-- | <p>Represents the output for <a>EnableEnhancedMonitoring</a> and <a>DisableEnhancedMonitoring</a>.</p>
newtype EnhancedMonitoringOutput = EnhancedMonitoringOutput 
  { "StreamName" :: NullOrUndefined (StreamName)
  , "CurrentShardLevelMetrics" :: NullOrUndefined (MetricsNameList)
  , "DesiredShardLevelMetrics" :: NullOrUndefined (MetricsNameList)
  }
derive instance newtypeEnhancedMonitoringOutput :: Newtype EnhancedMonitoringOutput _
derive instance repGenericEnhancedMonitoringOutput :: Generic EnhancedMonitoringOutput _
instance showEnhancedMonitoringOutput :: Show EnhancedMonitoringOutput where show = genericShow
instance decodeEnhancedMonitoringOutput :: Decode EnhancedMonitoringOutput where decode = genericDecode options
instance encodeEnhancedMonitoringOutput :: Encode EnhancedMonitoringOutput where encode = genericEncode options

-- | Constructs EnhancedMonitoringOutput from required parameters
newEnhancedMonitoringOutput :: EnhancedMonitoringOutput
newEnhancedMonitoringOutput  = EnhancedMonitoringOutput { "CurrentShardLevelMetrics": (NullOrUndefined Nothing), "DesiredShardLevelMetrics": (NullOrUndefined Nothing), "StreamName": (NullOrUndefined Nothing) }

-- | Constructs EnhancedMonitoringOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEnhancedMonitoringOutput' :: ( { "StreamName" :: NullOrUndefined (StreamName) , "CurrentShardLevelMetrics" :: NullOrUndefined (MetricsNameList) , "DesiredShardLevelMetrics" :: NullOrUndefined (MetricsNameList) } -> {"StreamName" :: NullOrUndefined (StreamName) , "CurrentShardLevelMetrics" :: NullOrUndefined (MetricsNameList) , "DesiredShardLevelMetrics" :: NullOrUndefined (MetricsNameList) } ) -> EnhancedMonitoringOutput
newEnhancedMonitoringOutput'  customize = (EnhancedMonitoringOutput <<< customize) { "CurrentShardLevelMetrics": (NullOrUndefined Nothing), "DesiredShardLevelMetrics": (NullOrUndefined Nothing), "StreamName": (NullOrUndefined Nothing) }



newtype ErrorCode = ErrorCode String
derive instance newtypeErrorCode :: Newtype ErrorCode _
derive instance repGenericErrorCode :: Generic ErrorCode _
instance showErrorCode :: Show ErrorCode where show = genericShow
instance decodeErrorCode :: Decode ErrorCode where decode = genericDecode options
instance encodeErrorCode :: Encode ErrorCode where encode = genericEncode options



newtype ErrorMessage = ErrorMessage String
derive instance newtypeErrorMessage :: Newtype ErrorMessage _
derive instance repGenericErrorMessage :: Generic ErrorMessage _
instance showErrorMessage :: Show ErrorMessage where show = genericShow
instance decodeErrorMessage :: Decode ErrorMessage where decode = genericDecode options
instance encodeErrorMessage :: Encode ErrorMessage where encode = genericEncode options



-- | <p>The provided iterator exceeds the maximum age allowed.</p>
newtype ExpiredIteratorException = ExpiredIteratorException 
  { "message" :: NullOrUndefined (ErrorMessage)
  }
derive instance newtypeExpiredIteratorException :: Newtype ExpiredIteratorException _
derive instance repGenericExpiredIteratorException :: Generic ExpiredIteratorException _
instance showExpiredIteratorException :: Show ExpiredIteratorException where show = genericShow
instance decodeExpiredIteratorException :: Decode ExpiredIteratorException where decode = genericDecode options
instance encodeExpiredIteratorException :: Encode ExpiredIteratorException where encode = genericEncode options

-- | Constructs ExpiredIteratorException from required parameters
newExpiredIteratorException :: ExpiredIteratorException
newExpiredIteratorException  = ExpiredIteratorException { "message": (NullOrUndefined Nothing) }

-- | Constructs ExpiredIteratorException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newExpiredIteratorException' :: ( { "message" :: NullOrUndefined (ErrorMessage) } -> {"message" :: NullOrUndefined (ErrorMessage) } ) -> ExpiredIteratorException
newExpiredIteratorException'  customize = (ExpiredIteratorException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>The pagination token passed to the <code>ListShards</code> operation is expired. For more information, see <a>ListShardsInput$NextToken</a>.</p>
newtype ExpiredNextTokenException = ExpiredNextTokenException 
  { "message" :: NullOrUndefined (ErrorMessage)
  }
derive instance newtypeExpiredNextTokenException :: Newtype ExpiredNextTokenException _
derive instance repGenericExpiredNextTokenException :: Generic ExpiredNextTokenException _
instance showExpiredNextTokenException :: Show ExpiredNextTokenException where show = genericShow
instance decodeExpiredNextTokenException :: Decode ExpiredNextTokenException where decode = genericDecode options
instance encodeExpiredNextTokenException :: Encode ExpiredNextTokenException where encode = genericEncode options

-- | Constructs ExpiredNextTokenException from required parameters
newExpiredNextTokenException :: ExpiredNextTokenException
newExpiredNextTokenException  = ExpiredNextTokenException { "message": (NullOrUndefined Nothing) }

-- | Constructs ExpiredNextTokenException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newExpiredNextTokenException' :: ( { "message" :: NullOrUndefined (ErrorMessage) } -> {"message" :: NullOrUndefined (ErrorMessage) } ) -> ExpiredNextTokenException
newExpiredNextTokenException'  customize = (ExpiredNextTokenException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>Represents the input for <a>GetRecords</a>.</p>
newtype GetRecordsInput = GetRecordsInput 
  { "ShardIterator" :: (ShardIterator)
  , "Limit" :: NullOrUndefined (GetRecordsInputLimit)
  }
derive instance newtypeGetRecordsInput :: Newtype GetRecordsInput _
derive instance repGenericGetRecordsInput :: Generic GetRecordsInput _
instance showGetRecordsInput :: Show GetRecordsInput where show = genericShow
instance decodeGetRecordsInput :: Decode GetRecordsInput where decode = genericDecode options
instance encodeGetRecordsInput :: Encode GetRecordsInput where encode = genericEncode options

-- | Constructs GetRecordsInput from required parameters
newGetRecordsInput :: ShardIterator -> GetRecordsInput
newGetRecordsInput _ShardIterator = GetRecordsInput { "ShardIterator": _ShardIterator, "Limit": (NullOrUndefined Nothing) }

-- | Constructs GetRecordsInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetRecordsInput' :: ShardIterator -> ( { "ShardIterator" :: (ShardIterator) , "Limit" :: NullOrUndefined (GetRecordsInputLimit) } -> {"ShardIterator" :: (ShardIterator) , "Limit" :: NullOrUndefined (GetRecordsInputLimit) } ) -> GetRecordsInput
newGetRecordsInput' _ShardIterator customize = (GetRecordsInput <<< customize) { "ShardIterator": _ShardIterator, "Limit": (NullOrUndefined Nothing) }



newtype GetRecordsInputLimit = GetRecordsInputLimit Int
derive instance newtypeGetRecordsInputLimit :: Newtype GetRecordsInputLimit _
derive instance repGenericGetRecordsInputLimit :: Generic GetRecordsInputLimit _
instance showGetRecordsInputLimit :: Show GetRecordsInputLimit where show = genericShow
instance decodeGetRecordsInputLimit :: Decode GetRecordsInputLimit where decode = genericDecode options
instance encodeGetRecordsInputLimit :: Encode GetRecordsInputLimit where encode = genericEncode options



-- | <p>Represents the output for <a>GetRecords</a>.</p>
newtype GetRecordsOutput = GetRecordsOutput 
  { "Records" :: (RecordList)
  , "NextShardIterator" :: NullOrUndefined (ShardIterator)
  , "MillisBehindLatest" :: NullOrUndefined (MillisBehindLatest)
  }
derive instance newtypeGetRecordsOutput :: Newtype GetRecordsOutput _
derive instance repGenericGetRecordsOutput :: Generic GetRecordsOutput _
instance showGetRecordsOutput :: Show GetRecordsOutput where show = genericShow
instance decodeGetRecordsOutput :: Decode GetRecordsOutput where decode = genericDecode options
instance encodeGetRecordsOutput :: Encode GetRecordsOutput where encode = genericEncode options

-- | Constructs GetRecordsOutput from required parameters
newGetRecordsOutput :: RecordList -> GetRecordsOutput
newGetRecordsOutput _Records = GetRecordsOutput { "Records": _Records, "MillisBehindLatest": (NullOrUndefined Nothing), "NextShardIterator": (NullOrUndefined Nothing) }

-- | Constructs GetRecordsOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetRecordsOutput' :: RecordList -> ( { "Records" :: (RecordList) , "NextShardIterator" :: NullOrUndefined (ShardIterator) , "MillisBehindLatest" :: NullOrUndefined (MillisBehindLatest) } -> {"Records" :: (RecordList) , "NextShardIterator" :: NullOrUndefined (ShardIterator) , "MillisBehindLatest" :: NullOrUndefined (MillisBehindLatest) } ) -> GetRecordsOutput
newGetRecordsOutput' _Records customize = (GetRecordsOutput <<< customize) { "Records": _Records, "MillisBehindLatest": (NullOrUndefined Nothing), "NextShardIterator": (NullOrUndefined Nothing) }



-- | <p>Represents the input for <code>GetShardIterator</code>.</p>
newtype GetShardIteratorInput = GetShardIteratorInput 
  { "StreamName" :: (StreamName)
  , "ShardId" :: (ShardId)
  , "ShardIteratorType" :: (ShardIteratorType)
  , "StartingSequenceNumber" :: NullOrUndefined (SequenceNumber)
  , "Timestamp" :: NullOrUndefined (Types.Timestamp)
  }
derive instance newtypeGetShardIteratorInput :: Newtype GetShardIteratorInput _
derive instance repGenericGetShardIteratorInput :: Generic GetShardIteratorInput _
instance showGetShardIteratorInput :: Show GetShardIteratorInput where show = genericShow
instance decodeGetShardIteratorInput :: Decode GetShardIteratorInput where decode = genericDecode options
instance encodeGetShardIteratorInput :: Encode GetShardIteratorInput where encode = genericEncode options

-- | Constructs GetShardIteratorInput from required parameters
newGetShardIteratorInput :: ShardId -> ShardIteratorType -> StreamName -> GetShardIteratorInput
newGetShardIteratorInput _ShardId _ShardIteratorType _StreamName = GetShardIteratorInput { "ShardId": _ShardId, "ShardIteratorType": _ShardIteratorType, "StreamName": _StreamName, "StartingSequenceNumber": (NullOrUndefined Nothing), "Timestamp": (NullOrUndefined Nothing) }

-- | Constructs GetShardIteratorInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetShardIteratorInput' :: ShardId -> ShardIteratorType -> StreamName -> ( { "StreamName" :: (StreamName) , "ShardId" :: (ShardId) , "ShardIteratorType" :: (ShardIteratorType) , "StartingSequenceNumber" :: NullOrUndefined (SequenceNumber) , "Timestamp" :: NullOrUndefined (Types.Timestamp) } -> {"StreamName" :: (StreamName) , "ShardId" :: (ShardId) , "ShardIteratorType" :: (ShardIteratorType) , "StartingSequenceNumber" :: NullOrUndefined (SequenceNumber) , "Timestamp" :: NullOrUndefined (Types.Timestamp) } ) -> GetShardIteratorInput
newGetShardIteratorInput' _ShardId _ShardIteratorType _StreamName customize = (GetShardIteratorInput <<< customize) { "ShardId": _ShardId, "ShardIteratorType": _ShardIteratorType, "StreamName": _StreamName, "StartingSequenceNumber": (NullOrUndefined Nothing), "Timestamp": (NullOrUndefined Nothing) }



-- | <p>Represents the output for <code>GetShardIterator</code>.</p>
newtype GetShardIteratorOutput = GetShardIteratorOutput 
  { "ShardIterator" :: NullOrUndefined (ShardIterator)
  }
derive instance newtypeGetShardIteratorOutput :: Newtype GetShardIteratorOutput _
derive instance repGenericGetShardIteratorOutput :: Generic GetShardIteratorOutput _
instance showGetShardIteratorOutput :: Show GetShardIteratorOutput where show = genericShow
instance decodeGetShardIteratorOutput :: Decode GetShardIteratorOutput where decode = genericDecode options
instance encodeGetShardIteratorOutput :: Encode GetShardIteratorOutput where encode = genericEncode options

-- | Constructs GetShardIteratorOutput from required parameters
newGetShardIteratorOutput :: GetShardIteratorOutput
newGetShardIteratorOutput  = GetShardIteratorOutput { "ShardIterator": (NullOrUndefined Nothing) }

-- | Constructs GetShardIteratorOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetShardIteratorOutput' :: ( { "ShardIterator" :: NullOrUndefined (ShardIterator) } -> {"ShardIterator" :: NullOrUndefined (ShardIterator) } ) -> GetShardIteratorOutput
newGetShardIteratorOutput'  customize = (GetShardIteratorOutput <<< customize) { "ShardIterator": (NullOrUndefined Nothing) }



newtype HashKey = HashKey String
derive instance newtypeHashKey :: Newtype HashKey _
derive instance repGenericHashKey :: Generic HashKey _
instance showHashKey :: Show HashKey where show = genericShow
instance decodeHashKey :: Decode HashKey where decode = genericDecode options
instance encodeHashKey :: Encode HashKey where encode = genericEncode options



-- | <p>The range of possible hash key values for the shard, which is a set of ordered contiguous positive integers.</p>
newtype HashKeyRange = HashKeyRange 
  { "StartingHashKey" :: (HashKey)
  , "EndingHashKey" :: (HashKey)
  }
derive instance newtypeHashKeyRange :: Newtype HashKeyRange _
derive instance repGenericHashKeyRange :: Generic HashKeyRange _
instance showHashKeyRange :: Show HashKeyRange where show = genericShow
instance decodeHashKeyRange :: Decode HashKeyRange where decode = genericDecode options
instance encodeHashKeyRange :: Encode HashKeyRange where encode = genericEncode options

-- | Constructs HashKeyRange from required parameters
newHashKeyRange :: HashKey -> HashKey -> HashKeyRange
newHashKeyRange _EndingHashKey _StartingHashKey = HashKeyRange { "EndingHashKey": _EndingHashKey, "StartingHashKey": _StartingHashKey }

-- | Constructs HashKeyRange's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newHashKeyRange' :: HashKey -> HashKey -> ( { "StartingHashKey" :: (HashKey) , "EndingHashKey" :: (HashKey) } -> {"StartingHashKey" :: (HashKey) , "EndingHashKey" :: (HashKey) } ) -> HashKeyRange
newHashKeyRange' _EndingHashKey _StartingHashKey customize = (HashKeyRange <<< customize) { "EndingHashKey": _EndingHashKey, "StartingHashKey": _StartingHashKey }



-- | <p>Represents the input for <a>IncreaseStreamRetentionPeriod</a>.</p>
newtype IncreaseStreamRetentionPeriodInput = IncreaseStreamRetentionPeriodInput 
  { "StreamName" :: (StreamName)
  , "RetentionPeriodHours" :: (RetentionPeriodHours)
  }
derive instance newtypeIncreaseStreamRetentionPeriodInput :: Newtype IncreaseStreamRetentionPeriodInput _
derive instance repGenericIncreaseStreamRetentionPeriodInput :: Generic IncreaseStreamRetentionPeriodInput _
instance showIncreaseStreamRetentionPeriodInput :: Show IncreaseStreamRetentionPeriodInput where show = genericShow
instance decodeIncreaseStreamRetentionPeriodInput :: Decode IncreaseStreamRetentionPeriodInput where decode = genericDecode options
instance encodeIncreaseStreamRetentionPeriodInput :: Encode IncreaseStreamRetentionPeriodInput where encode = genericEncode options

-- | Constructs IncreaseStreamRetentionPeriodInput from required parameters
newIncreaseStreamRetentionPeriodInput :: RetentionPeriodHours -> StreamName -> IncreaseStreamRetentionPeriodInput
newIncreaseStreamRetentionPeriodInput _RetentionPeriodHours _StreamName = IncreaseStreamRetentionPeriodInput { "RetentionPeriodHours": _RetentionPeriodHours, "StreamName": _StreamName }

-- | Constructs IncreaseStreamRetentionPeriodInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newIncreaseStreamRetentionPeriodInput' :: RetentionPeriodHours -> StreamName -> ( { "StreamName" :: (StreamName) , "RetentionPeriodHours" :: (RetentionPeriodHours) } -> {"StreamName" :: (StreamName) , "RetentionPeriodHours" :: (RetentionPeriodHours) } ) -> IncreaseStreamRetentionPeriodInput
newIncreaseStreamRetentionPeriodInput' _RetentionPeriodHours _StreamName customize = (IncreaseStreamRetentionPeriodInput <<< customize) { "RetentionPeriodHours": _RetentionPeriodHours, "StreamName": _StreamName }



-- | <p>A specified parameter exceeds its restrictions, is not supported, or can't be used. For more information, see the returned message.</p>
newtype InvalidArgumentException = InvalidArgumentException 
  { "message" :: NullOrUndefined (ErrorMessage)
  }
derive instance newtypeInvalidArgumentException :: Newtype InvalidArgumentException _
derive instance repGenericInvalidArgumentException :: Generic InvalidArgumentException _
instance showInvalidArgumentException :: Show InvalidArgumentException where show = genericShow
instance decodeInvalidArgumentException :: Decode InvalidArgumentException where decode = genericDecode options
instance encodeInvalidArgumentException :: Encode InvalidArgumentException where encode = genericEncode options

-- | Constructs InvalidArgumentException from required parameters
newInvalidArgumentException :: InvalidArgumentException
newInvalidArgumentException  = InvalidArgumentException { "message": (NullOrUndefined Nothing) }

-- | Constructs InvalidArgumentException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidArgumentException' :: ( { "message" :: NullOrUndefined (ErrorMessage) } -> {"message" :: NullOrUndefined (ErrorMessage) } ) -> InvalidArgumentException
newInvalidArgumentException'  customize = (InvalidArgumentException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>The ciphertext references a key that doesn't exist or that you don't have access to.</p>
newtype KMSAccessDeniedException = KMSAccessDeniedException 
  { "message" :: NullOrUndefined (ErrorMessage)
  }
derive instance newtypeKMSAccessDeniedException :: Newtype KMSAccessDeniedException _
derive instance repGenericKMSAccessDeniedException :: Generic KMSAccessDeniedException _
instance showKMSAccessDeniedException :: Show KMSAccessDeniedException where show = genericShow
instance decodeKMSAccessDeniedException :: Decode KMSAccessDeniedException where decode = genericDecode options
instance encodeKMSAccessDeniedException :: Encode KMSAccessDeniedException where encode = genericEncode options

-- | Constructs KMSAccessDeniedException from required parameters
newKMSAccessDeniedException :: KMSAccessDeniedException
newKMSAccessDeniedException  = KMSAccessDeniedException { "message": (NullOrUndefined Nothing) }

-- | Constructs KMSAccessDeniedException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newKMSAccessDeniedException' :: ( { "message" :: NullOrUndefined (ErrorMessage) } -> {"message" :: NullOrUndefined (ErrorMessage) } ) -> KMSAccessDeniedException
newKMSAccessDeniedException'  customize = (KMSAccessDeniedException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>The request was rejected because the specified customer master key (CMK) isn't enabled.</p>
newtype KMSDisabledException = KMSDisabledException 
  { "message" :: NullOrUndefined (ErrorMessage)
  }
derive instance newtypeKMSDisabledException :: Newtype KMSDisabledException _
derive instance repGenericKMSDisabledException :: Generic KMSDisabledException _
instance showKMSDisabledException :: Show KMSDisabledException where show = genericShow
instance decodeKMSDisabledException :: Decode KMSDisabledException where decode = genericDecode options
instance encodeKMSDisabledException :: Encode KMSDisabledException where encode = genericEncode options

-- | Constructs KMSDisabledException from required parameters
newKMSDisabledException :: KMSDisabledException
newKMSDisabledException  = KMSDisabledException { "message": (NullOrUndefined Nothing) }

-- | Constructs KMSDisabledException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newKMSDisabledException' :: ( { "message" :: NullOrUndefined (ErrorMessage) } -> {"message" :: NullOrUndefined (ErrorMessage) } ) -> KMSDisabledException
newKMSDisabledException'  customize = (KMSDisabledException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>The request was rejected because the state of the specified resource isn't valid for this request. For more information, see <a href="http://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">How Key State Affects Use of a Customer Master Key</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>
newtype KMSInvalidStateException = KMSInvalidStateException 
  { "message" :: NullOrUndefined (ErrorMessage)
  }
derive instance newtypeKMSInvalidStateException :: Newtype KMSInvalidStateException _
derive instance repGenericKMSInvalidStateException :: Generic KMSInvalidStateException _
instance showKMSInvalidStateException :: Show KMSInvalidStateException where show = genericShow
instance decodeKMSInvalidStateException :: Decode KMSInvalidStateException where decode = genericDecode options
instance encodeKMSInvalidStateException :: Encode KMSInvalidStateException where encode = genericEncode options

-- | Constructs KMSInvalidStateException from required parameters
newKMSInvalidStateException :: KMSInvalidStateException
newKMSInvalidStateException  = KMSInvalidStateException { "message": (NullOrUndefined Nothing) }

-- | Constructs KMSInvalidStateException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newKMSInvalidStateException' :: ( { "message" :: NullOrUndefined (ErrorMessage) } -> {"message" :: NullOrUndefined (ErrorMessage) } ) -> KMSInvalidStateException
newKMSInvalidStateException'  customize = (KMSInvalidStateException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>The request was rejected because the specified entity or resource can't be found.</p>
newtype KMSNotFoundException = KMSNotFoundException 
  { "message" :: NullOrUndefined (ErrorMessage)
  }
derive instance newtypeKMSNotFoundException :: Newtype KMSNotFoundException _
derive instance repGenericKMSNotFoundException :: Generic KMSNotFoundException _
instance showKMSNotFoundException :: Show KMSNotFoundException where show = genericShow
instance decodeKMSNotFoundException :: Decode KMSNotFoundException where decode = genericDecode options
instance encodeKMSNotFoundException :: Encode KMSNotFoundException where encode = genericEncode options

-- | Constructs KMSNotFoundException from required parameters
newKMSNotFoundException :: KMSNotFoundException
newKMSNotFoundException  = KMSNotFoundException { "message": (NullOrUndefined Nothing) }

-- | Constructs KMSNotFoundException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newKMSNotFoundException' :: ( { "message" :: NullOrUndefined (ErrorMessage) } -> {"message" :: NullOrUndefined (ErrorMessage) } ) -> KMSNotFoundException
newKMSNotFoundException'  customize = (KMSNotFoundException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>The AWS access key ID needs a subscription for the service.</p>
newtype KMSOptInRequired = KMSOptInRequired 
  { "message" :: NullOrUndefined (ErrorMessage)
  }
derive instance newtypeKMSOptInRequired :: Newtype KMSOptInRequired _
derive instance repGenericKMSOptInRequired :: Generic KMSOptInRequired _
instance showKMSOptInRequired :: Show KMSOptInRequired where show = genericShow
instance decodeKMSOptInRequired :: Decode KMSOptInRequired where decode = genericDecode options
instance encodeKMSOptInRequired :: Encode KMSOptInRequired where encode = genericEncode options

-- | Constructs KMSOptInRequired from required parameters
newKMSOptInRequired :: KMSOptInRequired
newKMSOptInRequired  = KMSOptInRequired { "message": (NullOrUndefined Nothing) }

-- | Constructs KMSOptInRequired's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newKMSOptInRequired' :: ( { "message" :: NullOrUndefined (ErrorMessage) } -> {"message" :: NullOrUndefined (ErrorMessage) } ) -> KMSOptInRequired
newKMSOptInRequired'  customize = (KMSOptInRequired <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>The request was denied due to request throttling. For more information about throttling, see <a href="http://docs.aws.amazon.com/kms/latest/developerguide/limits.html#requests-per-second">Limits</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>
newtype KMSThrottlingException = KMSThrottlingException 
  { "message" :: NullOrUndefined (ErrorMessage)
  }
derive instance newtypeKMSThrottlingException :: Newtype KMSThrottlingException _
derive instance repGenericKMSThrottlingException :: Generic KMSThrottlingException _
instance showKMSThrottlingException :: Show KMSThrottlingException where show = genericShow
instance decodeKMSThrottlingException :: Decode KMSThrottlingException where decode = genericDecode options
instance encodeKMSThrottlingException :: Encode KMSThrottlingException where encode = genericEncode options

-- | Constructs KMSThrottlingException from required parameters
newKMSThrottlingException :: KMSThrottlingException
newKMSThrottlingException  = KMSThrottlingException { "message": (NullOrUndefined Nothing) }

-- | Constructs KMSThrottlingException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newKMSThrottlingException' :: ( { "message" :: NullOrUndefined (ErrorMessage) } -> {"message" :: NullOrUndefined (ErrorMessage) } ) -> KMSThrottlingException
newKMSThrottlingException'  customize = (KMSThrottlingException <<< customize) { "message": (NullOrUndefined Nothing) }



newtype KeyId = KeyId String
derive instance newtypeKeyId :: Newtype KeyId _
derive instance repGenericKeyId :: Generic KeyId _
instance showKeyId :: Show KeyId where show = genericShow
instance decodeKeyId :: Decode KeyId where decode = genericDecode options
instance encodeKeyId :: Encode KeyId where encode = genericEncode options



-- | <p>The requested resource exceeds the maximum number allowed, or the number of concurrent stream requests exceeds the maximum number allowed. </p>
newtype LimitExceededException = LimitExceededException 
  { "message" :: NullOrUndefined (ErrorMessage)
  }
derive instance newtypeLimitExceededException :: Newtype LimitExceededException _
derive instance repGenericLimitExceededException :: Generic LimitExceededException _
instance showLimitExceededException :: Show LimitExceededException where show = genericShow
instance decodeLimitExceededException :: Decode LimitExceededException where decode = genericDecode options
instance encodeLimitExceededException :: Encode LimitExceededException where encode = genericEncode options

-- | Constructs LimitExceededException from required parameters
newLimitExceededException :: LimitExceededException
newLimitExceededException  = LimitExceededException { "message": (NullOrUndefined Nothing) }

-- | Constructs LimitExceededException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLimitExceededException' :: ( { "message" :: NullOrUndefined (ErrorMessage) } -> {"message" :: NullOrUndefined (ErrorMessage) } ) -> LimitExceededException
newLimitExceededException'  customize = (LimitExceededException <<< customize) { "message": (NullOrUndefined Nothing) }



newtype ListShardsInput = ListShardsInput 
  { "StreamName" :: NullOrUndefined (StreamName)
  , "NextToken" :: NullOrUndefined (NextToken)
  , "ExclusiveStartShardId" :: NullOrUndefined (ShardId)
  , "MaxResults" :: NullOrUndefined (ListShardsInputLimit)
  , "StreamCreationTimestamp" :: NullOrUndefined (Types.Timestamp)
  }
derive instance newtypeListShardsInput :: Newtype ListShardsInput _
derive instance repGenericListShardsInput :: Generic ListShardsInput _
instance showListShardsInput :: Show ListShardsInput where show = genericShow
instance decodeListShardsInput :: Decode ListShardsInput where decode = genericDecode options
instance encodeListShardsInput :: Encode ListShardsInput where encode = genericEncode options

-- | Constructs ListShardsInput from required parameters
newListShardsInput :: ListShardsInput
newListShardsInput  = ListShardsInput { "ExclusiveStartShardId": (NullOrUndefined Nothing), "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "StreamCreationTimestamp": (NullOrUndefined Nothing), "StreamName": (NullOrUndefined Nothing) }

-- | Constructs ListShardsInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListShardsInput' :: ( { "StreamName" :: NullOrUndefined (StreamName) , "NextToken" :: NullOrUndefined (NextToken) , "ExclusiveStartShardId" :: NullOrUndefined (ShardId) , "MaxResults" :: NullOrUndefined (ListShardsInputLimit) , "StreamCreationTimestamp" :: NullOrUndefined (Types.Timestamp) } -> {"StreamName" :: NullOrUndefined (StreamName) , "NextToken" :: NullOrUndefined (NextToken) , "ExclusiveStartShardId" :: NullOrUndefined (ShardId) , "MaxResults" :: NullOrUndefined (ListShardsInputLimit) , "StreamCreationTimestamp" :: NullOrUndefined (Types.Timestamp) } ) -> ListShardsInput
newListShardsInput'  customize = (ListShardsInput <<< customize) { "ExclusiveStartShardId": (NullOrUndefined Nothing), "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "StreamCreationTimestamp": (NullOrUndefined Nothing), "StreamName": (NullOrUndefined Nothing) }



newtype ListShardsInputLimit = ListShardsInputLimit Int
derive instance newtypeListShardsInputLimit :: Newtype ListShardsInputLimit _
derive instance repGenericListShardsInputLimit :: Generic ListShardsInputLimit _
instance showListShardsInputLimit :: Show ListShardsInputLimit where show = genericShow
instance decodeListShardsInputLimit :: Decode ListShardsInputLimit where decode = genericDecode options
instance encodeListShardsInputLimit :: Encode ListShardsInputLimit where encode = genericEncode options



newtype ListShardsOutput = ListShardsOutput 
  { "Shards" :: NullOrUndefined (ShardList)
  , "NextToken" :: NullOrUndefined (NextToken)
  }
derive instance newtypeListShardsOutput :: Newtype ListShardsOutput _
derive instance repGenericListShardsOutput :: Generic ListShardsOutput _
instance showListShardsOutput :: Show ListShardsOutput where show = genericShow
instance decodeListShardsOutput :: Decode ListShardsOutput where decode = genericDecode options
instance encodeListShardsOutput :: Encode ListShardsOutput where encode = genericEncode options

-- | Constructs ListShardsOutput from required parameters
newListShardsOutput :: ListShardsOutput
newListShardsOutput  = ListShardsOutput { "NextToken": (NullOrUndefined Nothing), "Shards": (NullOrUndefined Nothing) }

-- | Constructs ListShardsOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListShardsOutput' :: ( { "Shards" :: NullOrUndefined (ShardList) , "NextToken" :: NullOrUndefined (NextToken) } -> {"Shards" :: NullOrUndefined (ShardList) , "NextToken" :: NullOrUndefined (NextToken) } ) -> ListShardsOutput
newListShardsOutput'  customize = (ListShardsOutput <<< customize) { "NextToken": (NullOrUndefined Nothing), "Shards": (NullOrUndefined Nothing) }



-- | <p>Represents the input for <code>ListStreams</code>.</p>
newtype ListStreamsInput = ListStreamsInput 
  { "Limit" :: NullOrUndefined (ListStreamsInputLimit)
  , "ExclusiveStartStreamName" :: NullOrUndefined (StreamName)
  }
derive instance newtypeListStreamsInput :: Newtype ListStreamsInput _
derive instance repGenericListStreamsInput :: Generic ListStreamsInput _
instance showListStreamsInput :: Show ListStreamsInput where show = genericShow
instance decodeListStreamsInput :: Decode ListStreamsInput where decode = genericDecode options
instance encodeListStreamsInput :: Encode ListStreamsInput where encode = genericEncode options

-- | Constructs ListStreamsInput from required parameters
newListStreamsInput :: ListStreamsInput
newListStreamsInput  = ListStreamsInput { "ExclusiveStartStreamName": (NullOrUndefined Nothing), "Limit": (NullOrUndefined Nothing) }

-- | Constructs ListStreamsInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListStreamsInput' :: ( { "Limit" :: NullOrUndefined (ListStreamsInputLimit) , "ExclusiveStartStreamName" :: NullOrUndefined (StreamName) } -> {"Limit" :: NullOrUndefined (ListStreamsInputLimit) , "ExclusiveStartStreamName" :: NullOrUndefined (StreamName) } ) -> ListStreamsInput
newListStreamsInput'  customize = (ListStreamsInput <<< customize) { "ExclusiveStartStreamName": (NullOrUndefined Nothing), "Limit": (NullOrUndefined Nothing) }



newtype ListStreamsInputLimit = ListStreamsInputLimit Int
derive instance newtypeListStreamsInputLimit :: Newtype ListStreamsInputLimit _
derive instance repGenericListStreamsInputLimit :: Generic ListStreamsInputLimit _
instance showListStreamsInputLimit :: Show ListStreamsInputLimit where show = genericShow
instance decodeListStreamsInputLimit :: Decode ListStreamsInputLimit where decode = genericDecode options
instance encodeListStreamsInputLimit :: Encode ListStreamsInputLimit where encode = genericEncode options



-- | <p>Represents the output for <code>ListStreams</code>.</p>
newtype ListStreamsOutput = ListStreamsOutput 
  { "StreamNames" :: (StreamNameList)
  , "HasMoreStreams" :: (BooleanObject)
  }
derive instance newtypeListStreamsOutput :: Newtype ListStreamsOutput _
derive instance repGenericListStreamsOutput :: Generic ListStreamsOutput _
instance showListStreamsOutput :: Show ListStreamsOutput where show = genericShow
instance decodeListStreamsOutput :: Decode ListStreamsOutput where decode = genericDecode options
instance encodeListStreamsOutput :: Encode ListStreamsOutput where encode = genericEncode options

-- | Constructs ListStreamsOutput from required parameters
newListStreamsOutput :: BooleanObject -> StreamNameList -> ListStreamsOutput
newListStreamsOutput _HasMoreStreams _StreamNames = ListStreamsOutput { "HasMoreStreams": _HasMoreStreams, "StreamNames": _StreamNames }

-- | Constructs ListStreamsOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListStreamsOutput' :: BooleanObject -> StreamNameList -> ( { "StreamNames" :: (StreamNameList) , "HasMoreStreams" :: (BooleanObject) } -> {"StreamNames" :: (StreamNameList) , "HasMoreStreams" :: (BooleanObject) } ) -> ListStreamsOutput
newListStreamsOutput' _HasMoreStreams _StreamNames customize = (ListStreamsOutput <<< customize) { "HasMoreStreams": _HasMoreStreams, "StreamNames": _StreamNames }



-- | <p>Represents the input for <code>ListTagsForStream</code>.</p>
newtype ListTagsForStreamInput = ListTagsForStreamInput 
  { "StreamName" :: (StreamName)
  , "ExclusiveStartTagKey" :: NullOrUndefined (TagKey)
  , "Limit" :: NullOrUndefined (ListTagsForStreamInputLimit)
  }
derive instance newtypeListTagsForStreamInput :: Newtype ListTagsForStreamInput _
derive instance repGenericListTagsForStreamInput :: Generic ListTagsForStreamInput _
instance showListTagsForStreamInput :: Show ListTagsForStreamInput where show = genericShow
instance decodeListTagsForStreamInput :: Decode ListTagsForStreamInput where decode = genericDecode options
instance encodeListTagsForStreamInput :: Encode ListTagsForStreamInput where encode = genericEncode options

-- | Constructs ListTagsForStreamInput from required parameters
newListTagsForStreamInput :: StreamName -> ListTagsForStreamInput
newListTagsForStreamInput _StreamName = ListTagsForStreamInput { "StreamName": _StreamName, "ExclusiveStartTagKey": (NullOrUndefined Nothing), "Limit": (NullOrUndefined Nothing) }

-- | Constructs ListTagsForStreamInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListTagsForStreamInput' :: StreamName -> ( { "StreamName" :: (StreamName) , "ExclusiveStartTagKey" :: NullOrUndefined (TagKey) , "Limit" :: NullOrUndefined (ListTagsForStreamInputLimit) } -> {"StreamName" :: (StreamName) , "ExclusiveStartTagKey" :: NullOrUndefined (TagKey) , "Limit" :: NullOrUndefined (ListTagsForStreamInputLimit) } ) -> ListTagsForStreamInput
newListTagsForStreamInput' _StreamName customize = (ListTagsForStreamInput <<< customize) { "StreamName": _StreamName, "ExclusiveStartTagKey": (NullOrUndefined Nothing), "Limit": (NullOrUndefined Nothing) }



newtype ListTagsForStreamInputLimit = ListTagsForStreamInputLimit Int
derive instance newtypeListTagsForStreamInputLimit :: Newtype ListTagsForStreamInputLimit _
derive instance repGenericListTagsForStreamInputLimit :: Generic ListTagsForStreamInputLimit _
instance showListTagsForStreamInputLimit :: Show ListTagsForStreamInputLimit where show = genericShow
instance decodeListTagsForStreamInputLimit :: Decode ListTagsForStreamInputLimit where decode = genericDecode options
instance encodeListTagsForStreamInputLimit :: Encode ListTagsForStreamInputLimit where encode = genericEncode options



-- | <p>Represents the output for <code>ListTagsForStream</code>.</p>
newtype ListTagsForStreamOutput = ListTagsForStreamOutput 
  { "Tags" :: (TagList)
  , "HasMoreTags" :: (BooleanObject)
  }
derive instance newtypeListTagsForStreamOutput :: Newtype ListTagsForStreamOutput _
derive instance repGenericListTagsForStreamOutput :: Generic ListTagsForStreamOutput _
instance showListTagsForStreamOutput :: Show ListTagsForStreamOutput where show = genericShow
instance decodeListTagsForStreamOutput :: Decode ListTagsForStreamOutput where decode = genericDecode options
instance encodeListTagsForStreamOutput :: Encode ListTagsForStreamOutput where encode = genericEncode options

-- | Constructs ListTagsForStreamOutput from required parameters
newListTagsForStreamOutput :: BooleanObject -> TagList -> ListTagsForStreamOutput
newListTagsForStreamOutput _HasMoreTags _Tags = ListTagsForStreamOutput { "HasMoreTags": _HasMoreTags, "Tags": _Tags }

-- | Constructs ListTagsForStreamOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListTagsForStreamOutput' :: BooleanObject -> TagList -> ( { "Tags" :: (TagList) , "HasMoreTags" :: (BooleanObject) } -> {"Tags" :: (TagList) , "HasMoreTags" :: (BooleanObject) } ) -> ListTagsForStreamOutput
newListTagsForStreamOutput' _HasMoreTags _Tags customize = (ListTagsForStreamOutput <<< customize) { "HasMoreTags": _HasMoreTags, "Tags": _Tags }



-- | <p>Represents the input for <code>MergeShards</code>.</p>
newtype MergeShardsInput = MergeShardsInput 
  { "StreamName" :: (StreamName)
  , "ShardToMerge" :: (ShardId)
  , "AdjacentShardToMerge" :: (ShardId)
  }
derive instance newtypeMergeShardsInput :: Newtype MergeShardsInput _
derive instance repGenericMergeShardsInput :: Generic MergeShardsInput _
instance showMergeShardsInput :: Show MergeShardsInput where show = genericShow
instance decodeMergeShardsInput :: Decode MergeShardsInput where decode = genericDecode options
instance encodeMergeShardsInput :: Encode MergeShardsInput where encode = genericEncode options

-- | Constructs MergeShardsInput from required parameters
newMergeShardsInput :: ShardId -> ShardId -> StreamName -> MergeShardsInput
newMergeShardsInput _AdjacentShardToMerge _ShardToMerge _StreamName = MergeShardsInput { "AdjacentShardToMerge": _AdjacentShardToMerge, "ShardToMerge": _ShardToMerge, "StreamName": _StreamName }

-- | Constructs MergeShardsInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newMergeShardsInput' :: ShardId -> ShardId -> StreamName -> ( { "StreamName" :: (StreamName) , "ShardToMerge" :: (ShardId) , "AdjacentShardToMerge" :: (ShardId) } -> {"StreamName" :: (StreamName) , "ShardToMerge" :: (ShardId) , "AdjacentShardToMerge" :: (ShardId) } ) -> MergeShardsInput
newMergeShardsInput' _AdjacentShardToMerge _ShardToMerge _StreamName customize = (MergeShardsInput <<< customize) { "AdjacentShardToMerge": _AdjacentShardToMerge, "ShardToMerge": _ShardToMerge, "StreamName": _StreamName }



newtype MetricsName = MetricsName String
derive instance newtypeMetricsName :: Newtype MetricsName _
derive instance repGenericMetricsName :: Generic MetricsName _
instance showMetricsName :: Show MetricsName where show = genericShow
instance decodeMetricsName :: Decode MetricsName where decode = genericDecode options
instance encodeMetricsName :: Encode MetricsName where encode = genericEncode options



newtype MetricsNameList = MetricsNameList (Array MetricsName)
derive instance newtypeMetricsNameList :: Newtype MetricsNameList _
derive instance repGenericMetricsNameList :: Generic MetricsNameList _
instance showMetricsNameList :: Show MetricsNameList where show = genericShow
instance decodeMetricsNameList :: Decode MetricsNameList where decode = genericDecode options
instance encodeMetricsNameList :: Encode MetricsNameList where encode = genericEncode options



newtype MillisBehindLatest = MillisBehindLatest Number
derive instance newtypeMillisBehindLatest :: Newtype MillisBehindLatest _
derive instance repGenericMillisBehindLatest :: Generic MillisBehindLatest _
instance showMillisBehindLatest :: Show MillisBehindLatest where show = genericShow
instance decodeMillisBehindLatest :: Decode MillisBehindLatest where decode = genericDecode options
instance encodeMillisBehindLatest :: Encode MillisBehindLatest where encode = genericEncode options



newtype NextToken = NextToken String
derive instance newtypeNextToken :: Newtype NextToken _
derive instance repGenericNextToken :: Generic NextToken _
instance showNextToken :: Show NextToken where show = genericShow
instance decodeNextToken :: Decode NextToken where decode = genericDecode options
instance encodeNextToken :: Encode NextToken where encode = genericEncode options



newtype PartitionKey = PartitionKey String
derive instance newtypePartitionKey :: Newtype PartitionKey _
derive instance repGenericPartitionKey :: Generic PartitionKey _
instance showPartitionKey :: Show PartitionKey where show = genericShow
instance decodePartitionKey :: Decode PartitionKey where decode = genericDecode options
instance encodePartitionKey :: Encode PartitionKey where encode = genericEncode options



newtype PositiveIntegerObject = PositiveIntegerObject Int
derive instance newtypePositiveIntegerObject :: Newtype PositiveIntegerObject _
derive instance repGenericPositiveIntegerObject :: Generic PositiveIntegerObject _
instance showPositiveIntegerObject :: Show PositiveIntegerObject where show = genericShow
instance decodePositiveIntegerObject :: Decode PositiveIntegerObject where decode = genericDecode options
instance encodePositiveIntegerObject :: Encode PositiveIntegerObject where encode = genericEncode options



-- | <p>The request rate for the stream is too high, or the requested data is too large for the available throughput. Reduce the frequency or size of your requests. For more information, see <a href="http://docs.aws.amazon.com/kinesis/latest/dev/service-sizes-and-limits.html">Streams Limits</a> in the <i>Amazon Kinesis Data Streams Developer Guide</i>, and <a href="http://docs.aws.amazon.com/general/latest/gr/api-retries.html">Error Retries and Exponential Backoff in AWS</a> in the <i>AWS General Reference</i>.</p>
newtype ProvisionedThroughputExceededException = ProvisionedThroughputExceededException 
  { "message" :: NullOrUndefined (ErrorMessage)
  }
derive instance newtypeProvisionedThroughputExceededException :: Newtype ProvisionedThroughputExceededException _
derive instance repGenericProvisionedThroughputExceededException :: Generic ProvisionedThroughputExceededException _
instance showProvisionedThroughputExceededException :: Show ProvisionedThroughputExceededException where show = genericShow
instance decodeProvisionedThroughputExceededException :: Decode ProvisionedThroughputExceededException where decode = genericDecode options
instance encodeProvisionedThroughputExceededException :: Encode ProvisionedThroughputExceededException where encode = genericEncode options

-- | Constructs ProvisionedThroughputExceededException from required parameters
newProvisionedThroughputExceededException :: ProvisionedThroughputExceededException
newProvisionedThroughputExceededException  = ProvisionedThroughputExceededException { "message": (NullOrUndefined Nothing) }

-- | Constructs ProvisionedThroughputExceededException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newProvisionedThroughputExceededException' :: ( { "message" :: NullOrUndefined (ErrorMessage) } -> {"message" :: NullOrUndefined (ErrorMessage) } ) -> ProvisionedThroughputExceededException
newProvisionedThroughputExceededException'  customize = (ProvisionedThroughputExceededException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>Represents the input for <code>PutRecord</code>.</p>
newtype PutRecordInput = PutRecordInput 
  { "StreamName" :: (StreamName)
  , "Data" :: (Data)
  , "PartitionKey" :: (PartitionKey)
  , "ExplicitHashKey" :: NullOrUndefined (HashKey)
  , "SequenceNumberForOrdering" :: NullOrUndefined (SequenceNumber)
  }
derive instance newtypePutRecordInput :: Newtype PutRecordInput _
derive instance repGenericPutRecordInput :: Generic PutRecordInput _
instance showPutRecordInput :: Show PutRecordInput where show = genericShow
instance decodePutRecordInput :: Decode PutRecordInput where decode = genericDecode options
instance encodePutRecordInput :: Encode PutRecordInput where encode = genericEncode options

-- | Constructs PutRecordInput from required parameters
newPutRecordInput :: Data -> PartitionKey -> StreamName -> PutRecordInput
newPutRecordInput _Data _PartitionKey _StreamName = PutRecordInput { "Data": _Data, "PartitionKey": _PartitionKey, "StreamName": _StreamName, "ExplicitHashKey": (NullOrUndefined Nothing), "SequenceNumberForOrdering": (NullOrUndefined Nothing) }

-- | Constructs PutRecordInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPutRecordInput' :: Data -> PartitionKey -> StreamName -> ( { "StreamName" :: (StreamName) , "Data" :: (Data) , "PartitionKey" :: (PartitionKey) , "ExplicitHashKey" :: NullOrUndefined (HashKey) , "SequenceNumberForOrdering" :: NullOrUndefined (SequenceNumber) } -> {"StreamName" :: (StreamName) , "Data" :: (Data) , "PartitionKey" :: (PartitionKey) , "ExplicitHashKey" :: NullOrUndefined (HashKey) , "SequenceNumberForOrdering" :: NullOrUndefined (SequenceNumber) } ) -> PutRecordInput
newPutRecordInput' _Data _PartitionKey _StreamName customize = (PutRecordInput <<< customize) { "Data": _Data, "PartitionKey": _PartitionKey, "StreamName": _StreamName, "ExplicitHashKey": (NullOrUndefined Nothing), "SequenceNumberForOrdering": (NullOrUndefined Nothing) }



-- | <p>Represents the output for <code>PutRecord</code>.</p>
newtype PutRecordOutput = PutRecordOutput 
  { "ShardId" :: (ShardId)
  , "SequenceNumber" :: (SequenceNumber)
  , "EncryptionType" :: NullOrUndefined (EncryptionType)
  }
derive instance newtypePutRecordOutput :: Newtype PutRecordOutput _
derive instance repGenericPutRecordOutput :: Generic PutRecordOutput _
instance showPutRecordOutput :: Show PutRecordOutput where show = genericShow
instance decodePutRecordOutput :: Decode PutRecordOutput where decode = genericDecode options
instance encodePutRecordOutput :: Encode PutRecordOutput where encode = genericEncode options

-- | Constructs PutRecordOutput from required parameters
newPutRecordOutput :: SequenceNumber -> ShardId -> PutRecordOutput
newPutRecordOutput _SequenceNumber _ShardId = PutRecordOutput { "SequenceNumber": _SequenceNumber, "ShardId": _ShardId, "EncryptionType": (NullOrUndefined Nothing) }

-- | Constructs PutRecordOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPutRecordOutput' :: SequenceNumber -> ShardId -> ( { "ShardId" :: (ShardId) , "SequenceNumber" :: (SequenceNumber) , "EncryptionType" :: NullOrUndefined (EncryptionType) } -> {"ShardId" :: (ShardId) , "SequenceNumber" :: (SequenceNumber) , "EncryptionType" :: NullOrUndefined (EncryptionType) } ) -> PutRecordOutput
newPutRecordOutput' _SequenceNumber _ShardId customize = (PutRecordOutput <<< customize) { "SequenceNumber": _SequenceNumber, "ShardId": _ShardId, "EncryptionType": (NullOrUndefined Nothing) }



-- | <p>A <code>PutRecords</code> request.</p>
newtype PutRecordsInput = PutRecordsInput 
  { "Records" :: (PutRecordsRequestEntryList)
  , "StreamName" :: (StreamName)
  }
derive instance newtypePutRecordsInput :: Newtype PutRecordsInput _
derive instance repGenericPutRecordsInput :: Generic PutRecordsInput _
instance showPutRecordsInput :: Show PutRecordsInput where show = genericShow
instance decodePutRecordsInput :: Decode PutRecordsInput where decode = genericDecode options
instance encodePutRecordsInput :: Encode PutRecordsInput where encode = genericEncode options

-- | Constructs PutRecordsInput from required parameters
newPutRecordsInput :: PutRecordsRequestEntryList -> StreamName -> PutRecordsInput
newPutRecordsInput _Records _StreamName = PutRecordsInput { "Records": _Records, "StreamName": _StreamName }

-- | Constructs PutRecordsInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPutRecordsInput' :: PutRecordsRequestEntryList -> StreamName -> ( { "Records" :: (PutRecordsRequestEntryList) , "StreamName" :: (StreamName) } -> {"Records" :: (PutRecordsRequestEntryList) , "StreamName" :: (StreamName) } ) -> PutRecordsInput
newPutRecordsInput' _Records _StreamName customize = (PutRecordsInput <<< customize) { "Records": _Records, "StreamName": _StreamName }



-- | <p> <code>PutRecords</code> results.</p>
newtype PutRecordsOutput = PutRecordsOutput 
  { "FailedRecordCount" :: NullOrUndefined (PositiveIntegerObject)
  , "Records" :: (PutRecordsResultEntryList)
  , "EncryptionType" :: NullOrUndefined (EncryptionType)
  }
derive instance newtypePutRecordsOutput :: Newtype PutRecordsOutput _
derive instance repGenericPutRecordsOutput :: Generic PutRecordsOutput _
instance showPutRecordsOutput :: Show PutRecordsOutput where show = genericShow
instance decodePutRecordsOutput :: Decode PutRecordsOutput where decode = genericDecode options
instance encodePutRecordsOutput :: Encode PutRecordsOutput where encode = genericEncode options

-- | Constructs PutRecordsOutput from required parameters
newPutRecordsOutput :: PutRecordsResultEntryList -> PutRecordsOutput
newPutRecordsOutput _Records = PutRecordsOutput { "Records": _Records, "EncryptionType": (NullOrUndefined Nothing), "FailedRecordCount": (NullOrUndefined Nothing) }

-- | Constructs PutRecordsOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPutRecordsOutput' :: PutRecordsResultEntryList -> ( { "FailedRecordCount" :: NullOrUndefined (PositiveIntegerObject) , "Records" :: (PutRecordsResultEntryList) , "EncryptionType" :: NullOrUndefined (EncryptionType) } -> {"FailedRecordCount" :: NullOrUndefined (PositiveIntegerObject) , "Records" :: (PutRecordsResultEntryList) , "EncryptionType" :: NullOrUndefined (EncryptionType) } ) -> PutRecordsOutput
newPutRecordsOutput' _Records customize = (PutRecordsOutput <<< customize) { "Records": _Records, "EncryptionType": (NullOrUndefined Nothing), "FailedRecordCount": (NullOrUndefined Nothing) }



-- | <p>Represents the output for <code>PutRecords</code>.</p>
newtype PutRecordsRequestEntry = PutRecordsRequestEntry 
  { "Data" :: (Data)
  , "ExplicitHashKey" :: NullOrUndefined (HashKey)
  , "PartitionKey" :: (PartitionKey)
  }
derive instance newtypePutRecordsRequestEntry :: Newtype PutRecordsRequestEntry _
derive instance repGenericPutRecordsRequestEntry :: Generic PutRecordsRequestEntry _
instance showPutRecordsRequestEntry :: Show PutRecordsRequestEntry where show = genericShow
instance decodePutRecordsRequestEntry :: Decode PutRecordsRequestEntry where decode = genericDecode options
instance encodePutRecordsRequestEntry :: Encode PutRecordsRequestEntry where encode = genericEncode options

-- | Constructs PutRecordsRequestEntry from required parameters
newPutRecordsRequestEntry :: Data -> PartitionKey -> PutRecordsRequestEntry
newPutRecordsRequestEntry _Data _PartitionKey = PutRecordsRequestEntry { "Data": _Data, "PartitionKey": _PartitionKey, "ExplicitHashKey": (NullOrUndefined Nothing) }

-- | Constructs PutRecordsRequestEntry's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPutRecordsRequestEntry' :: Data -> PartitionKey -> ( { "Data" :: (Data) , "ExplicitHashKey" :: NullOrUndefined (HashKey) , "PartitionKey" :: (PartitionKey) } -> {"Data" :: (Data) , "ExplicitHashKey" :: NullOrUndefined (HashKey) , "PartitionKey" :: (PartitionKey) } ) -> PutRecordsRequestEntry
newPutRecordsRequestEntry' _Data _PartitionKey customize = (PutRecordsRequestEntry <<< customize) { "Data": _Data, "PartitionKey": _PartitionKey, "ExplicitHashKey": (NullOrUndefined Nothing) }



newtype PutRecordsRequestEntryList = PutRecordsRequestEntryList (Array PutRecordsRequestEntry)
derive instance newtypePutRecordsRequestEntryList :: Newtype PutRecordsRequestEntryList _
derive instance repGenericPutRecordsRequestEntryList :: Generic PutRecordsRequestEntryList _
instance showPutRecordsRequestEntryList :: Show PutRecordsRequestEntryList where show = genericShow
instance decodePutRecordsRequestEntryList :: Decode PutRecordsRequestEntryList where decode = genericDecode options
instance encodePutRecordsRequestEntryList :: Encode PutRecordsRequestEntryList where encode = genericEncode options



-- | <p>Represents the result of an individual record from a <code>PutRecords</code> request. A record that is successfully added to a stream includes <code>SequenceNumber</code> and <code>ShardId</code> in the result. A record that fails to be added to the stream includes <code>ErrorCode</code> and <code>ErrorMessage</code> in the result.</p>
newtype PutRecordsResultEntry = PutRecordsResultEntry 
  { "SequenceNumber" :: NullOrUndefined (SequenceNumber)
  , "ShardId" :: NullOrUndefined (ShardId)
  , "ErrorCode" :: NullOrUndefined (ErrorCode)
  , "ErrorMessage" :: NullOrUndefined (ErrorMessage)
  }
derive instance newtypePutRecordsResultEntry :: Newtype PutRecordsResultEntry _
derive instance repGenericPutRecordsResultEntry :: Generic PutRecordsResultEntry _
instance showPutRecordsResultEntry :: Show PutRecordsResultEntry where show = genericShow
instance decodePutRecordsResultEntry :: Decode PutRecordsResultEntry where decode = genericDecode options
instance encodePutRecordsResultEntry :: Encode PutRecordsResultEntry where encode = genericEncode options

-- | Constructs PutRecordsResultEntry from required parameters
newPutRecordsResultEntry :: PutRecordsResultEntry
newPutRecordsResultEntry  = PutRecordsResultEntry { "ErrorCode": (NullOrUndefined Nothing), "ErrorMessage": (NullOrUndefined Nothing), "SequenceNumber": (NullOrUndefined Nothing), "ShardId": (NullOrUndefined Nothing) }

-- | Constructs PutRecordsResultEntry's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPutRecordsResultEntry' :: ( { "SequenceNumber" :: NullOrUndefined (SequenceNumber) , "ShardId" :: NullOrUndefined (ShardId) , "ErrorCode" :: NullOrUndefined (ErrorCode) , "ErrorMessage" :: NullOrUndefined (ErrorMessage) } -> {"SequenceNumber" :: NullOrUndefined (SequenceNumber) , "ShardId" :: NullOrUndefined (ShardId) , "ErrorCode" :: NullOrUndefined (ErrorCode) , "ErrorMessage" :: NullOrUndefined (ErrorMessage) } ) -> PutRecordsResultEntry
newPutRecordsResultEntry'  customize = (PutRecordsResultEntry <<< customize) { "ErrorCode": (NullOrUndefined Nothing), "ErrorMessage": (NullOrUndefined Nothing), "SequenceNumber": (NullOrUndefined Nothing), "ShardId": (NullOrUndefined Nothing) }



newtype PutRecordsResultEntryList = PutRecordsResultEntryList (Array PutRecordsResultEntry)
derive instance newtypePutRecordsResultEntryList :: Newtype PutRecordsResultEntryList _
derive instance repGenericPutRecordsResultEntryList :: Generic PutRecordsResultEntryList _
instance showPutRecordsResultEntryList :: Show PutRecordsResultEntryList where show = genericShow
instance decodePutRecordsResultEntryList :: Decode PutRecordsResultEntryList where decode = genericDecode options
instance encodePutRecordsResultEntryList :: Encode PutRecordsResultEntryList where encode = genericEncode options



-- | <p>The unit of data of the Kinesis data stream, which is composed of a sequence number, a partition key, and a data blob.</p>
newtype Record'' = Record'' 
  { "SequenceNumber" :: (SequenceNumber)
  , "ApproximateArrivalTimestamp" :: NullOrUndefined (Types.Timestamp)
  , "Data" :: (Data)
  , "PartitionKey" :: (PartitionKey)
  , "EncryptionType" :: NullOrUndefined (EncryptionType)
  }
derive instance newtypeRecord'' :: Newtype Record'' _
derive instance repGenericRecord'' :: Generic Record'' _
instance showRecord'' :: Show Record'' where show = genericShow
instance decodeRecord'' :: Decode Record'' where decode = genericDecode options
instance encodeRecord'' :: Encode Record'' where encode = genericEncode options

-- | Constructs Record'' from required parameters
newRecord'' :: Data -> PartitionKey -> SequenceNumber -> Record''
newRecord'' _Data _PartitionKey _SequenceNumber = Record'' { "Data": _Data, "PartitionKey": _PartitionKey, "SequenceNumber": _SequenceNumber, "ApproximateArrivalTimestamp": (NullOrUndefined Nothing), "EncryptionType": (NullOrUndefined Nothing) }

-- | Constructs Record'''s fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRecord''' :: Data -> PartitionKey -> SequenceNumber -> ( { "SequenceNumber" :: (SequenceNumber) , "ApproximateArrivalTimestamp" :: NullOrUndefined (Types.Timestamp) , "Data" :: (Data) , "PartitionKey" :: (PartitionKey) , "EncryptionType" :: NullOrUndefined (EncryptionType) } -> {"SequenceNumber" :: (SequenceNumber) , "ApproximateArrivalTimestamp" :: NullOrUndefined (Types.Timestamp) , "Data" :: (Data) , "PartitionKey" :: (PartitionKey) , "EncryptionType" :: NullOrUndefined (EncryptionType) } ) -> Record''
newRecord''' _Data _PartitionKey _SequenceNumber customize = (Record'' <<< customize) { "Data": _Data, "PartitionKey": _PartitionKey, "SequenceNumber": _SequenceNumber, "ApproximateArrivalTimestamp": (NullOrUndefined Nothing), "EncryptionType": (NullOrUndefined Nothing) }



newtype RecordList = RecordList (Array Record'')
derive instance newtypeRecordList :: Newtype RecordList _
derive instance repGenericRecordList :: Generic RecordList _
instance showRecordList :: Show RecordList where show = genericShow
instance decodeRecordList :: Decode RecordList where decode = genericDecode options
instance encodeRecordList :: Encode RecordList where encode = genericEncode options



-- | <p>Represents the input for <code>RemoveTagsFromStream</code>.</p>
newtype RemoveTagsFromStreamInput = RemoveTagsFromStreamInput 
  { "StreamName" :: (StreamName)
  , "TagKeys" :: (TagKeyList)
  }
derive instance newtypeRemoveTagsFromStreamInput :: Newtype RemoveTagsFromStreamInput _
derive instance repGenericRemoveTagsFromStreamInput :: Generic RemoveTagsFromStreamInput _
instance showRemoveTagsFromStreamInput :: Show RemoveTagsFromStreamInput where show = genericShow
instance decodeRemoveTagsFromStreamInput :: Decode RemoveTagsFromStreamInput where decode = genericDecode options
instance encodeRemoveTagsFromStreamInput :: Encode RemoveTagsFromStreamInput where encode = genericEncode options

-- | Constructs RemoveTagsFromStreamInput from required parameters
newRemoveTagsFromStreamInput :: StreamName -> TagKeyList -> RemoveTagsFromStreamInput
newRemoveTagsFromStreamInput _StreamName _TagKeys = RemoveTagsFromStreamInput { "StreamName": _StreamName, "TagKeys": _TagKeys }

-- | Constructs RemoveTagsFromStreamInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRemoveTagsFromStreamInput' :: StreamName -> TagKeyList -> ( { "StreamName" :: (StreamName) , "TagKeys" :: (TagKeyList) } -> {"StreamName" :: (StreamName) , "TagKeys" :: (TagKeyList) } ) -> RemoveTagsFromStreamInput
newRemoveTagsFromStreamInput' _StreamName _TagKeys customize = (RemoveTagsFromStreamInput <<< customize) { "StreamName": _StreamName, "TagKeys": _TagKeys }



-- | <p>The resource is not available for this operation. For successful operation, the resource must be in the <code>ACTIVE</code> state.</p>
newtype ResourceInUseException = ResourceInUseException 
  { "message" :: NullOrUndefined (ErrorMessage)
  }
derive instance newtypeResourceInUseException :: Newtype ResourceInUseException _
derive instance repGenericResourceInUseException :: Generic ResourceInUseException _
instance showResourceInUseException :: Show ResourceInUseException where show = genericShow
instance decodeResourceInUseException :: Decode ResourceInUseException where decode = genericDecode options
instance encodeResourceInUseException :: Encode ResourceInUseException where encode = genericEncode options

-- | Constructs ResourceInUseException from required parameters
newResourceInUseException :: ResourceInUseException
newResourceInUseException  = ResourceInUseException { "message": (NullOrUndefined Nothing) }

-- | Constructs ResourceInUseException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newResourceInUseException' :: ( { "message" :: NullOrUndefined (ErrorMessage) } -> {"message" :: NullOrUndefined (ErrorMessage) } ) -> ResourceInUseException
newResourceInUseException'  customize = (ResourceInUseException <<< customize) { "message": (NullOrUndefined Nothing) }



-- | <p>The requested resource could not be found. The stream might not be specified correctly.</p>
newtype ResourceNotFoundException = ResourceNotFoundException 
  { "message" :: NullOrUndefined (ErrorMessage)
  }
derive instance newtypeResourceNotFoundException :: Newtype ResourceNotFoundException _
derive instance repGenericResourceNotFoundException :: Generic ResourceNotFoundException _
instance showResourceNotFoundException :: Show ResourceNotFoundException where show = genericShow
instance decodeResourceNotFoundException :: Decode ResourceNotFoundException where decode = genericDecode options
instance encodeResourceNotFoundException :: Encode ResourceNotFoundException where encode = genericEncode options

-- | Constructs ResourceNotFoundException from required parameters
newResourceNotFoundException :: ResourceNotFoundException
newResourceNotFoundException  = ResourceNotFoundException { "message": (NullOrUndefined Nothing) }

-- | Constructs ResourceNotFoundException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newResourceNotFoundException' :: ( { "message" :: NullOrUndefined (ErrorMessage) } -> {"message" :: NullOrUndefined (ErrorMessage) } ) -> ResourceNotFoundException
newResourceNotFoundException'  customize = (ResourceNotFoundException <<< customize) { "message": (NullOrUndefined Nothing) }



newtype RetentionPeriodHours = RetentionPeriodHours Int
derive instance newtypeRetentionPeriodHours :: Newtype RetentionPeriodHours _
derive instance repGenericRetentionPeriodHours :: Generic RetentionPeriodHours _
instance showRetentionPeriodHours :: Show RetentionPeriodHours where show = genericShow
instance decodeRetentionPeriodHours :: Decode RetentionPeriodHours where decode = genericDecode options
instance encodeRetentionPeriodHours :: Encode RetentionPeriodHours where encode = genericEncode options



newtype ScalingType = ScalingType String
derive instance newtypeScalingType :: Newtype ScalingType _
derive instance repGenericScalingType :: Generic ScalingType _
instance showScalingType :: Show ScalingType where show = genericShow
instance decodeScalingType :: Decode ScalingType where decode = genericDecode options
instance encodeScalingType :: Encode ScalingType where encode = genericEncode options



newtype SequenceNumber = SequenceNumber String
derive instance newtypeSequenceNumber :: Newtype SequenceNumber _
derive instance repGenericSequenceNumber :: Generic SequenceNumber _
instance showSequenceNumber :: Show SequenceNumber where show = genericShow
instance decodeSequenceNumber :: Decode SequenceNumber where decode = genericDecode options
instance encodeSequenceNumber :: Encode SequenceNumber where encode = genericEncode options



-- | <p>The range of possible sequence numbers for the shard.</p>
newtype SequenceNumberRange = SequenceNumberRange 
  { "StartingSequenceNumber" :: (SequenceNumber)
  , "EndingSequenceNumber" :: NullOrUndefined (SequenceNumber)
  }
derive instance newtypeSequenceNumberRange :: Newtype SequenceNumberRange _
derive instance repGenericSequenceNumberRange :: Generic SequenceNumberRange _
instance showSequenceNumberRange :: Show SequenceNumberRange where show = genericShow
instance decodeSequenceNumberRange :: Decode SequenceNumberRange where decode = genericDecode options
instance encodeSequenceNumberRange :: Encode SequenceNumberRange where encode = genericEncode options

-- | Constructs SequenceNumberRange from required parameters
newSequenceNumberRange :: SequenceNumber -> SequenceNumberRange
newSequenceNumberRange _StartingSequenceNumber = SequenceNumberRange { "StartingSequenceNumber": _StartingSequenceNumber, "EndingSequenceNumber": (NullOrUndefined Nothing) }

-- | Constructs SequenceNumberRange's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSequenceNumberRange' :: SequenceNumber -> ( { "StartingSequenceNumber" :: (SequenceNumber) , "EndingSequenceNumber" :: NullOrUndefined (SequenceNumber) } -> {"StartingSequenceNumber" :: (SequenceNumber) , "EndingSequenceNumber" :: NullOrUndefined (SequenceNumber) } ) -> SequenceNumberRange
newSequenceNumberRange' _StartingSequenceNumber customize = (SequenceNumberRange <<< customize) { "StartingSequenceNumber": _StartingSequenceNumber, "EndingSequenceNumber": (NullOrUndefined Nothing) }



-- | <p>A uniquely identified group of data records in a Kinesis data stream.</p>
newtype Shard = Shard 
  { "ShardId" :: (ShardId)
  , "ParentShardId" :: NullOrUndefined (ShardId)
  , "AdjacentParentShardId" :: NullOrUndefined (ShardId)
  , "HashKeyRange" :: (HashKeyRange)
  , "SequenceNumberRange" :: (SequenceNumberRange)
  }
derive instance newtypeShard :: Newtype Shard _
derive instance repGenericShard :: Generic Shard _
instance showShard :: Show Shard where show = genericShow
instance decodeShard :: Decode Shard where decode = genericDecode options
instance encodeShard :: Encode Shard where encode = genericEncode options

-- | Constructs Shard from required parameters
newShard :: HashKeyRange -> SequenceNumberRange -> ShardId -> Shard
newShard _HashKeyRange _SequenceNumberRange _ShardId = Shard { "HashKeyRange": _HashKeyRange, "SequenceNumberRange": _SequenceNumberRange, "ShardId": _ShardId, "AdjacentParentShardId": (NullOrUndefined Nothing), "ParentShardId": (NullOrUndefined Nothing) }

-- | Constructs Shard's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newShard' :: HashKeyRange -> SequenceNumberRange -> ShardId -> ( { "ShardId" :: (ShardId) , "ParentShardId" :: NullOrUndefined (ShardId) , "AdjacentParentShardId" :: NullOrUndefined (ShardId) , "HashKeyRange" :: (HashKeyRange) , "SequenceNumberRange" :: (SequenceNumberRange) } -> {"ShardId" :: (ShardId) , "ParentShardId" :: NullOrUndefined (ShardId) , "AdjacentParentShardId" :: NullOrUndefined (ShardId) , "HashKeyRange" :: (HashKeyRange) , "SequenceNumberRange" :: (SequenceNumberRange) } ) -> Shard
newShard' _HashKeyRange _SequenceNumberRange _ShardId customize = (Shard <<< customize) { "HashKeyRange": _HashKeyRange, "SequenceNumberRange": _SequenceNumberRange, "ShardId": _ShardId, "AdjacentParentShardId": (NullOrUndefined Nothing), "ParentShardId": (NullOrUndefined Nothing) }



newtype ShardCountObject = ShardCountObject Int
derive instance newtypeShardCountObject :: Newtype ShardCountObject _
derive instance repGenericShardCountObject :: Generic ShardCountObject _
instance showShardCountObject :: Show ShardCountObject where show = genericShow
instance decodeShardCountObject :: Decode ShardCountObject where decode = genericDecode options
instance encodeShardCountObject :: Encode ShardCountObject where encode = genericEncode options



newtype ShardId = ShardId String
derive instance newtypeShardId :: Newtype ShardId _
derive instance repGenericShardId :: Generic ShardId _
instance showShardId :: Show ShardId where show = genericShow
instance decodeShardId :: Decode ShardId where decode = genericDecode options
instance encodeShardId :: Encode ShardId where encode = genericEncode options



newtype ShardIterator = ShardIterator String
derive instance newtypeShardIterator :: Newtype ShardIterator _
derive instance repGenericShardIterator :: Generic ShardIterator _
instance showShardIterator :: Show ShardIterator where show = genericShow
instance decodeShardIterator :: Decode ShardIterator where decode = genericDecode options
instance encodeShardIterator :: Encode ShardIterator where encode = genericEncode options



newtype ShardIteratorType = ShardIteratorType String
derive instance newtypeShardIteratorType :: Newtype ShardIteratorType _
derive instance repGenericShardIteratorType :: Generic ShardIteratorType _
instance showShardIteratorType :: Show ShardIteratorType where show = genericShow
instance decodeShardIteratorType :: Decode ShardIteratorType where decode = genericDecode options
instance encodeShardIteratorType :: Encode ShardIteratorType where encode = genericEncode options



newtype ShardList = ShardList (Array Shard)
derive instance newtypeShardList :: Newtype ShardList _
derive instance repGenericShardList :: Generic ShardList _
instance showShardList :: Show ShardList where show = genericShow
instance decodeShardList :: Decode ShardList where decode = genericDecode options
instance encodeShardList :: Encode ShardList where encode = genericEncode options



-- | <p>Represents the input for <code>SplitShard</code>.</p>
newtype SplitShardInput = SplitShardInput 
  { "StreamName" :: (StreamName)
  , "ShardToSplit" :: (ShardId)
  , "NewStartingHashKey" :: (HashKey)
  }
derive instance newtypeSplitShardInput :: Newtype SplitShardInput _
derive instance repGenericSplitShardInput :: Generic SplitShardInput _
instance showSplitShardInput :: Show SplitShardInput where show = genericShow
instance decodeSplitShardInput :: Decode SplitShardInput where decode = genericDecode options
instance encodeSplitShardInput :: Encode SplitShardInput where encode = genericEncode options

-- | Constructs SplitShardInput from required parameters
newSplitShardInput :: HashKey -> ShardId -> StreamName -> SplitShardInput
newSplitShardInput _NewStartingHashKey _ShardToSplit _StreamName = SplitShardInput { "NewStartingHashKey": _NewStartingHashKey, "ShardToSplit": _ShardToSplit, "StreamName": _StreamName }

-- | Constructs SplitShardInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSplitShardInput' :: HashKey -> ShardId -> StreamName -> ( { "StreamName" :: (StreamName) , "ShardToSplit" :: (ShardId) , "NewStartingHashKey" :: (HashKey) } -> {"StreamName" :: (StreamName) , "ShardToSplit" :: (ShardId) , "NewStartingHashKey" :: (HashKey) } ) -> SplitShardInput
newSplitShardInput' _NewStartingHashKey _ShardToSplit _StreamName customize = (SplitShardInput <<< customize) { "NewStartingHashKey": _NewStartingHashKey, "ShardToSplit": _ShardToSplit, "StreamName": _StreamName }



newtype StartStreamEncryptionInput = StartStreamEncryptionInput 
  { "StreamName" :: (StreamName)
  , "EncryptionType" :: (EncryptionType)
  , "KeyId" :: (KeyId)
  }
derive instance newtypeStartStreamEncryptionInput :: Newtype StartStreamEncryptionInput _
derive instance repGenericStartStreamEncryptionInput :: Generic StartStreamEncryptionInput _
instance showStartStreamEncryptionInput :: Show StartStreamEncryptionInput where show = genericShow
instance decodeStartStreamEncryptionInput :: Decode StartStreamEncryptionInput where decode = genericDecode options
instance encodeStartStreamEncryptionInput :: Encode StartStreamEncryptionInput where encode = genericEncode options

-- | Constructs StartStreamEncryptionInput from required parameters
newStartStreamEncryptionInput :: EncryptionType -> KeyId -> StreamName -> StartStreamEncryptionInput
newStartStreamEncryptionInput _EncryptionType _KeyId _StreamName = StartStreamEncryptionInput { "EncryptionType": _EncryptionType, "KeyId": _KeyId, "StreamName": _StreamName }

-- | Constructs StartStreamEncryptionInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStartStreamEncryptionInput' :: EncryptionType -> KeyId -> StreamName -> ( { "StreamName" :: (StreamName) , "EncryptionType" :: (EncryptionType) , "KeyId" :: (KeyId) } -> {"StreamName" :: (StreamName) , "EncryptionType" :: (EncryptionType) , "KeyId" :: (KeyId) } ) -> StartStreamEncryptionInput
newStartStreamEncryptionInput' _EncryptionType _KeyId _StreamName customize = (StartStreamEncryptionInput <<< customize) { "EncryptionType": _EncryptionType, "KeyId": _KeyId, "StreamName": _StreamName }



newtype StopStreamEncryptionInput = StopStreamEncryptionInput 
  { "StreamName" :: (StreamName)
  , "EncryptionType" :: (EncryptionType)
  , "KeyId" :: (KeyId)
  }
derive instance newtypeStopStreamEncryptionInput :: Newtype StopStreamEncryptionInput _
derive instance repGenericStopStreamEncryptionInput :: Generic StopStreamEncryptionInput _
instance showStopStreamEncryptionInput :: Show StopStreamEncryptionInput where show = genericShow
instance decodeStopStreamEncryptionInput :: Decode StopStreamEncryptionInput where decode = genericDecode options
instance encodeStopStreamEncryptionInput :: Encode StopStreamEncryptionInput where encode = genericEncode options

-- | Constructs StopStreamEncryptionInput from required parameters
newStopStreamEncryptionInput :: EncryptionType -> KeyId -> StreamName -> StopStreamEncryptionInput
newStopStreamEncryptionInput _EncryptionType _KeyId _StreamName = StopStreamEncryptionInput { "EncryptionType": _EncryptionType, "KeyId": _KeyId, "StreamName": _StreamName }

-- | Constructs StopStreamEncryptionInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStopStreamEncryptionInput' :: EncryptionType -> KeyId -> StreamName -> ( { "StreamName" :: (StreamName) , "EncryptionType" :: (EncryptionType) , "KeyId" :: (KeyId) } -> {"StreamName" :: (StreamName) , "EncryptionType" :: (EncryptionType) , "KeyId" :: (KeyId) } ) -> StopStreamEncryptionInput
newStopStreamEncryptionInput' _EncryptionType _KeyId _StreamName customize = (StopStreamEncryptionInput <<< customize) { "EncryptionType": _EncryptionType, "KeyId": _KeyId, "StreamName": _StreamName }



newtype StreamARN = StreamARN String
derive instance newtypeStreamARN :: Newtype StreamARN _
derive instance repGenericStreamARN :: Generic StreamARN _
instance showStreamARN :: Show StreamARN where show = genericShow
instance decodeStreamARN :: Decode StreamARN where decode = genericDecode options
instance encodeStreamARN :: Encode StreamARN where encode = genericEncode options



-- | <p>Represents the output for <a>DescribeStream</a>.</p>
newtype StreamDescription = StreamDescription 
  { "StreamName" :: (StreamName)
  , "StreamARN" :: (StreamARN)
  , "StreamStatus" :: (StreamStatus)
  , "Shards" :: (ShardList)
  , "HasMoreShards" :: (BooleanObject)
  , "RetentionPeriodHours" :: (RetentionPeriodHours)
  , "StreamCreationTimestamp" :: (Types.Timestamp)
  , "EnhancedMonitoring" :: (EnhancedMonitoringList)
  , "EncryptionType" :: NullOrUndefined (EncryptionType)
  , "KeyId" :: NullOrUndefined (KeyId)
  }
derive instance newtypeStreamDescription :: Newtype StreamDescription _
derive instance repGenericStreamDescription :: Generic StreamDescription _
instance showStreamDescription :: Show StreamDescription where show = genericShow
instance decodeStreamDescription :: Decode StreamDescription where decode = genericDecode options
instance encodeStreamDescription :: Encode StreamDescription where encode = genericEncode options

-- | Constructs StreamDescription from required parameters
newStreamDescription :: EnhancedMonitoringList -> BooleanObject -> RetentionPeriodHours -> ShardList -> StreamARN -> Types.Timestamp -> StreamName -> StreamStatus -> StreamDescription
newStreamDescription _EnhancedMonitoring _HasMoreShards _RetentionPeriodHours _Shards _StreamARN _StreamCreationTimestamp _StreamName _StreamStatus = StreamDescription { "EnhancedMonitoring": _EnhancedMonitoring, "HasMoreShards": _HasMoreShards, "RetentionPeriodHours": _RetentionPeriodHours, "Shards": _Shards, "StreamARN": _StreamARN, "StreamCreationTimestamp": _StreamCreationTimestamp, "StreamName": _StreamName, "StreamStatus": _StreamStatus, "EncryptionType": (NullOrUndefined Nothing), "KeyId": (NullOrUndefined Nothing) }

-- | Constructs StreamDescription's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStreamDescription' :: EnhancedMonitoringList -> BooleanObject -> RetentionPeriodHours -> ShardList -> StreamARN -> Types.Timestamp -> StreamName -> StreamStatus -> ( { "StreamName" :: (StreamName) , "StreamARN" :: (StreamARN) , "StreamStatus" :: (StreamStatus) , "Shards" :: (ShardList) , "HasMoreShards" :: (BooleanObject) , "RetentionPeriodHours" :: (RetentionPeriodHours) , "StreamCreationTimestamp" :: (Types.Timestamp) , "EnhancedMonitoring" :: (EnhancedMonitoringList) , "EncryptionType" :: NullOrUndefined (EncryptionType) , "KeyId" :: NullOrUndefined (KeyId) } -> {"StreamName" :: (StreamName) , "StreamARN" :: (StreamARN) , "StreamStatus" :: (StreamStatus) , "Shards" :: (ShardList) , "HasMoreShards" :: (BooleanObject) , "RetentionPeriodHours" :: (RetentionPeriodHours) , "StreamCreationTimestamp" :: (Types.Timestamp) , "EnhancedMonitoring" :: (EnhancedMonitoringList) , "EncryptionType" :: NullOrUndefined (EncryptionType) , "KeyId" :: NullOrUndefined (KeyId) } ) -> StreamDescription
newStreamDescription' _EnhancedMonitoring _HasMoreShards _RetentionPeriodHours _Shards _StreamARN _StreamCreationTimestamp _StreamName _StreamStatus customize = (StreamDescription <<< customize) { "EnhancedMonitoring": _EnhancedMonitoring, "HasMoreShards": _HasMoreShards, "RetentionPeriodHours": _RetentionPeriodHours, "Shards": _Shards, "StreamARN": _StreamARN, "StreamCreationTimestamp": _StreamCreationTimestamp, "StreamName": _StreamName, "StreamStatus": _StreamStatus, "EncryptionType": (NullOrUndefined Nothing), "KeyId": (NullOrUndefined Nothing) }



-- | <p>Represents the output for <a>DescribeStreamSummary</a> </p>
newtype StreamDescriptionSummary = StreamDescriptionSummary 
  { "StreamName" :: (StreamName)
  , "StreamARN" :: (StreamARN)
  , "StreamStatus" :: (StreamStatus)
  , "RetentionPeriodHours" :: (PositiveIntegerObject)
  , "StreamCreationTimestamp" :: (Types.Timestamp)
  , "EnhancedMonitoring" :: (EnhancedMonitoringList)
  , "EncryptionType" :: NullOrUndefined (EncryptionType)
  , "KeyId" :: NullOrUndefined (KeyId)
  , "OpenShardCount" :: (ShardCountObject)
  }
derive instance newtypeStreamDescriptionSummary :: Newtype StreamDescriptionSummary _
derive instance repGenericStreamDescriptionSummary :: Generic StreamDescriptionSummary _
instance showStreamDescriptionSummary :: Show StreamDescriptionSummary where show = genericShow
instance decodeStreamDescriptionSummary :: Decode StreamDescriptionSummary where decode = genericDecode options
instance encodeStreamDescriptionSummary :: Encode StreamDescriptionSummary where encode = genericEncode options

-- | Constructs StreamDescriptionSummary from required parameters
newStreamDescriptionSummary :: EnhancedMonitoringList -> ShardCountObject -> PositiveIntegerObject -> StreamARN -> Types.Timestamp -> StreamName -> StreamStatus -> StreamDescriptionSummary
newStreamDescriptionSummary _EnhancedMonitoring _OpenShardCount _RetentionPeriodHours _StreamARN _StreamCreationTimestamp _StreamName _StreamStatus = StreamDescriptionSummary { "EnhancedMonitoring": _EnhancedMonitoring, "OpenShardCount": _OpenShardCount, "RetentionPeriodHours": _RetentionPeriodHours, "StreamARN": _StreamARN, "StreamCreationTimestamp": _StreamCreationTimestamp, "StreamName": _StreamName, "StreamStatus": _StreamStatus, "EncryptionType": (NullOrUndefined Nothing), "KeyId": (NullOrUndefined Nothing) }

-- | Constructs StreamDescriptionSummary's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStreamDescriptionSummary' :: EnhancedMonitoringList -> ShardCountObject -> PositiveIntegerObject -> StreamARN -> Types.Timestamp -> StreamName -> StreamStatus -> ( { "StreamName" :: (StreamName) , "StreamARN" :: (StreamARN) , "StreamStatus" :: (StreamStatus) , "RetentionPeriodHours" :: (PositiveIntegerObject) , "StreamCreationTimestamp" :: (Types.Timestamp) , "EnhancedMonitoring" :: (EnhancedMonitoringList) , "EncryptionType" :: NullOrUndefined (EncryptionType) , "KeyId" :: NullOrUndefined (KeyId) , "OpenShardCount" :: (ShardCountObject) } -> {"StreamName" :: (StreamName) , "StreamARN" :: (StreamARN) , "StreamStatus" :: (StreamStatus) , "RetentionPeriodHours" :: (PositiveIntegerObject) , "StreamCreationTimestamp" :: (Types.Timestamp) , "EnhancedMonitoring" :: (EnhancedMonitoringList) , "EncryptionType" :: NullOrUndefined (EncryptionType) , "KeyId" :: NullOrUndefined (KeyId) , "OpenShardCount" :: (ShardCountObject) } ) -> StreamDescriptionSummary
newStreamDescriptionSummary' _EnhancedMonitoring _OpenShardCount _RetentionPeriodHours _StreamARN _StreamCreationTimestamp _StreamName _StreamStatus customize = (StreamDescriptionSummary <<< customize) { "EnhancedMonitoring": _EnhancedMonitoring, "OpenShardCount": _OpenShardCount, "RetentionPeriodHours": _RetentionPeriodHours, "StreamARN": _StreamARN, "StreamCreationTimestamp": _StreamCreationTimestamp, "StreamName": _StreamName, "StreamStatus": _StreamStatus, "EncryptionType": (NullOrUndefined Nothing), "KeyId": (NullOrUndefined Nothing) }



newtype StreamName = StreamName String
derive instance newtypeStreamName :: Newtype StreamName _
derive instance repGenericStreamName :: Generic StreamName _
instance showStreamName :: Show StreamName where show = genericShow
instance decodeStreamName :: Decode StreamName where decode = genericDecode options
instance encodeStreamName :: Encode StreamName where encode = genericEncode options



newtype StreamNameList = StreamNameList (Array StreamName)
derive instance newtypeStreamNameList :: Newtype StreamNameList _
derive instance repGenericStreamNameList :: Generic StreamNameList _
instance showStreamNameList :: Show StreamNameList where show = genericShow
instance decodeStreamNameList :: Decode StreamNameList where decode = genericDecode options
instance encodeStreamNameList :: Encode StreamNameList where encode = genericEncode options



newtype StreamStatus = StreamStatus String
derive instance newtypeStreamStatus :: Newtype StreamStatus _
derive instance repGenericStreamStatus :: Generic StreamStatus _
instance showStreamStatus :: Show StreamStatus where show = genericShow
instance decodeStreamStatus :: Decode StreamStatus where decode = genericDecode options
instance encodeStreamStatus :: Encode StreamStatus where encode = genericEncode options



-- | <p>Metadata assigned to the stream, consisting of a key-value pair.</p>
newtype Tag = Tag 
  { "Key" :: (TagKey)
  , "Value" :: NullOrUndefined (TagValue)
  }
derive instance newtypeTag :: Newtype Tag _
derive instance repGenericTag :: Generic Tag _
instance showTag :: Show Tag where show = genericShow
instance decodeTag :: Decode Tag where decode = genericDecode options
instance encodeTag :: Encode Tag where encode = genericEncode options

-- | Constructs Tag from required parameters
newTag :: TagKey -> Tag
newTag _Key = Tag { "Key": _Key, "Value": (NullOrUndefined Nothing) }

-- | Constructs Tag's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTag' :: TagKey -> ( { "Key" :: (TagKey) , "Value" :: NullOrUndefined (TagValue) } -> {"Key" :: (TagKey) , "Value" :: NullOrUndefined (TagValue) } ) -> Tag
newTag' _Key customize = (Tag <<< customize) { "Key": _Key, "Value": (NullOrUndefined Nothing) }



newtype TagKey = TagKey String
derive instance newtypeTagKey :: Newtype TagKey _
derive instance repGenericTagKey :: Generic TagKey _
instance showTagKey :: Show TagKey where show = genericShow
instance decodeTagKey :: Decode TagKey where decode = genericDecode options
instance encodeTagKey :: Encode TagKey where encode = genericEncode options



newtype TagKeyList = TagKeyList (Array TagKey)
derive instance newtypeTagKeyList :: Newtype TagKeyList _
derive instance repGenericTagKeyList :: Generic TagKeyList _
instance showTagKeyList :: Show TagKeyList where show = genericShow
instance decodeTagKeyList :: Decode TagKeyList where decode = genericDecode options
instance encodeTagKeyList :: Encode TagKeyList where encode = genericEncode options



newtype TagList = TagList (Array Tag)
derive instance newtypeTagList :: Newtype TagList _
derive instance repGenericTagList :: Generic TagList _
instance showTagList :: Show TagList where show = genericShow
instance decodeTagList :: Decode TagList where decode = genericDecode options
instance encodeTagList :: Encode TagList where encode = genericEncode options



newtype TagMap = TagMap (StrMap.StrMap TagValue)
derive instance newtypeTagMap :: Newtype TagMap _
derive instance repGenericTagMap :: Generic TagMap _
instance showTagMap :: Show TagMap where show = genericShow
instance decodeTagMap :: Decode TagMap where decode = genericDecode options
instance encodeTagMap :: Encode TagMap where encode = genericEncode options



newtype TagValue = TagValue String
derive instance newtypeTagValue :: Newtype TagValue _
derive instance repGenericTagValue :: Generic TagValue _
instance showTagValue :: Show TagValue where show = genericShow
instance decodeTagValue :: Decode TagValue where decode = genericDecode options
instance encodeTagValue :: Encode TagValue where encode = genericEncode options



newtype UpdateShardCountInput = UpdateShardCountInput 
  { "StreamName" :: (StreamName)
  , "TargetShardCount" :: (PositiveIntegerObject)
  , "ScalingType" :: (ScalingType)
  }
derive instance newtypeUpdateShardCountInput :: Newtype UpdateShardCountInput _
derive instance repGenericUpdateShardCountInput :: Generic UpdateShardCountInput _
instance showUpdateShardCountInput :: Show UpdateShardCountInput where show = genericShow
instance decodeUpdateShardCountInput :: Decode UpdateShardCountInput where decode = genericDecode options
instance encodeUpdateShardCountInput :: Encode UpdateShardCountInput where encode = genericEncode options

-- | Constructs UpdateShardCountInput from required parameters
newUpdateShardCountInput :: ScalingType -> StreamName -> PositiveIntegerObject -> UpdateShardCountInput
newUpdateShardCountInput _ScalingType _StreamName _TargetShardCount = UpdateShardCountInput { "ScalingType": _ScalingType, "StreamName": _StreamName, "TargetShardCount": _TargetShardCount }

-- | Constructs UpdateShardCountInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateShardCountInput' :: ScalingType -> StreamName -> PositiveIntegerObject -> ( { "StreamName" :: (StreamName) , "TargetShardCount" :: (PositiveIntegerObject) , "ScalingType" :: (ScalingType) } -> {"StreamName" :: (StreamName) , "TargetShardCount" :: (PositiveIntegerObject) , "ScalingType" :: (ScalingType) } ) -> UpdateShardCountInput
newUpdateShardCountInput' _ScalingType _StreamName _TargetShardCount customize = (UpdateShardCountInput <<< customize) { "ScalingType": _ScalingType, "StreamName": _StreamName, "TargetShardCount": _TargetShardCount }



newtype UpdateShardCountOutput = UpdateShardCountOutput 
  { "StreamName" :: NullOrUndefined (StreamName)
  , "CurrentShardCount" :: NullOrUndefined (PositiveIntegerObject)
  , "TargetShardCount" :: NullOrUndefined (PositiveIntegerObject)
  }
derive instance newtypeUpdateShardCountOutput :: Newtype UpdateShardCountOutput _
derive instance repGenericUpdateShardCountOutput :: Generic UpdateShardCountOutput _
instance showUpdateShardCountOutput :: Show UpdateShardCountOutput where show = genericShow
instance decodeUpdateShardCountOutput :: Decode UpdateShardCountOutput where decode = genericDecode options
instance encodeUpdateShardCountOutput :: Encode UpdateShardCountOutput where encode = genericEncode options

-- | Constructs UpdateShardCountOutput from required parameters
newUpdateShardCountOutput :: UpdateShardCountOutput
newUpdateShardCountOutput  = UpdateShardCountOutput { "CurrentShardCount": (NullOrUndefined Nothing), "StreamName": (NullOrUndefined Nothing), "TargetShardCount": (NullOrUndefined Nothing) }

-- | Constructs UpdateShardCountOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateShardCountOutput' :: ( { "StreamName" :: NullOrUndefined (StreamName) , "CurrentShardCount" :: NullOrUndefined (PositiveIntegerObject) , "TargetShardCount" :: NullOrUndefined (PositiveIntegerObject) } -> {"StreamName" :: NullOrUndefined (StreamName) , "CurrentShardCount" :: NullOrUndefined (PositiveIntegerObject) , "TargetShardCount" :: NullOrUndefined (PositiveIntegerObject) } ) -> UpdateShardCountOutput
newUpdateShardCountOutput'  customize = (UpdateShardCountOutput <<< customize) { "CurrentShardCount": (NullOrUndefined Nothing), "StreamName": (NullOrUndefined Nothing), "TargetShardCount": (NullOrUndefined Nothing) }

