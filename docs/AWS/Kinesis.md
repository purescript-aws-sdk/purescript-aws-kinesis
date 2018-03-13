## Module AWS.Kinesis

<fullname>Amazon Kinesis Data Streams Service API Reference</fullname> <p>Amazon Kinesis Data Streams is a managed service that scales elastically for real-time processing of streaming big data.</p>

#### `addTagsToStream`

``` purescript
addTagsToStream :: forall eff. AddTagsToStreamInput -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Adds or updates tags for the specified Kinesis data stream. Each stream can have up to 10 tags.</p> <p>If tags have already been assigned to the stream, <code>AddTagsToStream</code> overwrites any existing tags that correspond to the specified tag keys.</p> <p> <a>AddTagsToStream</a> has a limit of five transactions per second per account.</p>

#### `createStream`

``` purescript
createStream :: forall eff. CreateStreamInput -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Creates a Kinesis data stream. A stream captures and transports data records that are continuously emitted from different data sources or <i>producers</i>. Scale-out within a stream is explicitly supported by means of shards, which are uniquely identified groups of data records in a stream.</p> <p>You specify and control the number of shards that a stream is composed of. Each shard can support reads up to five transactions per second, up to a maximum data read total of 2 MB per second. Each shard can support writes up to 1,000 records per second, up to a maximum data write total of 1 MB per second. If the amount of data input increases or decreases, you can add or remove shards.</p> <p>The stream name identifies the stream. The name is scoped to the AWS account used by the application. It is also scoped by AWS Region. That is, two streams in two different accounts can have the same name, and two streams in the same account, but in two different Regions, can have the same name.</p> <p> <code>CreateStream</code> is an asynchronous operation. Upon receiving a <code>CreateStream</code> request, Kinesis Data Streams immediately returns and sets the stream status to <code>CREATING</code>. After the stream is created, Kinesis Data Streams sets the stream status to <code>ACTIVE</code>. You should perform read and write operations only on an <code>ACTIVE</code> stream. </p> <p>You receive a <code>LimitExceededException</code> when making a <code>CreateStream</code> request when you try to do one of the following:</p> <ul> <li> <p>Have more than five streams in the <code>CREATING</code> state at any point in time.</p> </li> <li> <p>Create more shards than are authorized for your account.</p> </li> </ul> <p>For the default shard limit for an AWS account, see <a href="http://docs.aws.amazon.com/kinesis/latest/dev/service-sizes-and-limits.html">Amazon Kinesis Data Streams Limits</a> in the <i>Amazon Kinesis Data Streams Developer Guide</i>. To increase this limit, <a href="http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html">contact AWS Support</a>.</p> <p>You can use <code>DescribeStream</code> to check the stream status, which is returned in <code>StreamStatus</code>.</p> <p> <a>CreateStream</a> has a limit of five transactions per second per account.</p>

#### `decreaseStreamRetentionPeriod`

``` purescript
decreaseStreamRetentionPeriod :: forall eff. DecreaseStreamRetentionPeriodInput -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Decreases the Kinesis data stream's retention period, which is the length of time data records are accessible after they are added to the stream. The minimum value of a stream's retention period is 24 hours.</p> <p>This operation may result in lost data. For example, if the stream's retention period is 48 hours and is decreased to 24 hours, any data already in the stream that is older than 24 hours is inaccessible.</p>

#### `deleteStream`

``` purescript
deleteStream :: forall eff. DeleteStreamInput -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Deletes a Kinesis data stream and all its shards and data. You must shut down any applications that are operating on the stream before you delete the stream. If an application attempts to operate on a deleted stream, it receives the exception <code>ResourceNotFoundException</code>.</p> <p>If the stream is in the <code>ACTIVE</code> state, you can delete it. After a <code>DeleteStream</code> request, the specified stream is in the <code>DELETING</code> state until Kinesis Data Streams completes the deletion.</p> <p> <b>Note:</b> Kinesis Data Streams might continue to accept data read and write operations, such as <a>PutRecord</a>, <a>PutRecords</a>, and <a>GetRecords</a>, on a stream in the <code>DELETING</code> state until the stream deletion is complete.</p> <p>When you delete a stream, any shards in that stream are also deleted, and any tags are dissociated from the stream.</p> <p>You can use the <a>DescribeStream</a> operation to check the state of the stream, which is returned in <code>StreamStatus</code>.</p> <p> <a>DeleteStream</a> has a limit of five transactions per second per account.</p>

#### `describeLimits`

``` purescript
describeLimits :: forall eff. DescribeLimitsInput -> Aff (exception :: EXCEPTION | eff) DescribeLimitsOutput
```

<p>Describes the shard limits and usage for the account.</p> <p>If you update your account limits, the old limits might be returned for a few minutes.</p> <p>This operation has a limit of one transaction per second per account.</p>

#### `describeStream`

``` purescript
describeStream :: forall eff. DescribeStreamInput -> Aff (exception :: EXCEPTION | eff) DescribeStreamOutput
```

<p>Describes the specified Kinesis data stream.</p> <p>The information returned includes the stream name, Amazon Resource Name (ARN), creation time, enhanced metric configuration, and shard map. The shard map is an array of shard objects. For each shard object, there is the hash key and sequence number ranges that the shard spans, and the IDs of any earlier shards that played in a role in creating the shard. Every record ingested in the stream is identified by a sequence number, which is assigned when the record is put into the stream.</p> <p>You can limit the number of shards returned by each call. For more information, see <a href="http://docs.aws.amazon.com/kinesis/latest/dev/kinesis-using-sdk-java-retrieve-shards.html">Retrieving Shards from a Stream</a> in the <i>Amazon Kinesis Data Streams Developer Guide</i>.</p> <p>There are no guarantees about the chronological order shards returned. To process shards in chronological order, use the ID of the parent shard to track the lineage to the oldest shard.</p> <p>This operation has a limit of 10 transactions per second per account.</p>

#### `describeStreamSummary`

``` purescript
describeStreamSummary :: forall eff. DescribeStreamSummaryInput -> Aff (exception :: EXCEPTION | eff) DescribeStreamSummaryOutput
```

<p>Provides a summarized description of the specified Kinesis data stream without the shard list.</p> <p>The information returned includes the stream name, Amazon Resource Name (ARN), status, record retention period, approximate creation time, monitoring, encryption details, and open shard count. </p>

#### `disableEnhancedMonitoring`

``` purescript
disableEnhancedMonitoring :: forall eff. DisableEnhancedMonitoringInput -> Aff (exception :: EXCEPTION | eff) EnhancedMonitoringOutput
```

<p>Disables enhanced monitoring.</p>

#### `enableEnhancedMonitoring`

``` purescript
enableEnhancedMonitoring :: forall eff. EnableEnhancedMonitoringInput -> Aff (exception :: EXCEPTION | eff) EnhancedMonitoringOutput
```

<p>Enables enhanced Kinesis data stream monitoring for shard-level metrics.</p>

#### `getRecords`

``` purescript
getRecords :: forall eff. GetRecordsInput -> Aff (exception :: EXCEPTION | eff) GetRecordsOutput
```

<p>Gets data records from a Kinesis data stream's shard.</p> <p>Specify a shard iterator using the <code>ShardIterator</code> parameter. The shard iterator specifies the position in the shard from which you want to start reading data records sequentially. If there are no records available in the portion of the shard that the iterator points to, <a>GetRecords</a> returns an empty list. It might take multiple calls to get to a portion of the shard that contains records.</p> <p>You can scale by provisioning multiple shards per stream while considering service limits (for more information, see <a href="http://docs.aws.amazon.com/kinesis/latest/dev/service-sizes-and-limits.html">Amazon Kinesis Data Streams Limits</a> in the <i>Amazon Kinesis Data Streams Developer Guide</i>). Your application should have one thread per shard, each reading continuously from its stream. To read from a stream continually, call <a>GetRecords</a> in a loop. Use <a>GetShardIterator</a> to get the shard iterator to specify in the first <a>GetRecords</a> call. <a>GetRecords</a> returns a new shard iterator in <code>NextShardIterator</code>. Specify the shard iterator returned in <code>NextShardIterator</code> in subsequent calls to <a>GetRecords</a>. If the shard has been closed, the shard iterator can't return more data and <a>GetRecords</a> returns <code>null</code> in <code>NextShardIterator</code>. You can terminate the loop when the shard is closed, or when the shard iterator reaches the record with the sequence number or other attribute that marks it as the last record to process.</p> <p>Each data record can be up to 1 MB in size, and each shard can read up to 2 MB per second. You can ensure that your calls don't exceed the maximum supported size or throughput by using the <code>Limit</code> parameter to specify the maximum number of records that <a>GetRecords</a> can return. Consider your average record size when determining this limit.</p> <p>The size of the data returned by <a>GetRecords</a> varies depending on the utilization of the shard. The maximum size of data that <a>GetRecords</a> can return is 10 MB. If a call returns this amount of data, subsequent calls made within the next five seconds throw <code>ProvisionedThroughputExceededException</code>. If there is insufficient provisioned throughput on the stream, subsequent calls made within the next one second throw <code>ProvisionedThroughputExceededException</code>. <a>GetRecords</a> won't return any data when it throws an exception. For this reason, we recommend that you wait one second between calls to <a>GetRecords</a>; however, it's possible that the application will get exceptions for longer than 1 second.</p> <p>To detect whether the application is falling behind in processing, you can use the <code>MillisBehindLatest</code> response attribute. You can also monitor the stream using CloudWatch metrics and other mechanisms (see <a href="http://docs.aws.amazon.com/kinesis/latest/dev/monitoring.html">Monitoring</a> in the <i>Amazon Kinesis Data Streams Developer Guide</i>).</p> <p>Each Amazon Kinesis record includes a value, <code>ApproximateArrivalTimestamp</code>, that is set when a stream successfully receives and stores a record. This is commonly referred to as a server-side time stamp, whereas a client-side time stamp is set when a data producer creates or sends the record to a stream (a data producer is any data source putting data records into a stream, for example with <a>PutRecords</a>). The time stamp has millisecond precision. There are no guarantees about the time stamp accuracy, or that the time stamp is always increasing. For example, records in a shard or across a stream might have time stamps that are out of order.</p>

#### `getShardIterator`

``` purescript
getShardIterator :: forall eff. GetShardIteratorInput -> Aff (exception :: EXCEPTION | eff) GetShardIteratorOutput
```

<p>Gets an Amazon Kinesis shard iterator. A shard iterator expires five minutes after it is returned to the requester.</p> <p>A shard iterator specifies the shard position from which to start reading data records sequentially. The position is specified using the sequence number of a data record in a shard. A sequence number is the identifier associated with every record ingested in the stream, and is assigned when a record is put into the stream. Each stream has one or more shards.</p> <p>You must specify the shard iterator type. For example, you can set the <code>ShardIteratorType</code> parameter to read exactly from the position denoted by a specific sequence number by using the <code>AT_SEQUENCE_NUMBER</code> shard iterator type. Alternatively, the parameter can read right after the sequence number by using the <code>AFTER_SEQUENCE_NUMBER</code> shard iterator type, using sequence numbers returned by earlier calls to <a>PutRecord</a>, <a>PutRecords</a>, <a>GetRecords</a>, or <a>DescribeStream</a>. In the request, you can specify the shard iterator type <code>AT_TIMESTAMP</code> to read records from an arbitrary point in time, <code>TRIM_HORIZON</code> to cause <code>ShardIterator</code> to point to the last untrimmed record in the shard in the system (the oldest data record in the shard), or <code>LATEST</code> so that you always read the most recent data in the shard. </p> <p>When you read repeatedly from a stream, use a <a>GetShardIterator</a> request to get the first shard iterator for use in your first <a>GetRecords</a> request and for subsequent reads use the shard iterator returned by the <a>GetRecords</a> request in <code>NextShardIterator</code>. A new shard iterator is returned by every <a>GetRecords</a> request in <code>NextShardIterator</code>, which you use in the <code>ShardIterator</code> parameter of the next <a>GetRecords</a> request. </p> <p>If a <a>GetShardIterator</a> request is made too often, you receive a <code>ProvisionedThroughputExceededException</code>. For more information about throughput limits, see <a>GetRecords</a>, and <a href="http://docs.aws.amazon.com/kinesis/latest/dev/service-sizes-and-limits.html">Streams Limits</a> in the <i>Amazon Kinesis Data Streams Developer Guide</i>.</p> <p>If the shard is closed, <a>GetShardIterator</a> returns a valid iterator for the last sequence number of the shard. A shard can be closed as a result of using <a>SplitShard</a> or <a>MergeShards</a>.</p> <p> <a>GetShardIterator</a> has a limit of five transactions per second per account per open shard.</p>

#### `increaseStreamRetentionPeriod`

``` purescript
increaseStreamRetentionPeriod :: forall eff. IncreaseStreamRetentionPeriodInput -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Increases the Kinesis data stream's retention period, which is the length of time data records are accessible after they are added to the stream. The maximum value of a stream's retention period is 168 hours (7 days).</p> <p>If you choose a longer stream retention period, this operation increases the time period during which records that have not yet expired are accessible. However, it does not make previous, expired data (older than the stream's previous retention period) accessible after the operation has been called. For example, if a stream's retention period is set to 24 hours and is increased to 168 hours, any data that is older than 24 hours remains inaccessible to consumer applications.</p>

#### `listShards`

``` purescript
listShards :: forall eff. ListShardsInput -> Aff (exception :: EXCEPTION | eff) ListShardsOutput
```

<p>Lists the shards in a stream and provides information about each shard.</p> <important> <p>This API is a new operation that is used by the Amazon Kinesis Client Library (KCL). If you have a fine-grained IAM policy that only allows specific operations, you must update your policy to allow calls to this API. For more information, see <a href="https://docs.aws.amazon.com/streams/latest/dev/controlling-access.html">Controlling Access to Amazon Kinesis Data Streams Resources Using IAM</a>.</p> </important>

#### `listStreams`

``` purescript
listStreams :: forall eff. ListStreamsInput -> Aff (exception :: EXCEPTION | eff) ListStreamsOutput
```

<p>Lists your Kinesis data streams.</p> <p>The number of streams may be too large to return from a single call to <code>ListStreams</code>. You can limit the number of returned streams using the <code>Limit</code> parameter. If you do not specify a value for the <code>Limit</code> parameter, Kinesis Data Streams uses the default limit, which is currently 10.</p> <p>You can detect if there are more streams available to list by using the <code>HasMoreStreams</code> flag from the returned output. If there are more streams available, you can request more streams by using the name of the last stream returned by the <code>ListStreams</code> request in the <code>ExclusiveStartStreamName</code> parameter in a subsequent request to <code>ListStreams</code>. The group of stream names returned by the subsequent request is then added to the list. You can continue this process until all the stream names have been collected in the list. </p> <p> <a>ListStreams</a> has a limit of five transactions per second per account.</p>

#### `listTagsForStream`

``` purescript
listTagsForStream :: forall eff. ListTagsForStreamInput -> Aff (exception :: EXCEPTION | eff) ListTagsForStreamOutput
```

<p>Lists the tags for the specified Kinesis data stream. This operation has a limit of five transactions per second per account.</p>

#### `mergeShards`

``` purescript
mergeShards :: forall eff. MergeShardsInput -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Merges two adjacent shards in a Kinesis data stream and combines them into a single shard to reduce the stream's capacity to ingest and transport data. Two shards are considered adjacent if the union of the hash key ranges for the two shards form a contiguous set with no gaps. For example, if you have two shards, one with a hash key range of 276...381 and the other with a hash key range of 382...454, then you could merge these two shards into a single shard that would have a hash key range of 276...454. After the merge, the single child shard receives data for all hash key values covered by the two parent shards.</p> <p> <code>MergeShards</code> is called when there is a need to reduce the overall capacity of a stream because of excess capacity that is not being used. You must specify the shard to be merged and the adjacent shard for a stream. For more information about merging shards, see <a href="http://docs.aws.amazon.com/kinesis/latest/dev/kinesis-using-sdk-java-resharding-merge.html">Merge Two Shards</a> in the <i>Amazon Kinesis Data Streams Developer Guide</i>.</p> <p>If the stream is in the <code>ACTIVE</code> state, you can call <code>MergeShards</code>. If a stream is in the <code>CREATING</code>, <code>UPDATING</code>, or <code>DELETING</code> state, <code>MergeShards</code> returns a <code>ResourceInUseException</code>. If the specified stream does not exist, <code>MergeShards</code> returns a <code>ResourceNotFoundException</code>. </p> <p>You can use <a>DescribeStream</a> to check the state of the stream, which is returned in <code>StreamStatus</code>.</p> <p> <code>MergeShards</code> is an asynchronous operation. Upon receiving a <code>MergeShards</code> request, Amazon Kinesis Data Streams immediately returns a response and sets the <code>StreamStatus</code> to <code>UPDATING</code>. After the operation is completed, Kinesis Data Streams sets the <code>StreamStatus</code> to <code>ACTIVE</code>. Read and write operations continue to work while the stream is in the <code>UPDATING</code> state. </p> <p>You use <a>DescribeStream</a> to determine the shard IDs that are specified in the <code>MergeShards</code> request. </p> <p>If you try to operate on too many streams in parallel using <a>CreateStream</a>, <a>DeleteStream</a>, <code>MergeShards</code>, or <a>SplitShard</a>, you receive a <code>LimitExceededException</code>. </p> <p> <code>MergeShards</code> has a limit of five transactions per second per account.</p>

#### `putRecord`

``` purescript
putRecord :: forall eff. PutRecordInput -> Aff (exception :: EXCEPTION | eff) PutRecordOutput
```

<p>Writes a single data record into an Amazon Kinesis data stream. Call <code>PutRecord</code> to send data into the stream for real-time ingestion and subsequent processing, one record at a time. Each shard can support writes up to 1,000 records per second, up to a maximum data write total of 1 MB per second.</p> <p>You must specify the name of the stream that captures, stores, and transports the data; a partition key; and the data blob itself.</p> <p>The data blob can be any type of data; for example, a segment from a log file, geographic/location data, website clickstream data, and so on.</p> <p>The partition key is used by Kinesis Data Streams to distribute data across shards. Kinesis Data Streams segregates the data records that belong to a stream into multiple shards, using the partition key associated with each data record to determine the shard to which a given data record belongs.</p> <p>Partition keys are Unicode strings, with a maximum length limit of 256 characters for each key. An MD5 hash function is used to map partition keys to 128-bit integer values and to map associated data records to shards using the hash key ranges of the shards. You can override hashing the partition key to determine the shard by explicitly specifying a hash value using the <code>ExplicitHashKey</code> parameter. For more information, see <a href="http://docs.aws.amazon.com/kinesis/latest/dev/developing-producers-with-sdk.html#kinesis-using-sdk-java-add-data-to-stream">Adding Data to a Stream</a> in the <i>Amazon Kinesis Data Streams Developer Guide</i>.</p> <p> <code>PutRecord</code> returns the shard ID of where the data record was placed and the sequence number that was assigned to the data record.</p> <p>Sequence numbers increase over time and are specific to a shard within a stream, not across all shards within a stream. To guarantee strictly increasing ordering, write serially to a shard and use the <code>SequenceNumberForOrdering</code> parameter. For more information, see <a href="http://docs.aws.amazon.com/kinesis/latest/dev/developing-producers-with-sdk.html#kinesis-using-sdk-java-add-data-to-stream">Adding Data to a Stream</a> in the <i>Amazon Kinesis Data Streams Developer Guide</i>.</p> <p>If a <code>PutRecord</code> request cannot be processed because of insufficient provisioned throughput on the shard involved in the request, <code>PutRecord</code> throws <code>ProvisionedThroughputExceededException</code>. </p> <p>By default, data records are accessible for 24 hours from the time that they are added to a stream. You can use <a>IncreaseStreamRetentionPeriod</a> or <a>DecreaseStreamRetentionPeriod</a> to modify this retention period.</p>

#### `putRecords`

``` purescript
putRecords :: forall eff. PutRecordsInput -> Aff (exception :: EXCEPTION | eff) PutRecordsOutput
```

<p>Writes multiple data records into a Kinesis data stream in a single call (also referred to as a <code>PutRecords</code> request). Use this operation to send data into the stream for data ingestion and processing. </p> <p>Each <code>PutRecords</code> request can support up to 500 records. Each record in the request can be as large as 1 MB, up to a limit of 5 MB for the entire request, including partition keys. Each shard can support writes up to 1,000 records per second, up to a maximum data write total of 1 MB per second.</p> <p>You must specify the name of the stream that captures, stores, and transports the data; and an array of request <code>Records</code>, with each record in the array requiring a partition key and data blob. The record size limit applies to the total size of the partition key and data blob.</p> <p>The data blob can be any type of data; for example, a segment from a log file, geographic/location data, website clickstream data, and so on.</p> <p>The partition key is used by Kinesis Data Streams as input to a hash function that maps the partition key and associated data to a specific shard. An MD5 hash function is used to map partition keys to 128-bit integer values and to map associated data records to shards. As a result of this hashing mechanism, all data records with the same partition key map to the same shard within the stream. For more information, see <a href="http://docs.aws.amazon.com/kinesis/latest/dev/developing-producers-with-sdk.html#kinesis-using-sdk-java-add-data-to-stream">Adding Data to a Stream</a> in the <i>Amazon Kinesis Data Streams Developer Guide</i>.</p> <p>Each record in the <code>Records</code> array may include an optional parameter, <code>ExplicitHashKey</code>, which overrides the partition key to shard mapping. This parameter allows a data producer to determine explicitly the shard where the record is stored. For more information, see <a href="http://docs.aws.amazon.com/kinesis/latest/dev/developing-producers-with-sdk.html#kinesis-using-sdk-java-putrecords">Adding Multiple Records with PutRecords</a> in the <i>Amazon Kinesis Data Streams Developer Guide</i>.</p> <p>The <code>PutRecords</code> response includes an array of response <code>Records</code>. Each record in the response array directly correlates with a record in the request array using natural ordering, from the top to the bottom of the request and response. The response <code>Records</code> array always includes the same number of records as the request array.</p> <p>The response <code>Records</code> array includes both successfully and unsuccessfully processed records. Kinesis Data Streams attempts to process all records in each <code>PutRecords</code> request. A single record failure does not stop the processing of subsequent records.</p> <p>A successfully processed record includes <code>ShardId</code> and <code>SequenceNumber</code> values. The <code>ShardId</code> parameter identifies the shard in the stream where the record is stored. The <code>SequenceNumber</code> parameter is an identifier assigned to the put record, unique to all records in the stream.</p> <p>An unsuccessfully processed record includes <code>ErrorCode</code> and <code>ErrorMessage</code> values. <code>ErrorCode</code> reflects the type of error and can be one of the following values: <code>ProvisionedThroughputExceededException</code> or <code>InternalFailure</code>. <code>ErrorMessage</code> provides more detailed information about the <code>ProvisionedThroughputExceededException</code> exception including the account ID, stream name, and shard ID of the record that was throttled. For more information about partially successful responses, see <a href="http://docs.aws.amazon.com/kinesis/latest/dev/kinesis-using-sdk-java-add-data-to-stream.html#kinesis-using-sdk-java-putrecords">Adding Multiple Records with PutRecords</a> in the <i>Amazon Kinesis Data Streams Developer Guide</i>.</p> <p>By default, data records are accessible for 24 hours from the time that they are added to a stream. You can use <a>IncreaseStreamRetentionPeriod</a> or <a>DecreaseStreamRetentionPeriod</a> to modify this retention period.</p>

#### `removeTagsFromStream`

``` purescript
removeTagsFromStream :: forall eff. RemoveTagsFromStreamInput -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Removes tags from the specified Kinesis data stream. Removed tags are deleted and cannot be recovered after this operation successfully completes.</p> <p>If you specify a tag that does not exist, it is ignored.</p> <p> <a>RemoveTagsFromStream</a> has a limit of five transactions per second per account.</p>

#### `splitShard`

``` purescript
splitShard :: forall eff. SplitShardInput -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Splits a shard into two new shards in the Kinesis data stream, to increase the stream's capacity to ingest and transport data. <code>SplitShard</code> is called when there is a need to increase the overall capacity of a stream because of an expected increase in the volume of data records being ingested. </p> <p>You can also use <code>SplitShard</code> when a shard appears to be approaching its maximum utilization; for example, the producers sending data into the specific shard are suddenly sending more than previously anticipated. You can also call <code>SplitShard</code> to increase stream capacity, so that more Kinesis Data Streams applications can simultaneously read data from the stream for real-time processing. </p> <p>You must specify the shard to be split and the new hash key, which is the position in the shard where the shard gets split in two. In many cases, the new hash key might be the average of the beginning and ending hash key, but it can be any hash key value in the range being mapped into the shard. For more information, see <a href="http://docs.aws.amazon.com/kinesis/latest/dev/kinesis-using-sdk-java-resharding-split.html">Split a Shard</a> in the <i>Amazon Kinesis Data Streams Developer Guide</i>.</p> <p>You can use <a>DescribeStream</a> to determine the shard ID and hash key values for the <code>ShardToSplit</code> and <code>NewStartingHashKey</code> parameters that are specified in the <code>SplitShard</code> request.</p> <p> <code>SplitShard</code> is an asynchronous operation. Upon receiving a <code>SplitShard</code> request, Kinesis Data Streams immediately returns a response and sets the stream status to <code>UPDATING</code>. After the operation is completed, Kinesis Data Streams sets the stream status to <code>ACTIVE</code>. Read and write operations continue to work while the stream is in the <code>UPDATING</code> state. </p> <p>You can use <code>DescribeStream</code> to check the status of the stream, which is returned in <code>StreamStatus</code>. If the stream is in the <code>ACTIVE</code> state, you can call <code>SplitShard</code>. If a stream is in <code>CREATING</code> or <code>UPDATING</code> or <code>DELETING</code> states, <code>DescribeStream</code> returns a <code>ResourceInUseException</code>.</p> <p>If the specified stream does not exist, <code>DescribeStream</code> returns a <code>ResourceNotFoundException</code>. If you try to create more shards than are authorized for your account, you receive a <code>LimitExceededException</code>. </p> <p>For the default shard limit for an AWS account, see <a href="http://docs.aws.amazon.com/kinesis/latest/dev/service-sizes-and-limits.html">Streams Limits</a> in the <i>Amazon Kinesis Data Streams Developer Guide</i>. To increase this limit, <a href="http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html">contact AWS Support</a>.</p> <p>If you try to operate on too many streams simultaneously using <a>CreateStream</a>, <a>DeleteStream</a>, <a>MergeShards</a>, and/or <a>SplitShard</a>, you receive a <code>LimitExceededException</code>. </p> <p> <code>SplitShard</code> has a limit of five transactions per second per account.</p>

#### `startStreamEncryption`

``` purescript
startStreamEncryption :: forall eff. StartStreamEncryptionInput -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Enables or updates server-side encryption using an AWS KMS key for a specified stream. </p> <p>Starting encryption is an asynchronous operation. Upon receiving the request, Kinesis Data Streams returns immediately and sets the status of the stream to <code>UPDATING</code>. After the update is complete, Kinesis Data Streams sets the status of the stream back to <code>ACTIVE</code>. Updating or applying encryption normally takes a few seconds to complete, but it can take minutes. You can continue to read and write data to your stream while its status is <code>UPDATING</code>. Once the status of the stream is <code>ACTIVE</code>, encryption begins for records written to the stream. </p> <p>API Limits: You can successfully apply a new AWS KMS key for server-side encryption 25 times in a rolling 24-hour period.</p> <p>Note: It can take up to five seconds after the stream is in an <code>ACTIVE</code> status before all records written to the stream are encrypted. After you enable encryption, you can verify that encryption is applied by inspecting the API response from <code>PutRecord</code> or <code>PutRecords</code>.</p>

#### `stopStreamEncryption`

``` purescript
stopStreamEncryption :: forall eff. StopStreamEncryptionInput -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Disables server-side encryption for a specified stream. </p> <p>Stopping encryption is an asynchronous operation. Upon receiving the request, Kinesis Data Streams returns immediately and sets the status of the stream to <code>UPDATING</code>. After the update is complete, Kinesis Data Streams sets the status of the stream back to <code>ACTIVE</code>. Stopping encryption normally takes a few seconds to complete, but it can take minutes. You can continue to read and write data to your stream while its status is <code>UPDATING</code>. Once the status of the stream is <code>ACTIVE</code>, records written to the stream are no longer encrypted by Kinesis Data Streams. </p> <p>API Limits: You can successfully disable server-side encryption 25 times in a rolling 24-hour period. </p> <p>Note: It can take up to five seconds after the stream is in an <code>ACTIVE</code> status before all records written to the stream are no longer subject to encryption. After you disabled encryption, you can verify that encryption is not applied by inspecting the API response from <code>PutRecord</code> or <code>PutRecords</code>.</p>

#### `updateShardCount`

``` purescript
updateShardCount :: forall eff. UpdateShardCountInput -> Aff (exception :: EXCEPTION | eff) UpdateShardCountOutput
```

<p>Updates the shard count of the specified stream to the specified number of shards.</p> <p>Updating the shard count is an asynchronous operation. Upon receiving the request, Kinesis Data Streams returns immediately and sets the status of the stream to <code>UPDATING</code>. After the update is complete, Kinesis Data Streams sets the status of the stream back to <code>ACTIVE</code>. Depending on the size of the stream, the scaling action could take a few minutes to complete. You can continue to read and write data to your stream while its status is <code>UPDATING</code>.</p> <p>To update the shard count, Kinesis Data Streams performs splits or merges on individual shards. This can cause short-lived shards to be created, in addition to the final shards. We recommend that you double or halve the shard count, as this results in the fewest number of splits or merges.</p> <p>This operation has the following limits. You cannot do the following:</p> <ul> <li> <p>Scale more than twice per rolling 24-hour period per stream</p> </li> <li> <p>Scale up to more than double your current shard count for a stream</p> </li> <li> <p>Scale down below half your current shard count for a stream</p> </li> <li> <p>Scale up to more than 500 shards in a stream</p> </li> <li> <p>Scale a stream with more than 500 shards down unless the result is less than 500 shards</p> </li> <li> <p>Scale up to more than the shard limit for your account</p> </li> </ul> <p>For the default limits for an AWS account, see <a href="http://docs.aws.amazon.com/kinesis/latest/dev/service-sizes-and-limits.html">Streams Limits</a> in the <i>Amazon Kinesis Data Streams Developer Guide</i>. To request an increase in the call rate limit, the shard limit for this API, or your overall shard limit, use the <a href="https://console.aws.amazon.com/support/v1#/case/create?issueType=service-limit-increase&amp;limitType=service-code-kinesis">limits form</a>.</p>

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


