## Module AWS.Kinesis.Types

#### `options`

``` purescript
options :: Options
```

#### `AddTagsToStreamInput`

``` purescript
newtype AddTagsToStreamInput
  = AddTagsToStreamInput { "StreamName" :: StreamName, "Tags" :: TagMap }
```

<p>Represents the input for <code>AddTagsToStream</code>.</p>

##### Instances
``` purescript
Newtype AddTagsToStreamInput _
Generic AddTagsToStreamInput _
Show AddTagsToStreamInput
Decode AddTagsToStreamInput
Encode AddTagsToStreamInput
```

#### `newAddTagsToStreamInput`

``` purescript
newAddTagsToStreamInput :: StreamName -> TagMap -> AddTagsToStreamInput
```

Constructs AddTagsToStreamInput from required parameters

#### `newAddTagsToStreamInput'`

``` purescript
newAddTagsToStreamInput' :: StreamName -> TagMap -> ({ "StreamName" :: StreamName, "Tags" :: TagMap } -> { "StreamName" :: StreamName, "Tags" :: TagMap }) -> AddTagsToStreamInput
```

Constructs AddTagsToStreamInput's fields from required parameters

#### `BooleanObject`

``` purescript
newtype BooleanObject
  = BooleanObject Boolean
```

##### Instances
``` purescript
Newtype BooleanObject _
Generic BooleanObject _
Show BooleanObject
Decode BooleanObject
Encode BooleanObject
```

#### `CreateStreamInput`

``` purescript
newtype CreateStreamInput
  = CreateStreamInput { "StreamName" :: StreamName, "ShardCount" :: PositiveIntegerObject }
```

<p>Represents the input for <code>CreateStream</code>.</p>

##### Instances
``` purescript
Newtype CreateStreamInput _
Generic CreateStreamInput _
Show CreateStreamInput
Decode CreateStreamInput
Encode CreateStreamInput
```

#### `newCreateStreamInput`

``` purescript
newCreateStreamInput :: PositiveIntegerObject -> StreamName -> CreateStreamInput
```

Constructs CreateStreamInput from required parameters

#### `newCreateStreamInput'`

``` purescript
newCreateStreamInput' :: PositiveIntegerObject -> StreamName -> ({ "StreamName" :: StreamName, "ShardCount" :: PositiveIntegerObject } -> { "StreamName" :: StreamName, "ShardCount" :: PositiveIntegerObject }) -> CreateStreamInput
```

Constructs CreateStreamInput's fields from required parameters

#### `Data`

``` purescript
newtype Data
  = Data String
```

##### Instances
``` purescript
Newtype Data _
Generic Data _
Show Data
Decode Data
Encode Data
```

#### `DecreaseStreamRetentionPeriodInput`

``` purescript
newtype DecreaseStreamRetentionPeriodInput
  = DecreaseStreamRetentionPeriodInput { "StreamName" :: StreamName, "RetentionPeriodHours" :: RetentionPeriodHours }
```

<p>Represents the input for <a>DecreaseStreamRetentionPeriod</a>.</p>

##### Instances
``` purescript
Newtype DecreaseStreamRetentionPeriodInput _
Generic DecreaseStreamRetentionPeriodInput _
Show DecreaseStreamRetentionPeriodInput
Decode DecreaseStreamRetentionPeriodInput
Encode DecreaseStreamRetentionPeriodInput
```

#### `newDecreaseStreamRetentionPeriodInput`

``` purescript
newDecreaseStreamRetentionPeriodInput :: RetentionPeriodHours -> StreamName -> DecreaseStreamRetentionPeriodInput
```

Constructs DecreaseStreamRetentionPeriodInput from required parameters

#### `newDecreaseStreamRetentionPeriodInput'`

``` purescript
newDecreaseStreamRetentionPeriodInput' :: RetentionPeriodHours -> StreamName -> ({ "StreamName" :: StreamName, "RetentionPeriodHours" :: RetentionPeriodHours } -> { "StreamName" :: StreamName, "RetentionPeriodHours" :: RetentionPeriodHours }) -> DecreaseStreamRetentionPeriodInput
```

Constructs DecreaseStreamRetentionPeriodInput's fields from required parameters

#### `DeleteStreamInput`

``` purescript
newtype DeleteStreamInput
  = DeleteStreamInput { "StreamName" :: StreamName }
```

<p>Represents the input for <a>DeleteStream</a>.</p>

##### Instances
``` purescript
Newtype DeleteStreamInput _
Generic DeleteStreamInput _
Show DeleteStreamInput
Decode DeleteStreamInput
Encode DeleteStreamInput
```

#### `newDeleteStreamInput`

``` purescript
newDeleteStreamInput :: StreamName -> DeleteStreamInput
```

Constructs DeleteStreamInput from required parameters

#### `newDeleteStreamInput'`

``` purescript
newDeleteStreamInput' :: StreamName -> ({ "StreamName" :: StreamName } -> { "StreamName" :: StreamName }) -> DeleteStreamInput
```

Constructs DeleteStreamInput's fields from required parameters

#### `DescribeLimitsInput`

``` purescript
newtype DescribeLimitsInput
  = DescribeLimitsInput NoArguments
```

##### Instances
``` purescript
Newtype DescribeLimitsInput _
Generic DescribeLimitsInput _
Show DescribeLimitsInput
Decode DescribeLimitsInput
Encode DescribeLimitsInput
```

#### `DescribeLimitsOutput`

``` purescript
newtype DescribeLimitsOutput
  = DescribeLimitsOutput { "ShardLimit" :: ShardCountObject, "OpenShardCount" :: ShardCountObject }
```

##### Instances
``` purescript
Newtype DescribeLimitsOutput _
Generic DescribeLimitsOutput _
Show DescribeLimitsOutput
Decode DescribeLimitsOutput
Encode DescribeLimitsOutput
```

#### `newDescribeLimitsOutput`

``` purescript
newDescribeLimitsOutput :: ShardCountObject -> ShardCountObject -> DescribeLimitsOutput
```

Constructs DescribeLimitsOutput from required parameters

#### `newDescribeLimitsOutput'`

``` purescript
newDescribeLimitsOutput' :: ShardCountObject -> ShardCountObject -> ({ "ShardLimit" :: ShardCountObject, "OpenShardCount" :: ShardCountObject } -> { "ShardLimit" :: ShardCountObject, "OpenShardCount" :: ShardCountObject }) -> DescribeLimitsOutput
```

Constructs DescribeLimitsOutput's fields from required parameters

#### `DescribeStreamInput`

``` purescript
newtype DescribeStreamInput
  = DescribeStreamInput { "StreamName" :: StreamName, "Limit" :: NullOrUndefined (DescribeStreamInputLimit), "ExclusiveStartShardId" :: NullOrUndefined (ShardId) }
```

<p>Represents the input for <code>DescribeStream</code>.</p>

##### Instances
``` purescript
Newtype DescribeStreamInput _
Generic DescribeStreamInput _
Show DescribeStreamInput
Decode DescribeStreamInput
Encode DescribeStreamInput
```

#### `newDescribeStreamInput`

``` purescript
newDescribeStreamInput :: StreamName -> DescribeStreamInput
```

Constructs DescribeStreamInput from required parameters

#### `newDescribeStreamInput'`

``` purescript
newDescribeStreamInput' :: StreamName -> ({ "StreamName" :: StreamName, "Limit" :: NullOrUndefined (DescribeStreamInputLimit), "ExclusiveStartShardId" :: NullOrUndefined (ShardId) } -> { "StreamName" :: StreamName, "Limit" :: NullOrUndefined (DescribeStreamInputLimit), "ExclusiveStartShardId" :: NullOrUndefined (ShardId) }) -> DescribeStreamInput
```

Constructs DescribeStreamInput's fields from required parameters

#### `DescribeStreamInputLimit`

``` purescript
newtype DescribeStreamInputLimit
  = DescribeStreamInputLimit Int
```

##### Instances
``` purescript
Newtype DescribeStreamInputLimit _
Generic DescribeStreamInputLimit _
Show DescribeStreamInputLimit
Decode DescribeStreamInputLimit
Encode DescribeStreamInputLimit
```

#### `DescribeStreamOutput`

``` purescript
newtype DescribeStreamOutput
  = DescribeStreamOutput { "StreamDescription" :: StreamDescription }
```

<p>Represents the output for <code>DescribeStream</code>.</p>

##### Instances
``` purescript
Newtype DescribeStreamOutput _
Generic DescribeStreamOutput _
Show DescribeStreamOutput
Decode DescribeStreamOutput
Encode DescribeStreamOutput
```

#### `newDescribeStreamOutput`

``` purescript
newDescribeStreamOutput :: StreamDescription -> DescribeStreamOutput
```

Constructs DescribeStreamOutput from required parameters

#### `newDescribeStreamOutput'`

``` purescript
newDescribeStreamOutput' :: StreamDescription -> ({ "StreamDescription" :: StreamDescription } -> { "StreamDescription" :: StreamDescription }) -> DescribeStreamOutput
```

Constructs DescribeStreamOutput's fields from required parameters

#### `DescribeStreamSummaryInput`

``` purescript
newtype DescribeStreamSummaryInput
  = DescribeStreamSummaryInput { "StreamName" :: StreamName }
```

##### Instances
``` purescript
Newtype DescribeStreamSummaryInput _
Generic DescribeStreamSummaryInput _
Show DescribeStreamSummaryInput
Decode DescribeStreamSummaryInput
Encode DescribeStreamSummaryInput
```

#### `newDescribeStreamSummaryInput`

``` purescript
newDescribeStreamSummaryInput :: StreamName -> DescribeStreamSummaryInput
```

Constructs DescribeStreamSummaryInput from required parameters

#### `newDescribeStreamSummaryInput'`

``` purescript
newDescribeStreamSummaryInput' :: StreamName -> ({ "StreamName" :: StreamName } -> { "StreamName" :: StreamName }) -> DescribeStreamSummaryInput
```

Constructs DescribeStreamSummaryInput's fields from required parameters

#### `DescribeStreamSummaryOutput`

``` purescript
newtype DescribeStreamSummaryOutput
  = DescribeStreamSummaryOutput { "StreamDescriptionSummary" :: StreamDescriptionSummary }
```

##### Instances
``` purescript
Newtype DescribeStreamSummaryOutput _
Generic DescribeStreamSummaryOutput _
Show DescribeStreamSummaryOutput
Decode DescribeStreamSummaryOutput
Encode DescribeStreamSummaryOutput
```

#### `newDescribeStreamSummaryOutput`

``` purescript
newDescribeStreamSummaryOutput :: StreamDescriptionSummary -> DescribeStreamSummaryOutput
```

Constructs DescribeStreamSummaryOutput from required parameters

#### `newDescribeStreamSummaryOutput'`

``` purescript
newDescribeStreamSummaryOutput' :: StreamDescriptionSummary -> ({ "StreamDescriptionSummary" :: StreamDescriptionSummary } -> { "StreamDescriptionSummary" :: StreamDescriptionSummary }) -> DescribeStreamSummaryOutput
```

Constructs DescribeStreamSummaryOutput's fields from required parameters

#### `DisableEnhancedMonitoringInput`

``` purescript
newtype DisableEnhancedMonitoringInput
  = DisableEnhancedMonitoringInput { "StreamName" :: StreamName, "ShardLevelMetrics" :: MetricsNameList }
```

<p>Represents the input for <a>DisableEnhancedMonitoring</a>.</p>

##### Instances
``` purescript
Newtype DisableEnhancedMonitoringInput _
Generic DisableEnhancedMonitoringInput _
Show DisableEnhancedMonitoringInput
Decode DisableEnhancedMonitoringInput
Encode DisableEnhancedMonitoringInput
```

#### `newDisableEnhancedMonitoringInput`

``` purescript
newDisableEnhancedMonitoringInput :: MetricsNameList -> StreamName -> DisableEnhancedMonitoringInput
```

Constructs DisableEnhancedMonitoringInput from required parameters

#### `newDisableEnhancedMonitoringInput'`

``` purescript
newDisableEnhancedMonitoringInput' :: MetricsNameList -> StreamName -> ({ "StreamName" :: StreamName, "ShardLevelMetrics" :: MetricsNameList } -> { "StreamName" :: StreamName, "ShardLevelMetrics" :: MetricsNameList }) -> DisableEnhancedMonitoringInput
```

Constructs DisableEnhancedMonitoringInput's fields from required parameters

#### `EnableEnhancedMonitoringInput`

``` purescript
newtype EnableEnhancedMonitoringInput
  = EnableEnhancedMonitoringInput { "StreamName" :: StreamName, "ShardLevelMetrics" :: MetricsNameList }
```

<p>Represents the input for <a>EnableEnhancedMonitoring</a>.</p>

##### Instances
``` purescript
Newtype EnableEnhancedMonitoringInput _
Generic EnableEnhancedMonitoringInput _
Show EnableEnhancedMonitoringInput
Decode EnableEnhancedMonitoringInput
Encode EnableEnhancedMonitoringInput
```

#### `newEnableEnhancedMonitoringInput`

``` purescript
newEnableEnhancedMonitoringInput :: MetricsNameList -> StreamName -> EnableEnhancedMonitoringInput
```

Constructs EnableEnhancedMonitoringInput from required parameters

#### `newEnableEnhancedMonitoringInput'`

``` purescript
newEnableEnhancedMonitoringInput' :: MetricsNameList -> StreamName -> ({ "StreamName" :: StreamName, "ShardLevelMetrics" :: MetricsNameList } -> { "StreamName" :: StreamName, "ShardLevelMetrics" :: MetricsNameList }) -> EnableEnhancedMonitoringInput
```

Constructs EnableEnhancedMonitoringInput's fields from required parameters

#### `EncryptionType`

``` purescript
newtype EncryptionType
  = EncryptionType String
```

##### Instances
``` purescript
Newtype EncryptionType _
Generic EncryptionType _
Show EncryptionType
Decode EncryptionType
Encode EncryptionType
```

#### `EnhancedMetrics`

``` purescript
newtype EnhancedMetrics
  = EnhancedMetrics { "ShardLevelMetrics" :: NullOrUndefined (MetricsNameList) }
```

<p>Represents enhanced metrics types.</p>

##### Instances
``` purescript
Newtype EnhancedMetrics _
Generic EnhancedMetrics _
Show EnhancedMetrics
Decode EnhancedMetrics
Encode EnhancedMetrics
```

#### `newEnhancedMetrics`

``` purescript
newEnhancedMetrics :: EnhancedMetrics
```

Constructs EnhancedMetrics from required parameters

#### `newEnhancedMetrics'`

``` purescript
newEnhancedMetrics' :: ({ "ShardLevelMetrics" :: NullOrUndefined (MetricsNameList) } -> { "ShardLevelMetrics" :: NullOrUndefined (MetricsNameList) }) -> EnhancedMetrics
```

Constructs EnhancedMetrics's fields from required parameters

#### `EnhancedMonitoringList`

``` purescript
newtype EnhancedMonitoringList
  = EnhancedMonitoringList (Array EnhancedMetrics)
```

##### Instances
``` purescript
Newtype EnhancedMonitoringList _
Generic EnhancedMonitoringList _
Show EnhancedMonitoringList
Decode EnhancedMonitoringList
Encode EnhancedMonitoringList
```

#### `EnhancedMonitoringOutput`

``` purescript
newtype EnhancedMonitoringOutput
  = EnhancedMonitoringOutput { "StreamName" :: NullOrUndefined (StreamName), "CurrentShardLevelMetrics" :: NullOrUndefined (MetricsNameList), "DesiredShardLevelMetrics" :: NullOrUndefined (MetricsNameList) }
```

<p>Represents the output for <a>EnableEnhancedMonitoring</a> and <a>DisableEnhancedMonitoring</a>.</p>

##### Instances
``` purescript
Newtype EnhancedMonitoringOutput _
Generic EnhancedMonitoringOutput _
Show EnhancedMonitoringOutput
Decode EnhancedMonitoringOutput
Encode EnhancedMonitoringOutput
```

#### `newEnhancedMonitoringOutput`

``` purescript
newEnhancedMonitoringOutput :: EnhancedMonitoringOutput
```

Constructs EnhancedMonitoringOutput from required parameters

#### `newEnhancedMonitoringOutput'`

``` purescript
newEnhancedMonitoringOutput' :: ({ "StreamName" :: NullOrUndefined (StreamName), "CurrentShardLevelMetrics" :: NullOrUndefined (MetricsNameList), "DesiredShardLevelMetrics" :: NullOrUndefined (MetricsNameList) } -> { "StreamName" :: NullOrUndefined (StreamName), "CurrentShardLevelMetrics" :: NullOrUndefined (MetricsNameList), "DesiredShardLevelMetrics" :: NullOrUndefined (MetricsNameList) }) -> EnhancedMonitoringOutput
```

Constructs EnhancedMonitoringOutput's fields from required parameters

#### `ErrorCode`

``` purescript
newtype ErrorCode
  = ErrorCode String
```

##### Instances
``` purescript
Newtype ErrorCode _
Generic ErrorCode _
Show ErrorCode
Decode ErrorCode
Encode ErrorCode
```

#### `ErrorMessage`

``` purescript
newtype ErrorMessage
  = ErrorMessage String
```

##### Instances
``` purescript
Newtype ErrorMessage _
Generic ErrorMessage _
Show ErrorMessage
Decode ErrorMessage
Encode ErrorMessage
```

#### `ExpiredIteratorException`

``` purescript
newtype ExpiredIteratorException
  = ExpiredIteratorException { message :: NullOrUndefined (ErrorMessage) }
```

<p>The provided iterator exceeds the maximum age allowed.</p>

##### Instances
``` purescript
Newtype ExpiredIteratorException _
Generic ExpiredIteratorException _
Show ExpiredIteratorException
Decode ExpiredIteratorException
Encode ExpiredIteratorException
```

#### `newExpiredIteratorException`

``` purescript
newExpiredIteratorException :: ExpiredIteratorException
```

Constructs ExpiredIteratorException from required parameters

#### `newExpiredIteratorException'`

``` purescript
newExpiredIteratorException' :: ({ message :: NullOrUndefined (ErrorMessage) } -> { message :: NullOrUndefined (ErrorMessage) }) -> ExpiredIteratorException
```

Constructs ExpiredIteratorException's fields from required parameters

#### `ExpiredNextTokenException`

``` purescript
newtype ExpiredNextTokenException
  = ExpiredNextTokenException { message :: NullOrUndefined (ErrorMessage) }
```

<p>The pagination token passed to the <code>ListShards</code> operation is expired. For more information, see <a>ListShardsInput$NextToken</a>.</p>

##### Instances
``` purescript
Newtype ExpiredNextTokenException _
Generic ExpiredNextTokenException _
Show ExpiredNextTokenException
Decode ExpiredNextTokenException
Encode ExpiredNextTokenException
```

#### `newExpiredNextTokenException`

``` purescript
newExpiredNextTokenException :: ExpiredNextTokenException
```

Constructs ExpiredNextTokenException from required parameters

#### `newExpiredNextTokenException'`

``` purescript
newExpiredNextTokenException' :: ({ message :: NullOrUndefined (ErrorMessage) } -> { message :: NullOrUndefined (ErrorMessage) }) -> ExpiredNextTokenException
```

Constructs ExpiredNextTokenException's fields from required parameters

#### `GetRecordsInput`

``` purescript
newtype GetRecordsInput
  = GetRecordsInput { "ShardIterator" :: ShardIterator, "Limit" :: NullOrUndefined (GetRecordsInputLimit) }
```

<p>Represents the input for <a>GetRecords</a>.</p>

##### Instances
``` purescript
Newtype GetRecordsInput _
Generic GetRecordsInput _
Show GetRecordsInput
Decode GetRecordsInput
Encode GetRecordsInput
```

#### `newGetRecordsInput`

``` purescript
newGetRecordsInput :: ShardIterator -> GetRecordsInput
```

Constructs GetRecordsInput from required parameters

#### `newGetRecordsInput'`

``` purescript
newGetRecordsInput' :: ShardIterator -> ({ "ShardIterator" :: ShardIterator, "Limit" :: NullOrUndefined (GetRecordsInputLimit) } -> { "ShardIterator" :: ShardIterator, "Limit" :: NullOrUndefined (GetRecordsInputLimit) }) -> GetRecordsInput
```

Constructs GetRecordsInput's fields from required parameters

#### `GetRecordsInputLimit`

``` purescript
newtype GetRecordsInputLimit
  = GetRecordsInputLimit Int
```

##### Instances
``` purescript
Newtype GetRecordsInputLimit _
Generic GetRecordsInputLimit _
Show GetRecordsInputLimit
Decode GetRecordsInputLimit
Encode GetRecordsInputLimit
```

#### `GetRecordsOutput`

``` purescript
newtype GetRecordsOutput
  = GetRecordsOutput { "Records" :: RecordList, "NextShardIterator" :: NullOrUndefined (ShardIterator), "MillisBehindLatest" :: NullOrUndefined (MillisBehindLatest) }
```

<p>Represents the output for <a>GetRecords</a>.</p>

##### Instances
``` purescript
Newtype GetRecordsOutput _
Generic GetRecordsOutput _
Show GetRecordsOutput
Decode GetRecordsOutput
Encode GetRecordsOutput
```

#### `newGetRecordsOutput`

``` purescript
newGetRecordsOutput :: RecordList -> GetRecordsOutput
```

Constructs GetRecordsOutput from required parameters

#### `newGetRecordsOutput'`

``` purescript
newGetRecordsOutput' :: RecordList -> ({ "Records" :: RecordList, "NextShardIterator" :: NullOrUndefined (ShardIterator), "MillisBehindLatest" :: NullOrUndefined (MillisBehindLatest) } -> { "Records" :: RecordList, "NextShardIterator" :: NullOrUndefined (ShardIterator), "MillisBehindLatest" :: NullOrUndefined (MillisBehindLatest) }) -> GetRecordsOutput
```

Constructs GetRecordsOutput's fields from required parameters

#### `GetShardIteratorInput`

``` purescript
newtype GetShardIteratorInput
  = GetShardIteratorInput { "StreamName" :: StreamName, "ShardId" :: ShardId, "ShardIteratorType" :: ShardIteratorType, "StartingSequenceNumber" :: NullOrUndefined (SequenceNumber), "Timestamp" :: NullOrUndefined (Timestamp) }
```

<p>Represents the input for <code>GetShardIterator</code>.</p>

##### Instances
``` purescript
Newtype GetShardIteratorInput _
Generic GetShardIteratorInput _
Show GetShardIteratorInput
Decode GetShardIteratorInput
Encode GetShardIteratorInput
```

#### `newGetShardIteratorInput`

``` purescript
newGetShardIteratorInput :: ShardId -> ShardIteratorType -> StreamName -> GetShardIteratorInput
```

Constructs GetShardIteratorInput from required parameters

#### `newGetShardIteratorInput'`

``` purescript
newGetShardIteratorInput' :: ShardId -> ShardIteratorType -> StreamName -> ({ "StreamName" :: StreamName, "ShardId" :: ShardId, "ShardIteratorType" :: ShardIteratorType, "StartingSequenceNumber" :: NullOrUndefined (SequenceNumber), "Timestamp" :: NullOrUndefined (Timestamp) } -> { "StreamName" :: StreamName, "ShardId" :: ShardId, "ShardIteratorType" :: ShardIteratorType, "StartingSequenceNumber" :: NullOrUndefined (SequenceNumber), "Timestamp" :: NullOrUndefined (Timestamp) }) -> GetShardIteratorInput
```

Constructs GetShardIteratorInput's fields from required parameters

#### `GetShardIteratorOutput`

``` purescript
newtype GetShardIteratorOutput
  = GetShardIteratorOutput { "ShardIterator" :: NullOrUndefined (ShardIterator) }
```

<p>Represents the output for <code>GetShardIterator</code>.</p>

##### Instances
``` purescript
Newtype GetShardIteratorOutput _
Generic GetShardIteratorOutput _
Show GetShardIteratorOutput
Decode GetShardIteratorOutput
Encode GetShardIteratorOutput
```

#### `newGetShardIteratorOutput`

``` purescript
newGetShardIteratorOutput :: GetShardIteratorOutput
```

Constructs GetShardIteratorOutput from required parameters

#### `newGetShardIteratorOutput'`

``` purescript
newGetShardIteratorOutput' :: ({ "ShardIterator" :: NullOrUndefined (ShardIterator) } -> { "ShardIterator" :: NullOrUndefined (ShardIterator) }) -> GetShardIteratorOutput
```

Constructs GetShardIteratorOutput's fields from required parameters

#### `HashKey`

``` purescript
newtype HashKey
  = HashKey String
```

##### Instances
``` purescript
Newtype HashKey _
Generic HashKey _
Show HashKey
Decode HashKey
Encode HashKey
```

#### `HashKeyRange`

``` purescript
newtype HashKeyRange
  = HashKeyRange { "StartingHashKey" :: HashKey, "EndingHashKey" :: HashKey }
```

<p>The range of possible hash key values for the shard, which is a set of ordered contiguous positive integers.</p>

##### Instances
``` purescript
Newtype HashKeyRange _
Generic HashKeyRange _
Show HashKeyRange
Decode HashKeyRange
Encode HashKeyRange
```

#### `newHashKeyRange`

``` purescript
newHashKeyRange :: HashKey -> HashKey -> HashKeyRange
```

Constructs HashKeyRange from required parameters

#### `newHashKeyRange'`

``` purescript
newHashKeyRange' :: HashKey -> HashKey -> ({ "StartingHashKey" :: HashKey, "EndingHashKey" :: HashKey } -> { "StartingHashKey" :: HashKey, "EndingHashKey" :: HashKey }) -> HashKeyRange
```

Constructs HashKeyRange's fields from required parameters

#### `IncreaseStreamRetentionPeriodInput`

``` purescript
newtype IncreaseStreamRetentionPeriodInput
  = IncreaseStreamRetentionPeriodInput { "StreamName" :: StreamName, "RetentionPeriodHours" :: RetentionPeriodHours }
```

<p>Represents the input for <a>IncreaseStreamRetentionPeriod</a>.</p>

##### Instances
``` purescript
Newtype IncreaseStreamRetentionPeriodInput _
Generic IncreaseStreamRetentionPeriodInput _
Show IncreaseStreamRetentionPeriodInput
Decode IncreaseStreamRetentionPeriodInput
Encode IncreaseStreamRetentionPeriodInput
```

#### `newIncreaseStreamRetentionPeriodInput`

``` purescript
newIncreaseStreamRetentionPeriodInput :: RetentionPeriodHours -> StreamName -> IncreaseStreamRetentionPeriodInput
```

Constructs IncreaseStreamRetentionPeriodInput from required parameters

#### `newIncreaseStreamRetentionPeriodInput'`

``` purescript
newIncreaseStreamRetentionPeriodInput' :: RetentionPeriodHours -> StreamName -> ({ "StreamName" :: StreamName, "RetentionPeriodHours" :: RetentionPeriodHours } -> { "StreamName" :: StreamName, "RetentionPeriodHours" :: RetentionPeriodHours }) -> IncreaseStreamRetentionPeriodInput
```

Constructs IncreaseStreamRetentionPeriodInput's fields from required parameters

#### `InvalidArgumentException`

``` purescript
newtype InvalidArgumentException
  = InvalidArgumentException { message :: NullOrUndefined (ErrorMessage) }
```

<p>A specified parameter exceeds its restrictions, is not supported, or can't be used. For more information, see the returned message.</p>

##### Instances
``` purescript
Newtype InvalidArgumentException _
Generic InvalidArgumentException _
Show InvalidArgumentException
Decode InvalidArgumentException
Encode InvalidArgumentException
```

#### `newInvalidArgumentException`

``` purescript
newInvalidArgumentException :: InvalidArgumentException
```

Constructs InvalidArgumentException from required parameters

#### `newInvalidArgumentException'`

``` purescript
newInvalidArgumentException' :: ({ message :: NullOrUndefined (ErrorMessage) } -> { message :: NullOrUndefined (ErrorMessage) }) -> InvalidArgumentException
```

Constructs InvalidArgumentException's fields from required parameters

#### `KMSAccessDeniedException`

``` purescript
newtype KMSAccessDeniedException
  = KMSAccessDeniedException { message :: NullOrUndefined (ErrorMessage) }
```

<p>The ciphertext references a key that doesn't exist or that you don't have access to.</p>

##### Instances
``` purescript
Newtype KMSAccessDeniedException _
Generic KMSAccessDeniedException _
Show KMSAccessDeniedException
Decode KMSAccessDeniedException
Encode KMSAccessDeniedException
```

#### `newKMSAccessDeniedException`

``` purescript
newKMSAccessDeniedException :: KMSAccessDeniedException
```

Constructs KMSAccessDeniedException from required parameters

#### `newKMSAccessDeniedException'`

``` purescript
newKMSAccessDeniedException' :: ({ message :: NullOrUndefined (ErrorMessage) } -> { message :: NullOrUndefined (ErrorMessage) }) -> KMSAccessDeniedException
```

Constructs KMSAccessDeniedException's fields from required parameters

#### `KMSDisabledException`

``` purescript
newtype KMSDisabledException
  = KMSDisabledException { message :: NullOrUndefined (ErrorMessage) }
```

<p>The request was rejected because the specified customer master key (CMK) isn't enabled.</p>

##### Instances
``` purescript
Newtype KMSDisabledException _
Generic KMSDisabledException _
Show KMSDisabledException
Decode KMSDisabledException
Encode KMSDisabledException
```

#### `newKMSDisabledException`

``` purescript
newKMSDisabledException :: KMSDisabledException
```

Constructs KMSDisabledException from required parameters

#### `newKMSDisabledException'`

``` purescript
newKMSDisabledException' :: ({ message :: NullOrUndefined (ErrorMessage) } -> { message :: NullOrUndefined (ErrorMessage) }) -> KMSDisabledException
```

Constructs KMSDisabledException's fields from required parameters

#### `KMSInvalidStateException`

``` purescript
newtype KMSInvalidStateException
  = KMSInvalidStateException { message :: NullOrUndefined (ErrorMessage) }
```

<p>The request was rejected because the state of the specified resource isn't valid for this request. For more information, see <a href="http://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">How Key State Affects Use of a Customer Master Key</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>

##### Instances
``` purescript
Newtype KMSInvalidStateException _
Generic KMSInvalidStateException _
Show KMSInvalidStateException
Decode KMSInvalidStateException
Encode KMSInvalidStateException
```

#### `newKMSInvalidStateException`

``` purescript
newKMSInvalidStateException :: KMSInvalidStateException
```

Constructs KMSInvalidStateException from required parameters

#### `newKMSInvalidStateException'`

``` purescript
newKMSInvalidStateException' :: ({ message :: NullOrUndefined (ErrorMessage) } -> { message :: NullOrUndefined (ErrorMessage) }) -> KMSInvalidStateException
```

Constructs KMSInvalidStateException's fields from required parameters

#### `KMSNotFoundException`

``` purescript
newtype KMSNotFoundException
  = KMSNotFoundException { message :: NullOrUndefined (ErrorMessage) }
```

<p>The request was rejected because the specified entity or resource can't be found.</p>

##### Instances
``` purescript
Newtype KMSNotFoundException _
Generic KMSNotFoundException _
Show KMSNotFoundException
Decode KMSNotFoundException
Encode KMSNotFoundException
```

#### `newKMSNotFoundException`

``` purescript
newKMSNotFoundException :: KMSNotFoundException
```

Constructs KMSNotFoundException from required parameters

#### `newKMSNotFoundException'`

``` purescript
newKMSNotFoundException' :: ({ message :: NullOrUndefined (ErrorMessage) } -> { message :: NullOrUndefined (ErrorMessage) }) -> KMSNotFoundException
```

Constructs KMSNotFoundException's fields from required parameters

#### `KMSOptInRequired`

``` purescript
newtype KMSOptInRequired
  = KMSOptInRequired { message :: NullOrUndefined (ErrorMessage) }
```

<p>The AWS access key ID needs a subscription for the service.</p>

##### Instances
``` purescript
Newtype KMSOptInRequired _
Generic KMSOptInRequired _
Show KMSOptInRequired
Decode KMSOptInRequired
Encode KMSOptInRequired
```

#### `newKMSOptInRequired`

``` purescript
newKMSOptInRequired :: KMSOptInRequired
```

Constructs KMSOptInRequired from required parameters

#### `newKMSOptInRequired'`

``` purescript
newKMSOptInRequired' :: ({ message :: NullOrUndefined (ErrorMessage) } -> { message :: NullOrUndefined (ErrorMessage) }) -> KMSOptInRequired
```

Constructs KMSOptInRequired's fields from required parameters

#### `KMSThrottlingException`

``` purescript
newtype KMSThrottlingException
  = KMSThrottlingException { message :: NullOrUndefined (ErrorMessage) }
```

<p>The request was denied due to request throttling. For more information about throttling, see <a href="http://docs.aws.amazon.com/kms/latest/developerguide/limits.html#requests-per-second">Limits</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>

##### Instances
``` purescript
Newtype KMSThrottlingException _
Generic KMSThrottlingException _
Show KMSThrottlingException
Decode KMSThrottlingException
Encode KMSThrottlingException
```

#### `newKMSThrottlingException`

``` purescript
newKMSThrottlingException :: KMSThrottlingException
```

Constructs KMSThrottlingException from required parameters

#### `newKMSThrottlingException'`

``` purescript
newKMSThrottlingException' :: ({ message :: NullOrUndefined (ErrorMessage) } -> { message :: NullOrUndefined (ErrorMessage) }) -> KMSThrottlingException
```

Constructs KMSThrottlingException's fields from required parameters

#### `KeyId`

``` purescript
newtype KeyId
  = KeyId String
```

##### Instances
``` purescript
Newtype KeyId _
Generic KeyId _
Show KeyId
Decode KeyId
Encode KeyId
```

#### `LimitExceededException`

``` purescript
newtype LimitExceededException
  = LimitExceededException { message :: NullOrUndefined (ErrorMessage) }
```

<p>The requested resource exceeds the maximum number allowed, or the number of concurrent stream requests exceeds the maximum number allowed. </p>

##### Instances
``` purescript
Newtype LimitExceededException _
Generic LimitExceededException _
Show LimitExceededException
Decode LimitExceededException
Encode LimitExceededException
```

#### `newLimitExceededException`

``` purescript
newLimitExceededException :: LimitExceededException
```

Constructs LimitExceededException from required parameters

#### `newLimitExceededException'`

``` purescript
newLimitExceededException' :: ({ message :: NullOrUndefined (ErrorMessage) } -> { message :: NullOrUndefined (ErrorMessage) }) -> LimitExceededException
```

Constructs LimitExceededException's fields from required parameters

#### `ListShardsInput`

``` purescript
newtype ListShardsInput
  = ListShardsInput { "StreamName" :: NullOrUndefined (StreamName), "NextToken" :: NullOrUndefined (NextToken), "ExclusiveStartShardId" :: NullOrUndefined (ShardId), "MaxResults" :: NullOrUndefined (ListShardsInputLimit), "StreamCreationTimestamp" :: NullOrUndefined (Timestamp) }
```

##### Instances
``` purescript
Newtype ListShardsInput _
Generic ListShardsInput _
Show ListShardsInput
Decode ListShardsInput
Encode ListShardsInput
```

#### `newListShardsInput`

``` purescript
newListShardsInput :: ListShardsInput
```

Constructs ListShardsInput from required parameters

#### `newListShardsInput'`

``` purescript
newListShardsInput' :: ({ "StreamName" :: NullOrUndefined (StreamName), "NextToken" :: NullOrUndefined (NextToken), "ExclusiveStartShardId" :: NullOrUndefined (ShardId), "MaxResults" :: NullOrUndefined (ListShardsInputLimit), "StreamCreationTimestamp" :: NullOrUndefined (Timestamp) } -> { "StreamName" :: NullOrUndefined (StreamName), "NextToken" :: NullOrUndefined (NextToken), "ExclusiveStartShardId" :: NullOrUndefined (ShardId), "MaxResults" :: NullOrUndefined (ListShardsInputLimit), "StreamCreationTimestamp" :: NullOrUndefined (Timestamp) }) -> ListShardsInput
```

Constructs ListShardsInput's fields from required parameters

#### `ListShardsInputLimit`

``` purescript
newtype ListShardsInputLimit
  = ListShardsInputLimit Int
```

##### Instances
``` purescript
Newtype ListShardsInputLimit _
Generic ListShardsInputLimit _
Show ListShardsInputLimit
Decode ListShardsInputLimit
Encode ListShardsInputLimit
```

#### `ListShardsOutput`

``` purescript
newtype ListShardsOutput
  = ListShardsOutput { "Shards" :: NullOrUndefined (ShardList), "NextToken" :: NullOrUndefined (NextToken) }
```

##### Instances
``` purescript
Newtype ListShardsOutput _
Generic ListShardsOutput _
Show ListShardsOutput
Decode ListShardsOutput
Encode ListShardsOutput
```

#### `newListShardsOutput`

``` purescript
newListShardsOutput :: ListShardsOutput
```

Constructs ListShardsOutput from required parameters

#### `newListShardsOutput'`

``` purescript
newListShardsOutput' :: ({ "Shards" :: NullOrUndefined (ShardList), "NextToken" :: NullOrUndefined (NextToken) } -> { "Shards" :: NullOrUndefined (ShardList), "NextToken" :: NullOrUndefined (NextToken) }) -> ListShardsOutput
```

Constructs ListShardsOutput's fields from required parameters

#### `ListStreamsInput`

``` purescript
newtype ListStreamsInput
  = ListStreamsInput { "Limit" :: NullOrUndefined (ListStreamsInputLimit), "ExclusiveStartStreamName" :: NullOrUndefined (StreamName) }
```

<p>Represents the input for <code>ListStreams</code>.</p>

##### Instances
``` purescript
Newtype ListStreamsInput _
Generic ListStreamsInput _
Show ListStreamsInput
Decode ListStreamsInput
Encode ListStreamsInput
```

#### `newListStreamsInput`

``` purescript
newListStreamsInput :: ListStreamsInput
```

Constructs ListStreamsInput from required parameters

#### `newListStreamsInput'`

``` purescript
newListStreamsInput' :: ({ "Limit" :: NullOrUndefined (ListStreamsInputLimit), "ExclusiveStartStreamName" :: NullOrUndefined (StreamName) } -> { "Limit" :: NullOrUndefined (ListStreamsInputLimit), "ExclusiveStartStreamName" :: NullOrUndefined (StreamName) }) -> ListStreamsInput
```

Constructs ListStreamsInput's fields from required parameters

#### `ListStreamsInputLimit`

``` purescript
newtype ListStreamsInputLimit
  = ListStreamsInputLimit Int
```

##### Instances
``` purescript
Newtype ListStreamsInputLimit _
Generic ListStreamsInputLimit _
Show ListStreamsInputLimit
Decode ListStreamsInputLimit
Encode ListStreamsInputLimit
```

#### `ListStreamsOutput`

``` purescript
newtype ListStreamsOutput
  = ListStreamsOutput { "StreamNames" :: StreamNameList, "HasMoreStreams" :: BooleanObject }
```

<p>Represents the output for <code>ListStreams</code>.</p>

##### Instances
``` purescript
Newtype ListStreamsOutput _
Generic ListStreamsOutput _
Show ListStreamsOutput
Decode ListStreamsOutput
Encode ListStreamsOutput
```

#### `newListStreamsOutput`

``` purescript
newListStreamsOutput :: BooleanObject -> StreamNameList -> ListStreamsOutput
```

Constructs ListStreamsOutput from required parameters

#### `newListStreamsOutput'`

``` purescript
newListStreamsOutput' :: BooleanObject -> StreamNameList -> ({ "StreamNames" :: StreamNameList, "HasMoreStreams" :: BooleanObject } -> { "StreamNames" :: StreamNameList, "HasMoreStreams" :: BooleanObject }) -> ListStreamsOutput
```

Constructs ListStreamsOutput's fields from required parameters

#### `ListTagsForStreamInput`

``` purescript
newtype ListTagsForStreamInput
  = ListTagsForStreamInput { "StreamName" :: StreamName, "ExclusiveStartTagKey" :: NullOrUndefined (TagKey), "Limit" :: NullOrUndefined (ListTagsForStreamInputLimit) }
```

<p>Represents the input for <code>ListTagsForStream</code>.</p>

##### Instances
``` purescript
Newtype ListTagsForStreamInput _
Generic ListTagsForStreamInput _
Show ListTagsForStreamInput
Decode ListTagsForStreamInput
Encode ListTagsForStreamInput
```

#### `newListTagsForStreamInput`

``` purescript
newListTagsForStreamInput :: StreamName -> ListTagsForStreamInput
```

Constructs ListTagsForStreamInput from required parameters

#### `newListTagsForStreamInput'`

``` purescript
newListTagsForStreamInput' :: StreamName -> ({ "StreamName" :: StreamName, "ExclusiveStartTagKey" :: NullOrUndefined (TagKey), "Limit" :: NullOrUndefined (ListTagsForStreamInputLimit) } -> { "StreamName" :: StreamName, "ExclusiveStartTagKey" :: NullOrUndefined (TagKey), "Limit" :: NullOrUndefined (ListTagsForStreamInputLimit) }) -> ListTagsForStreamInput
```

Constructs ListTagsForStreamInput's fields from required parameters

#### `ListTagsForStreamInputLimit`

``` purescript
newtype ListTagsForStreamInputLimit
  = ListTagsForStreamInputLimit Int
```

##### Instances
``` purescript
Newtype ListTagsForStreamInputLimit _
Generic ListTagsForStreamInputLimit _
Show ListTagsForStreamInputLimit
Decode ListTagsForStreamInputLimit
Encode ListTagsForStreamInputLimit
```

#### `ListTagsForStreamOutput`

``` purescript
newtype ListTagsForStreamOutput
  = ListTagsForStreamOutput { "Tags" :: TagList, "HasMoreTags" :: BooleanObject }
```

<p>Represents the output for <code>ListTagsForStream</code>.</p>

##### Instances
``` purescript
Newtype ListTagsForStreamOutput _
Generic ListTagsForStreamOutput _
Show ListTagsForStreamOutput
Decode ListTagsForStreamOutput
Encode ListTagsForStreamOutput
```

#### `newListTagsForStreamOutput`

``` purescript
newListTagsForStreamOutput :: BooleanObject -> TagList -> ListTagsForStreamOutput
```

Constructs ListTagsForStreamOutput from required parameters

#### `newListTagsForStreamOutput'`

``` purescript
newListTagsForStreamOutput' :: BooleanObject -> TagList -> ({ "Tags" :: TagList, "HasMoreTags" :: BooleanObject } -> { "Tags" :: TagList, "HasMoreTags" :: BooleanObject }) -> ListTagsForStreamOutput
```

Constructs ListTagsForStreamOutput's fields from required parameters

#### `MergeShardsInput`

``` purescript
newtype MergeShardsInput
  = MergeShardsInput { "StreamName" :: StreamName, "ShardToMerge" :: ShardId, "AdjacentShardToMerge" :: ShardId }
```

<p>Represents the input for <code>MergeShards</code>.</p>

##### Instances
``` purescript
Newtype MergeShardsInput _
Generic MergeShardsInput _
Show MergeShardsInput
Decode MergeShardsInput
Encode MergeShardsInput
```

#### `newMergeShardsInput`

``` purescript
newMergeShardsInput :: ShardId -> ShardId -> StreamName -> MergeShardsInput
```

Constructs MergeShardsInput from required parameters

#### `newMergeShardsInput'`

``` purescript
newMergeShardsInput' :: ShardId -> ShardId -> StreamName -> ({ "StreamName" :: StreamName, "ShardToMerge" :: ShardId, "AdjacentShardToMerge" :: ShardId } -> { "StreamName" :: StreamName, "ShardToMerge" :: ShardId, "AdjacentShardToMerge" :: ShardId }) -> MergeShardsInput
```

Constructs MergeShardsInput's fields from required parameters

#### `MetricsName`

``` purescript
newtype MetricsName
  = MetricsName String
```

##### Instances
``` purescript
Newtype MetricsName _
Generic MetricsName _
Show MetricsName
Decode MetricsName
Encode MetricsName
```

#### `MetricsNameList`

``` purescript
newtype MetricsNameList
  = MetricsNameList (Array MetricsName)
```

##### Instances
``` purescript
Newtype MetricsNameList _
Generic MetricsNameList _
Show MetricsNameList
Decode MetricsNameList
Encode MetricsNameList
```

#### `MillisBehindLatest`

``` purescript
newtype MillisBehindLatest
  = MillisBehindLatest Number
```

##### Instances
``` purescript
Newtype MillisBehindLatest _
Generic MillisBehindLatest _
Show MillisBehindLatest
Decode MillisBehindLatest
Encode MillisBehindLatest
```

#### `NextToken`

``` purescript
newtype NextToken
  = NextToken String
```

##### Instances
``` purescript
Newtype NextToken _
Generic NextToken _
Show NextToken
Decode NextToken
Encode NextToken
```

#### `PartitionKey`

``` purescript
newtype PartitionKey
  = PartitionKey String
```

##### Instances
``` purescript
Newtype PartitionKey _
Generic PartitionKey _
Show PartitionKey
Decode PartitionKey
Encode PartitionKey
```

#### `PositiveIntegerObject`

``` purescript
newtype PositiveIntegerObject
  = PositiveIntegerObject Int
```

##### Instances
``` purescript
Newtype PositiveIntegerObject _
Generic PositiveIntegerObject _
Show PositiveIntegerObject
Decode PositiveIntegerObject
Encode PositiveIntegerObject
```

#### `ProvisionedThroughputExceededException`

``` purescript
newtype ProvisionedThroughputExceededException
  = ProvisionedThroughputExceededException { message :: NullOrUndefined (ErrorMessage) }
```

<p>The request rate for the stream is too high, or the requested data is too large for the available throughput. Reduce the frequency or size of your requests. For more information, see <a href="http://docs.aws.amazon.com/kinesis/latest/dev/service-sizes-and-limits.html">Streams Limits</a> in the <i>Amazon Kinesis Data Streams Developer Guide</i>, and <a href="http://docs.aws.amazon.com/general/latest/gr/api-retries.html">Error Retries and Exponential Backoff in AWS</a> in the <i>AWS General Reference</i>.</p>

##### Instances
``` purescript
Newtype ProvisionedThroughputExceededException _
Generic ProvisionedThroughputExceededException _
Show ProvisionedThroughputExceededException
Decode ProvisionedThroughputExceededException
Encode ProvisionedThroughputExceededException
```

#### `newProvisionedThroughputExceededException`

``` purescript
newProvisionedThroughputExceededException :: ProvisionedThroughputExceededException
```

Constructs ProvisionedThroughputExceededException from required parameters

#### `newProvisionedThroughputExceededException'`

``` purescript
newProvisionedThroughputExceededException' :: ({ message :: NullOrUndefined (ErrorMessage) } -> { message :: NullOrUndefined (ErrorMessage) }) -> ProvisionedThroughputExceededException
```

Constructs ProvisionedThroughputExceededException's fields from required parameters

#### `PutRecordInput`

``` purescript
newtype PutRecordInput
  = PutRecordInput { "StreamName" :: StreamName, "Data" :: Data, "PartitionKey" :: PartitionKey, "ExplicitHashKey" :: NullOrUndefined (HashKey), "SequenceNumberForOrdering" :: NullOrUndefined (SequenceNumber) }
```

<p>Represents the input for <code>PutRecord</code>.</p>

##### Instances
``` purescript
Newtype PutRecordInput _
Generic PutRecordInput _
Show PutRecordInput
Decode PutRecordInput
Encode PutRecordInput
```

#### `newPutRecordInput`

``` purescript
newPutRecordInput :: Data -> PartitionKey -> StreamName -> PutRecordInput
```

Constructs PutRecordInput from required parameters

#### `newPutRecordInput'`

``` purescript
newPutRecordInput' :: Data -> PartitionKey -> StreamName -> ({ "StreamName" :: StreamName, "Data" :: Data, "PartitionKey" :: PartitionKey, "ExplicitHashKey" :: NullOrUndefined (HashKey), "SequenceNumberForOrdering" :: NullOrUndefined (SequenceNumber) } -> { "StreamName" :: StreamName, "Data" :: Data, "PartitionKey" :: PartitionKey, "ExplicitHashKey" :: NullOrUndefined (HashKey), "SequenceNumberForOrdering" :: NullOrUndefined (SequenceNumber) }) -> PutRecordInput
```

Constructs PutRecordInput's fields from required parameters

#### `PutRecordOutput`

``` purescript
newtype PutRecordOutput
  = PutRecordOutput { "ShardId" :: ShardId, "SequenceNumber" :: SequenceNumber, "EncryptionType" :: NullOrUndefined (EncryptionType) }
```

<p>Represents the output for <code>PutRecord</code>.</p>

##### Instances
``` purescript
Newtype PutRecordOutput _
Generic PutRecordOutput _
Show PutRecordOutput
Decode PutRecordOutput
Encode PutRecordOutput
```

#### `newPutRecordOutput`

``` purescript
newPutRecordOutput :: SequenceNumber -> ShardId -> PutRecordOutput
```

Constructs PutRecordOutput from required parameters

#### `newPutRecordOutput'`

``` purescript
newPutRecordOutput' :: SequenceNumber -> ShardId -> ({ "ShardId" :: ShardId, "SequenceNumber" :: SequenceNumber, "EncryptionType" :: NullOrUndefined (EncryptionType) } -> { "ShardId" :: ShardId, "SequenceNumber" :: SequenceNumber, "EncryptionType" :: NullOrUndefined (EncryptionType) }) -> PutRecordOutput
```

Constructs PutRecordOutput's fields from required parameters

#### `PutRecordsInput`

``` purescript
newtype PutRecordsInput
  = PutRecordsInput { "Records" :: PutRecordsRequestEntryList, "StreamName" :: StreamName }
```

<p>A <code>PutRecords</code> request.</p>

##### Instances
``` purescript
Newtype PutRecordsInput _
Generic PutRecordsInput _
Show PutRecordsInput
Decode PutRecordsInput
Encode PutRecordsInput
```

#### `newPutRecordsInput`

``` purescript
newPutRecordsInput :: PutRecordsRequestEntryList -> StreamName -> PutRecordsInput
```

Constructs PutRecordsInput from required parameters

#### `newPutRecordsInput'`

``` purescript
newPutRecordsInput' :: PutRecordsRequestEntryList -> StreamName -> ({ "Records" :: PutRecordsRequestEntryList, "StreamName" :: StreamName } -> { "Records" :: PutRecordsRequestEntryList, "StreamName" :: StreamName }) -> PutRecordsInput
```

Constructs PutRecordsInput's fields from required parameters

#### `PutRecordsOutput`

``` purescript
newtype PutRecordsOutput
  = PutRecordsOutput { "FailedRecordCount" :: NullOrUndefined (PositiveIntegerObject), "Records" :: PutRecordsResultEntryList, "EncryptionType" :: NullOrUndefined (EncryptionType) }
```

<p> <code>PutRecords</code> results.</p>

##### Instances
``` purescript
Newtype PutRecordsOutput _
Generic PutRecordsOutput _
Show PutRecordsOutput
Decode PutRecordsOutput
Encode PutRecordsOutput
```

#### `newPutRecordsOutput`

``` purescript
newPutRecordsOutput :: PutRecordsResultEntryList -> PutRecordsOutput
```

Constructs PutRecordsOutput from required parameters

#### `newPutRecordsOutput'`

``` purescript
newPutRecordsOutput' :: PutRecordsResultEntryList -> ({ "FailedRecordCount" :: NullOrUndefined (PositiveIntegerObject), "Records" :: PutRecordsResultEntryList, "EncryptionType" :: NullOrUndefined (EncryptionType) } -> { "FailedRecordCount" :: NullOrUndefined (PositiveIntegerObject), "Records" :: PutRecordsResultEntryList, "EncryptionType" :: NullOrUndefined (EncryptionType) }) -> PutRecordsOutput
```

Constructs PutRecordsOutput's fields from required parameters

#### `PutRecordsRequestEntry`

``` purescript
newtype PutRecordsRequestEntry
  = PutRecordsRequestEntry { "Data" :: Data, "ExplicitHashKey" :: NullOrUndefined (HashKey), "PartitionKey" :: PartitionKey }
```

<p>Represents the output for <code>PutRecords</code>.</p>

##### Instances
``` purescript
Newtype PutRecordsRequestEntry _
Generic PutRecordsRequestEntry _
Show PutRecordsRequestEntry
Decode PutRecordsRequestEntry
Encode PutRecordsRequestEntry
```

#### `newPutRecordsRequestEntry`

``` purescript
newPutRecordsRequestEntry :: Data -> PartitionKey -> PutRecordsRequestEntry
```

Constructs PutRecordsRequestEntry from required parameters

#### `newPutRecordsRequestEntry'`

``` purescript
newPutRecordsRequestEntry' :: Data -> PartitionKey -> ({ "Data" :: Data, "ExplicitHashKey" :: NullOrUndefined (HashKey), "PartitionKey" :: PartitionKey } -> { "Data" :: Data, "ExplicitHashKey" :: NullOrUndefined (HashKey), "PartitionKey" :: PartitionKey }) -> PutRecordsRequestEntry
```

Constructs PutRecordsRequestEntry's fields from required parameters

#### `PutRecordsRequestEntryList`

``` purescript
newtype PutRecordsRequestEntryList
  = PutRecordsRequestEntryList (Array PutRecordsRequestEntry)
```

##### Instances
``` purescript
Newtype PutRecordsRequestEntryList _
Generic PutRecordsRequestEntryList _
Show PutRecordsRequestEntryList
Decode PutRecordsRequestEntryList
Encode PutRecordsRequestEntryList
```

#### `PutRecordsResultEntry`

``` purescript
newtype PutRecordsResultEntry
  = PutRecordsResultEntry { "SequenceNumber" :: NullOrUndefined (SequenceNumber), "ShardId" :: NullOrUndefined (ShardId), "ErrorCode" :: NullOrUndefined (ErrorCode), "ErrorMessage" :: NullOrUndefined (ErrorMessage) }
```

<p>Represents the result of an individual record from a <code>PutRecords</code> request. A record that is successfully added to a stream includes <code>SequenceNumber</code> and <code>ShardId</code> in the result. A record that fails to be added to the stream includes <code>ErrorCode</code> and <code>ErrorMessage</code> in the result.</p>

##### Instances
``` purescript
Newtype PutRecordsResultEntry _
Generic PutRecordsResultEntry _
Show PutRecordsResultEntry
Decode PutRecordsResultEntry
Encode PutRecordsResultEntry
```

#### `newPutRecordsResultEntry`

``` purescript
newPutRecordsResultEntry :: PutRecordsResultEntry
```

Constructs PutRecordsResultEntry from required parameters

#### `newPutRecordsResultEntry'`

``` purescript
newPutRecordsResultEntry' :: ({ "SequenceNumber" :: NullOrUndefined (SequenceNumber), "ShardId" :: NullOrUndefined (ShardId), "ErrorCode" :: NullOrUndefined (ErrorCode), "ErrorMessage" :: NullOrUndefined (ErrorMessage) } -> { "SequenceNumber" :: NullOrUndefined (SequenceNumber), "ShardId" :: NullOrUndefined (ShardId), "ErrorCode" :: NullOrUndefined (ErrorCode), "ErrorMessage" :: NullOrUndefined (ErrorMessage) }) -> PutRecordsResultEntry
```

Constructs PutRecordsResultEntry's fields from required parameters

#### `PutRecordsResultEntryList`

``` purescript
newtype PutRecordsResultEntryList
  = PutRecordsResultEntryList (Array PutRecordsResultEntry)
```

##### Instances
``` purescript
Newtype PutRecordsResultEntryList _
Generic PutRecordsResultEntryList _
Show PutRecordsResultEntryList
Decode PutRecordsResultEntryList
Encode PutRecordsResultEntryList
```

#### `Record''`

``` purescript
newtype Record''
  = Record'' { "SequenceNumber" :: SequenceNumber, "ApproximateArrivalTimestamp" :: NullOrUndefined (Timestamp), "Data" :: Data, "PartitionKey" :: PartitionKey, "EncryptionType" :: NullOrUndefined (EncryptionType) }
```

<p>The unit of data of the Kinesis data stream, which is composed of a sequence number, a partition key, and a data blob.</p>

##### Instances
``` purescript
Newtype Record'' _
Generic Record'' _
Show Record''
Decode Record''
Encode Record''
```

#### `newRecord''`

``` purescript
newRecord'' :: Data -> PartitionKey -> SequenceNumber -> Record''
```

Constructs Record'' from required parameters

#### `newRecord'''`

``` purescript
newRecord''' :: Data -> PartitionKey -> SequenceNumber -> ({ "SequenceNumber" :: SequenceNumber, "ApproximateArrivalTimestamp" :: NullOrUndefined (Timestamp), "Data" :: Data, "PartitionKey" :: PartitionKey, "EncryptionType" :: NullOrUndefined (EncryptionType) } -> { "SequenceNumber" :: SequenceNumber, "ApproximateArrivalTimestamp" :: NullOrUndefined (Timestamp), "Data" :: Data, "PartitionKey" :: PartitionKey, "EncryptionType" :: NullOrUndefined (EncryptionType) }) -> Record''
```

Constructs Record'''s fields from required parameters

#### `RecordList`

``` purescript
newtype RecordList
  = RecordList (Array Record'')
```

##### Instances
``` purescript
Newtype RecordList _
Generic RecordList _
Show RecordList
Decode RecordList
Encode RecordList
```

#### `RemoveTagsFromStreamInput`

``` purescript
newtype RemoveTagsFromStreamInput
  = RemoveTagsFromStreamInput { "StreamName" :: StreamName, "TagKeys" :: TagKeyList }
```

<p>Represents the input for <code>RemoveTagsFromStream</code>.</p>

##### Instances
``` purescript
Newtype RemoveTagsFromStreamInput _
Generic RemoveTagsFromStreamInput _
Show RemoveTagsFromStreamInput
Decode RemoveTagsFromStreamInput
Encode RemoveTagsFromStreamInput
```

#### `newRemoveTagsFromStreamInput`

``` purescript
newRemoveTagsFromStreamInput :: StreamName -> TagKeyList -> RemoveTagsFromStreamInput
```

Constructs RemoveTagsFromStreamInput from required parameters

#### `newRemoveTagsFromStreamInput'`

``` purescript
newRemoveTagsFromStreamInput' :: StreamName -> TagKeyList -> ({ "StreamName" :: StreamName, "TagKeys" :: TagKeyList } -> { "StreamName" :: StreamName, "TagKeys" :: TagKeyList }) -> RemoveTagsFromStreamInput
```

Constructs RemoveTagsFromStreamInput's fields from required parameters

#### `ResourceInUseException`

``` purescript
newtype ResourceInUseException
  = ResourceInUseException { message :: NullOrUndefined (ErrorMessage) }
```

<p>The resource is not available for this operation. For successful operation, the resource must be in the <code>ACTIVE</code> state.</p>

##### Instances
``` purescript
Newtype ResourceInUseException _
Generic ResourceInUseException _
Show ResourceInUseException
Decode ResourceInUseException
Encode ResourceInUseException
```

#### `newResourceInUseException`

``` purescript
newResourceInUseException :: ResourceInUseException
```

Constructs ResourceInUseException from required parameters

#### `newResourceInUseException'`

``` purescript
newResourceInUseException' :: ({ message :: NullOrUndefined (ErrorMessage) } -> { message :: NullOrUndefined (ErrorMessage) }) -> ResourceInUseException
```

Constructs ResourceInUseException's fields from required parameters

#### `ResourceNotFoundException`

``` purescript
newtype ResourceNotFoundException
  = ResourceNotFoundException { message :: NullOrUndefined (ErrorMessage) }
```

<p>The requested resource could not be found. The stream might not be specified correctly.</p>

##### Instances
``` purescript
Newtype ResourceNotFoundException _
Generic ResourceNotFoundException _
Show ResourceNotFoundException
Decode ResourceNotFoundException
Encode ResourceNotFoundException
```

#### `newResourceNotFoundException`

``` purescript
newResourceNotFoundException :: ResourceNotFoundException
```

Constructs ResourceNotFoundException from required parameters

#### `newResourceNotFoundException'`

``` purescript
newResourceNotFoundException' :: ({ message :: NullOrUndefined (ErrorMessage) } -> { message :: NullOrUndefined (ErrorMessage) }) -> ResourceNotFoundException
```

Constructs ResourceNotFoundException's fields from required parameters

#### `RetentionPeriodHours`

``` purescript
newtype RetentionPeriodHours
  = RetentionPeriodHours Int
```

##### Instances
``` purescript
Newtype RetentionPeriodHours _
Generic RetentionPeriodHours _
Show RetentionPeriodHours
Decode RetentionPeriodHours
Encode RetentionPeriodHours
```

#### `ScalingType`

``` purescript
newtype ScalingType
  = ScalingType String
```

##### Instances
``` purescript
Newtype ScalingType _
Generic ScalingType _
Show ScalingType
Decode ScalingType
Encode ScalingType
```

#### `SequenceNumber`

``` purescript
newtype SequenceNumber
  = SequenceNumber String
```

##### Instances
``` purescript
Newtype SequenceNumber _
Generic SequenceNumber _
Show SequenceNumber
Decode SequenceNumber
Encode SequenceNumber
```

#### `SequenceNumberRange`

``` purescript
newtype SequenceNumberRange
  = SequenceNumberRange { "StartingSequenceNumber" :: SequenceNumber, "EndingSequenceNumber" :: NullOrUndefined (SequenceNumber) }
```

<p>The range of possible sequence numbers for the shard.</p>

##### Instances
``` purescript
Newtype SequenceNumberRange _
Generic SequenceNumberRange _
Show SequenceNumberRange
Decode SequenceNumberRange
Encode SequenceNumberRange
```

#### `newSequenceNumberRange`

``` purescript
newSequenceNumberRange :: SequenceNumber -> SequenceNumberRange
```

Constructs SequenceNumberRange from required parameters

#### `newSequenceNumberRange'`

``` purescript
newSequenceNumberRange' :: SequenceNumber -> ({ "StartingSequenceNumber" :: SequenceNumber, "EndingSequenceNumber" :: NullOrUndefined (SequenceNumber) } -> { "StartingSequenceNumber" :: SequenceNumber, "EndingSequenceNumber" :: NullOrUndefined (SequenceNumber) }) -> SequenceNumberRange
```

Constructs SequenceNumberRange's fields from required parameters

#### `Shard`

``` purescript
newtype Shard
  = Shard { "ShardId" :: ShardId, "ParentShardId" :: NullOrUndefined (ShardId), "AdjacentParentShardId" :: NullOrUndefined (ShardId), "HashKeyRange" :: HashKeyRange, "SequenceNumberRange" :: SequenceNumberRange }
```

<p>A uniquely identified group of data records in a Kinesis data stream.</p>

##### Instances
``` purescript
Newtype Shard _
Generic Shard _
Show Shard
Decode Shard
Encode Shard
```

#### `newShard`

``` purescript
newShard :: HashKeyRange -> SequenceNumberRange -> ShardId -> Shard
```

Constructs Shard from required parameters

#### `newShard'`

``` purescript
newShard' :: HashKeyRange -> SequenceNumberRange -> ShardId -> ({ "ShardId" :: ShardId, "ParentShardId" :: NullOrUndefined (ShardId), "AdjacentParentShardId" :: NullOrUndefined (ShardId), "HashKeyRange" :: HashKeyRange, "SequenceNumberRange" :: SequenceNumberRange } -> { "ShardId" :: ShardId, "ParentShardId" :: NullOrUndefined (ShardId), "AdjacentParentShardId" :: NullOrUndefined (ShardId), "HashKeyRange" :: HashKeyRange, "SequenceNumberRange" :: SequenceNumberRange }) -> Shard
```

Constructs Shard's fields from required parameters

#### `ShardCountObject`

``` purescript
newtype ShardCountObject
  = ShardCountObject Int
```

##### Instances
``` purescript
Newtype ShardCountObject _
Generic ShardCountObject _
Show ShardCountObject
Decode ShardCountObject
Encode ShardCountObject
```

#### `ShardId`

``` purescript
newtype ShardId
  = ShardId String
```

##### Instances
``` purescript
Newtype ShardId _
Generic ShardId _
Show ShardId
Decode ShardId
Encode ShardId
```

#### `ShardIterator`

``` purescript
newtype ShardIterator
  = ShardIterator String
```

##### Instances
``` purescript
Newtype ShardIterator _
Generic ShardIterator _
Show ShardIterator
Decode ShardIterator
Encode ShardIterator
```

#### `ShardIteratorType`

``` purescript
newtype ShardIteratorType
  = ShardIteratorType String
```

##### Instances
``` purescript
Newtype ShardIteratorType _
Generic ShardIteratorType _
Show ShardIteratorType
Decode ShardIteratorType
Encode ShardIteratorType
```

#### `ShardList`

``` purescript
newtype ShardList
  = ShardList (Array Shard)
```

##### Instances
``` purescript
Newtype ShardList _
Generic ShardList _
Show ShardList
Decode ShardList
Encode ShardList
```

#### `SplitShardInput`

``` purescript
newtype SplitShardInput
  = SplitShardInput { "StreamName" :: StreamName, "ShardToSplit" :: ShardId, "NewStartingHashKey" :: HashKey }
```

<p>Represents the input for <code>SplitShard</code>.</p>

##### Instances
``` purescript
Newtype SplitShardInput _
Generic SplitShardInput _
Show SplitShardInput
Decode SplitShardInput
Encode SplitShardInput
```

#### `newSplitShardInput`

``` purescript
newSplitShardInput :: HashKey -> ShardId -> StreamName -> SplitShardInput
```

Constructs SplitShardInput from required parameters

#### `newSplitShardInput'`

``` purescript
newSplitShardInput' :: HashKey -> ShardId -> StreamName -> ({ "StreamName" :: StreamName, "ShardToSplit" :: ShardId, "NewStartingHashKey" :: HashKey } -> { "StreamName" :: StreamName, "ShardToSplit" :: ShardId, "NewStartingHashKey" :: HashKey }) -> SplitShardInput
```

Constructs SplitShardInput's fields from required parameters

#### `StartStreamEncryptionInput`

``` purescript
newtype StartStreamEncryptionInput
  = StartStreamEncryptionInput { "StreamName" :: StreamName, "EncryptionType" :: EncryptionType, "KeyId" :: KeyId }
```

##### Instances
``` purescript
Newtype StartStreamEncryptionInput _
Generic StartStreamEncryptionInput _
Show StartStreamEncryptionInput
Decode StartStreamEncryptionInput
Encode StartStreamEncryptionInput
```

#### `newStartStreamEncryptionInput`

``` purescript
newStartStreamEncryptionInput :: EncryptionType -> KeyId -> StreamName -> StartStreamEncryptionInput
```

Constructs StartStreamEncryptionInput from required parameters

#### `newStartStreamEncryptionInput'`

``` purescript
newStartStreamEncryptionInput' :: EncryptionType -> KeyId -> StreamName -> ({ "StreamName" :: StreamName, "EncryptionType" :: EncryptionType, "KeyId" :: KeyId } -> { "StreamName" :: StreamName, "EncryptionType" :: EncryptionType, "KeyId" :: KeyId }) -> StartStreamEncryptionInput
```

Constructs StartStreamEncryptionInput's fields from required parameters

#### `StopStreamEncryptionInput`

``` purescript
newtype StopStreamEncryptionInput
  = StopStreamEncryptionInput { "StreamName" :: StreamName, "EncryptionType" :: EncryptionType, "KeyId" :: KeyId }
```

##### Instances
``` purescript
Newtype StopStreamEncryptionInput _
Generic StopStreamEncryptionInput _
Show StopStreamEncryptionInput
Decode StopStreamEncryptionInput
Encode StopStreamEncryptionInput
```

#### `newStopStreamEncryptionInput`

``` purescript
newStopStreamEncryptionInput :: EncryptionType -> KeyId -> StreamName -> StopStreamEncryptionInput
```

Constructs StopStreamEncryptionInput from required parameters

#### `newStopStreamEncryptionInput'`

``` purescript
newStopStreamEncryptionInput' :: EncryptionType -> KeyId -> StreamName -> ({ "StreamName" :: StreamName, "EncryptionType" :: EncryptionType, "KeyId" :: KeyId } -> { "StreamName" :: StreamName, "EncryptionType" :: EncryptionType, "KeyId" :: KeyId }) -> StopStreamEncryptionInput
```

Constructs StopStreamEncryptionInput's fields from required parameters

#### `StreamARN`

``` purescript
newtype StreamARN
  = StreamARN String
```

##### Instances
``` purescript
Newtype StreamARN _
Generic StreamARN _
Show StreamARN
Decode StreamARN
Encode StreamARN
```

#### `StreamDescription`

``` purescript
newtype StreamDescription
  = StreamDescription { "StreamName" :: StreamName, "StreamARN" :: StreamARN, "StreamStatus" :: StreamStatus, "Shards" :: ShardList, "HasMoreShards" :: BooleanObject, "RetentionPeriodHours" :: RetentionPeriodHours, "StreamCreationTimestamp" :: Timestamp, "EnhancedMonitoring" :: EnhancedMonitoringList, "EncryptionType" :: NullOrUndefined (EncryptionType), "KeyId" :: NullOrUndefined (KeyId) }
```

<p>Represents the output for <a>DescribeStream</a>.</p>

##### Instances
``` purescript
Newtype StreamDescription _
Generic StreamDescription _
Show StreamDescription
Decode StreamDescription
Encode StreamDescription
```

#### `newStreamDescription`

``` purescript
newStreamDescription :: EnhancedMonitoringList -> BooleanObject -> RetentionPeriodHours -> ShardList -> StreamARN -> Timestamp -> StreamName -> StreamStatus -> StreamDescription
```

Constructs StreamDescription from required parameters

#### `newStreamDescription'`

``` purescript
newStreamDescription' :: EnhancedMonitoringList -> BooleanObject -> RetentionPeriodHours -> ShardList -> StreamARN -> Timestamp -> StreamName -> StreamStatus -> ({ "StreamName" :: StreamName, "StreamARN" :: StreamARN, "StreamStatus" :: StreamStatus, "Shards" :: ShardList, "HasMoreShards" :: BooleanObject, "RetentionPeriodHours" :: RetentionPeriodHours, "StreamCreationTimestamp" :: Timestamp, "EnhancedMonitoring" :: EnhancedMonitoringList, "EncryptionType" :: NullOrUndefined (EncryptionType), "KeyId" :: NullOrUndefined (KeyId) } -> { "StreamName" :: StreamName, "StreamARN" :: StreamARN, "StreamStatus" :: StreamStatus, "Shards" :: ShardList, "HasMoreShards" :: BooleanObject, "RetentionPeriodHours" :: RetentionPeriodHours, "StreamCreationTimestamp" :: Timestamp, "EnhancedMonitoring" :: EnhancedMonitoringList, "EncryptionType" :: NullOrUndefined (EncryptionType), "KeyId" :: NullOrUndefined (KeyId) }) -> StreamDescription
```

Constructs StreamDescription's fields from required parameters

#### `StreamDescriptionSummary`

``` purescript
newtype StreamDescriptionSummary
  = StreamDescriptionSummary { "StreamName" :: StreamName, "StreamARN" :: StreamARN, "StreamStatus" :: StreamStatus, "RetentionPeriodHours" :: PositiveIntegerObject, "StreamCreationTimestamp" :: Timestamp, "EnhancedMonitoring" :: EnhancedMonitoringList, "EncryptionType" :: NullOrUndefined (EncryptionType), "KeyId" :: NullOrUndefined (KeyId), "OpenShardCount" :: ShardCountObject }
```

<p>Represents the output for <a>DescribeStreamSummary</a> </p>

##### Instances
``` purescript
Newtype StreamDescriptionSummary _
Generic StreamDescriptionSummary _
Show StreamDescriptionSummary
Decode StreamDescriptionSummary
Encode StreamDescriptionSummary
```

#### `newStreamDescriptionSummary`

``` purescript
newStreamDescriptionSummary :: EnhancedMonitoringList -> ShardCountObject -> PositiveIntegerObject -> StreamARN -> Timestamp -> StreamName -> StreamStatus -> StreamDescriptionSummary
```

Constructs StreamDescriptionSummary from required parameters

#### `newStreamDescriptionSummary'`

``` purescript
newStreamDescriptionSummary' :: EnhancedMonitoringList -> ShardCountObject -> PositiveIntegerObject -> StreamARN -> Timestamp -> StreamName -> StreamStatus -> ({ "StreamName" :: StreamName, "StreamARN" :: StreamARN, "StreamStatus" :: StreamStatus, "RetentionPeriodHours" :: PositiveIntegerObject, "StreamCreationTimestamp" :: Timestamp, "EnhancedMonitoring" :: EnhancedMonitoringList, "EncryptionType" :: NullOrUndefined (EncryptionType), "KeyId" :: NullOrUndefined (KeyId), "OpenShardCount" :: ShardCountObject } -> { "StreamName" :: StreamName, "StreamARN" :: StreamARN, "StreamStatus" :: StreamStatus, "RetentionPeriodHours" :: PositiveIntegerObject, "StreamCreationTimestamp" :: Timestamp, "EnhancedMonitoring" :: EnhancedMonitoringList, "EncryptionType" :: NullOrUndefined (EncryptionType), "KeyId" :: NullOrUndefined (KeyId), "OpenShardCount" :: ShardCountObject }) -> StreamDescriptionSummary
```

Constructs StreamDescriptionSummary's fields from required parameters

#### `StreamName`

``` purescript
newtype StreamName
  = StreamName String
```

##### Instances
``` purescript
Newtype StreamName _
Generic StreamName _
Show StreamName
Decode StreamName
Encode StreamName
```

#### `StreamNameList`

``` purescript
newtype StreamNameList
  = StreamNameList (Array StreamName)
```

##### Instances
``` purescript
Newtype StreamNameList _
Generic StreamNameList _
Show StreamNameList
Decode StreamNameList
Encode StreamNameList
```

#### `StreamStatus`

``` purescript
newtype StreamStatus
  = StreamStatus String
```

##### Instances
``` purescript
Newtype StreamStatus _
Generic StreamStatus _
Show StreamStatus
Decode StreamStatus
Encode StreamStatus
```

#### `Tag`

``` purescript
newtype Tag
  = Tag { "Key" :: TagKey, "Value" :: NullOrUndefined (TagValue) }
```

<p>Metadata assigned to the stream, consisting of a key-value pair.</p>

##### Instances
``` purescript
Newtype Tag _
Generic Tag _
Show Tag
Decode Tag
Encode Tag
```

#### `newTag`

``` purescript
newTag :: TagKey -> Tag
```

Constructs Tag from required parameters

#### `newTag'`

``` purescript
newTag' :: TagKey -> ({ "Key" :: TagKey, "Value" :: NullOrUndefined (TagValue) } -> { "Key" :: TagKey, "Value" :: NullOrUndefined (TagValue) }) -> Tag
```

Constructs Tag's fields from required parameters

#### `TagKey`

``` purescript
newtype TagKey
  = TagKey String
```

##### Instances
``` purescript
Newtype TagKey _
Generic TagKey _
Show TagKey
Decode TagKey
Encode TagKey
```

#### `TagKeyList`

``` purescript
newtype TagKeyList
  = TagKeyList (Array TagKey)
```

##### Instances
``` purescript
Newtype TagKeyList _
Generic TagKeyList _
Show TagKeyList
Decode TagKeyList
Encode TagKeyList
```

#### `TagList`

``` purescript
newtype TagList
  = TagList (Array Tag)
```

##### Instances
``` purescript
Newtype TagList _
Generic TagList _
Show TagList
Decode TagList
Encode TagList
```

#### `TagMap`

``` purescript
newtype TagMap
  = TagMap (StrMap TagValue)
```

##### Instances
``` purescript
Newtype TagMap _
Generic TagMap _
Show TagMap
Decode TagMap
Encode TagMap
```

#### `TagValue`

``` purescript
newtype TagValue
  = TagValue String
```

##### Instances
``` purescript
Newtype TagValue _
Generic TagValue _
Show TagValue
Decode TagValue
Encode TagValue
```

#### `UpdateShardCountInput`

``` purescript
newtype UpdateShardCountInput
  = UpdateShardCountInput { "StreamName" :: StreamName, "TargetShardCount" :: PositiveIntegerObject, "ScalingType" :: ScalingType }
```

##### Instances
``` purescript
Newtype UpdateShardCountInput _
Generic UpdateShardCountInput _
Show UpdateShardCountInput
Decode UpdateShardCountInput
Encode UpdateShardCountInput
```

#### `newUpdateShardCountInput`

``` purescript
newUpdateShardCountInput :: ScalingType -> StreamName -> PositiveIntegerObject -> UpdateShardCountInput
```

Constructs UpdateShardCountInput from required parameters

#### `newUpdateShardCountInput'`

``` purescript
newUpdateShardCountInput' :: ScalingType -> StreamName -> PositiveIntegerObject -> ({ "StreamName" :: StreamName, "TargetShardCount" :: PositiveIntegerObject, "ScalingType" :: ScalingType } -> { "StreamName" :: StreamName, "TargetShardCount" :: PositiveIntegerObject, "ScalingType" :: ScalingType }) -> UpdateShardCountInput
```

Constructs UpdateShardCountInput's fields from required parameters

#### `UpdateShardCountOutput`

``` purescript
newtype UpdateShardCountOutput
  = UpdateShardCountOutput { "StreamName" :: NullOrUndefined (StreamName), "CurrentShardCount" :: NullOrUndefined (PositiveIntegerObject), "TargetShardCount" :: NullOrUndefined (PositiveIntegerObject) }
```

##### Instances
``` purescript
Newtype UpdateShardCountOutput _
Generic UpdateShardCountOutput _
Show UpdateShardCountOutput
Decode UpdateShardCountOutput
Encode UpdateShardCountOutput
```

#### `newUpdateShardCountOutput`

``` purescript
newUpdateShardCountOutput :: UpdateShardCountOutput
```

Constructs UpdateShardCountOutput from required parameters

#### `newUpdateShardCountOutput'`

``` purescript
newUpdateShardCountOutput' :: ({ "StreamName" :: NullOrUndefined (StreamName), "CurrentShardCount" :: NullOrUndefined (PositiveIntegerObject), "TargetShardCount" :: NullOrUndefined (PositiveIntegerObject) } -> { "StreamName" :: NullOrUndefined (StreamName), "CurrentShardCount" :: NullOrUndefined (PositiveIntegerObject), "TargetShardCount" :: NullOrUndefined (PositiveIntegerObject) }) -> UpdateShardCountOutput
```

Constructs UpdateShardCountOutput's fields from required parameters


