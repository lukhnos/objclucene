//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/IndexWriterConfig.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexIndexWriterConfig")
#ifdef RESTRICT_OrgApacheLuceneIndexIndexWriterConfig
#define INCLUDE_ALL_OrgApacheLuceneIndexIndexWriterConfig 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexIndexWriterConfig 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexIndexWriterConfig

#if !defined (OrgApacheLuceneIndexIndexWriterConfig_) && (INCLUDE_ALL_OrgApacheLuceneIndexIndexWriterConfig || defined(INCLUDE_OrgApacheLuceneIndexIndexWriterConfig))
#define OrgApacheLuceneIndexIndexWriterConfig_

#define RESTRICT_OrgApacheLuceneIndexLiveIndexWriterConfig 1
#define INCLUDE_OrgApacheLuceneIndexLiveIndexWriterConfig 1
#include "org/apache/lucene/index/LiveIndexWriterConfig.h"

@class IOSObjectArray;
@class JavaIoPrintStream;
@class OrgApacheLuceneAnalysisAnalyzer;
@class OrgApacheLuceneCodecsCodec;
@class OrgApacheLuceneIndexDocumentsWriterPerThreadPool;
@class OrgApacheLuceneIndexDocumentsWriterPerThread_IndexingChain;
@class OrgApacheLuceneIndexFlushPolicy;
@class OrgApacheLuceneIndexIndexCommit;
@class OrgApacheLuceneIndexIndexDeletionPolicy;
@class OrgApacheLuceneIndexIndexWriter;
@class OrgApacheLuceneIndexIndexWriterConfig_OpenMode;
@class OrgApacheLuceneIndexIndexWriter_IndexReaderWarmer;
@class OrgApacheLuceneIndexMergePolicy;
@class OrgApacheLuceneIndexMergeScheduler;
@class OrgApacheLuceneSearchSimilaritiesSimilarity;
@class OrgApacheLuceneUtilInfoStream;

/*!
 @brief Holds all the configuration that is used to create an <code>IndexWriter</code>.
 Once <code>IndexWriter</code> has been created with this object, changes to this
 object will not affect the <code>IndexWriter</code> instance. For that, use
 <code>LiveIndexWriterConfig</code> that is returned from <code>IndexWriter.getConfig()</code>.
 <p>
 All setter methods return <code>IndexWriterConfig</code> to allow chaining
 settings conveniently, for example:
 <pre class="prettyprint">
 IndexWriterConfig conf = new IndexWriterConfig(analyzer);
 conf.setter1().setter2();
 
@endcode
 - seealso: IndexWriter#getConfig()
 @since 3.1
 */
@interface OrgApacheLuceneIndexIndexWriterConfig : OrgApacheLuceneIndexLiveIndexWriterConfig

+ (jint)DISABLE_AUTO_FLUSH;

+ (jint)DEFAULT_MAX_BUFFERED_DELETE_TERMS;

+ (jint)DEFAULT_MAX_BUFFERED_DOCS;

+ (jdouble)DEFAULT_RAM_BUFFER_SIZE_MB;

+ (jlong)WRITE_LOCK_TIMEOUT;

+ (jboolean)DEFAULT_READER_POOLING;

+ (jint)DEFAULT_RAM_PER_THREAD_HARD_LIMIT_MB;

+ (jboolean)DEFAULT_USE_COMPOUND_FILE_SYSTEM;

+ (jboolean)DEFAULT_COMMIT_ON_CLOSE;

#pragma mark Public

/*!
 @brief Creates a new config that with the default <code>Analyzer</code>
 .
 By default, <code>TieredMergePolicy</code> is used
 for merging;
 Note that <code>TieredMergePolicy</code> is free to select
 non-contiguous merges, which means docIDs may not
 remain monotonic over time.  If this is a problem you
 should switch to <code>LogByteSizeMergePolicy</code> or
 <code>LogDocMergePolicy</code>.
 */
- (instancetype)initWithOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer;

- (OrgApacheLuceneAnalysisAnalyzer *)getAnalyzer;

- (OrgApacheLuceneCodecsCodec *)getCodec;

- (OrgApacheLuceneIndexIndexCommit *)getIndexCommit;

- (OrgApacheLuceneIndexIndexDeletionPolicy *)getIndexDeletionPolicy;

- (OrgApacheLuceneUtilInfoStream *)getInfoStream;

- (jint)getMaxBufferedDeleteTerms;

- (jint)getMaxBufferedDocs;

- (OrgApacheLuceneIndexIndexWriter_IndexReaderWarmer *)getMergedSegmentWarmer;

- (OrgApacheLuceneIndexMergePolicy *)getMergePolicy;

- (OrgApacheLuceneIndexMergeScheduler *)getMergeScheduler;

- (OrgApacheLuceneIndexIndexWriterConfig_OpenMode *)getOpenMode;

- (jdouble)getRAMBufferSizeMB;

- (jint)getRAMPerThreadHardLimitMB;

- (jboolean)getReaderPooling;

- (OrgApacheLuceneSearchSimilaritiesSimilarity *)getSimilarity;

- (jlong)getWriteLockTimeout;

/*!
 @brief Set the <code>Codec</code>.
 <p>
 Only takes effect when IndexWriter is first created.
 */
- (OrgApacheLuceneIndexIndexWriterConfig *)setCodecWithOrgApacheLuceneCodecsCodec:(OrgApacheLuceneCodecsCodec *)codec;

/*!
 @brief Sets if calls <code>IndexWriter.close()</code> should first commit
 before closing.
 Use <code>true</code> to match behavior of Lucene 4.x.
 */
- (OrgApacheLuceneIndexIndexWriterConfig *)setCommitOnCloseWithBoolean:(jboolean)commitOnClose;

/*!
 @brief Expert: allows to open a certain commit point.
 The default is null which
 opens the latest commit point.  This can also be used to open <code>IndexWriter</code>
 from a near-real-time reader, if you pass the reader's
 <code>DirectoryReader.getIndexCommit</code>.
 <p>Only takes effect when IndexWriter is first created. 
 */
- (OrgApacheLuceneIndexIndexWriterConfig *)setIndexCommitWithOrgApacheLuceneIndexIndexCommit:(OrgApacheLuceneIndexIndexCommit *)commit;

/*!
 @brief Expert: allows an optional <code>IndexDeletionPolicy</code> implementation to be
 specified.
 You can use this to control when prior commits are deleted from
 the index. The default policy is <code>KeepOnlyLastCommitDeletionPolicy</code>
 which removes all prior commits as soon as a new commit is done (this
 matches behavior before 2.2). Creating your own policy can allow you to
 explicitly keep previous "point in time" commits alive in the index for
 some time, to allow readers to refresh to the new commit without having the
 old commit deleted out from under them. This is necessary on filesystems
 like NFS that do not support "delete on last close" semantics, which
 Lucene's "point in time" search normally relies on.
 <p>
 <b>NOTE:</b> the deletion policy cannot be null.
 <p>Only takes effect when IndexWriter is first created. 
 */
- (OrgApacheLuceneIndexIndexWriterConfig *)setIndexDeletionPolicyWithOrgApacheLuceneIndexIndexDeletionPolicy:(OrgApacheLuceneIndexIndexDeletionPolicy *)delPolicy;

/*!
 @brief Information about merges, deletes and a
 message when maxFieldLength is reached will be printed
 to this.
 Must not be null, but <code>InfoStream.NO_OUTPUT</code> 
 may be used to supress output.
 */
- (OrgApacheLuceneIndexIndexWriterConfig *)setInfoStreamWithOrgApacheLuceneUtilInfoStream:(OrgApacheLuceneUtilInfoStream *)infoStream;

/*!
 @brief Convenience method that uses <code>PrintStreamInfoStream</code>.
 Must not be null.
 */
- (OrgApacheLuceneIndexIndexWriterConfig *)setInfoStreamWithJavaIoPrintStream:(JavaIoPrintStream *)printStream;

- (OrgApacheLuceneIndexIndexWriterConfig *)setMaxBufferedDeleteTermsWithInt:(jint)maxBufferedDeleteTerms;

- (OrgApacheLuceneIndexIndexWriterConfig *)setMaxBufferedDocsWithInt:(jint)maxBufferedDocs;

- (OrgApacheLuceneIndexIndexWriterConfig *)setMergedSegmentWarmerWithOrgApacheLuceneIndexIndexWriter_IndexReaderWarmer:(OrgApacheLuceneIndexIndexWriter_IndexReaderWarmer *)mergeSegmentWarmer;

- (OrgApacheLuceneIndexIndexWriterConfig *)setMergePolicyWithOrgApacheLuceneIndexMergePolicy:(OrgApacheLuceneIndexMergePolicy *)mergePolicy;

/*!
 @brief Expert: sets the merge scheduler used by this writer.
 The default is
 <code>ConcurrentMergeScheduler</code>.
 <p>
 <b>NOTE:</b> the merge scheduler cannot be null.
 <p>Only takes effect when IndexWriter is first created. 
 */
- (OrgApacheLuceneIndexIndexWriterConfig *)setMergeSchedulerWithOrgApacheLuceneIndexMergeScheduler:(OrgApacheLuceneIndexMergeScheduler *)mergeScheduler;

/*!
 @brief Specifies <code>OpenMode</code> of the index.
 <p>Only takes effect when IndexWriter is first created. 
 */
- (OrgApacheLuceneIndexIndexWriterConfig *)setOpenModeWithOrgApacheLuceneIndexIndexWriterConfig_OpenMode:(OrgApacheLuceneIndexIndexWriterConfig_OpenMode *)openMode;

- (OrgApacheLuceneIndexIndexWriterConfig *)setRAMBufferSizeMBWithDouble:(jdouble)ramBufferSizeMB;

/*!
 @brief Expert: Sets the maximum memory consumption per thread triggering a forced
 flush if exceeded.
 A <code>DocumentsWriterPerThread</code> is forcefully flushed
 once it exceeds this limit even if the <code>getRAMBufferSizeMB()</code> has
 not been exceeded. This is a safety limit to prevent a
 <code>DocumentsWriterPerThread</code> from address space exhaustion due to its
 internal 32 bit signed integer based memory addressing.
 The given value must be less that 2GB (2048MB)
 - seealso: #DEFAULT_RAM_PER_THREAD_HARD_LIMIT_MB
 */
- (OrgApacheLuceneIndexIndexWriterConfig *)setRAMPerThreadHardLimitMBWithInt:(jint)perThreadHardLimitMB;

/*!
 @brief By default, IndexWriter does not pool the
 SegmentReaders it must open for deletions and
 merging, unless a near-real-time reader has been
 obtained by calling <code>DirectoryReader.open(IndexWriter,boolean)</code>.
 This method lets you enable pooling without getting a
 near-real-time reader.  NOTE: if you set this to
 false, IndexWriter will still pool readers once
 <code>DirectoryReader.open(IndexWriter,boolean)</code> is called.
 <p>Only takes effect when IndexWriter is first created. 
 */
- (OrgApacheLuceneIndexIndexWriterConfig *)setReaderPoolingWithBoolean:(jboolean)readerPooling;

/*!
 @brief Expert: set the <code>Similarity</code> implementation used by this IndexWriter.
 <p>
 <b>NOTE:</b> the similarity cannot be null.
 <p>Only takes effect when IndexWriter is first created. 
 */
- (OrgApacheLuceneIndexIndexWriterConfig *)setSimilarityWithOrgApacheLuceneSearchSimilaritiesSimilarity:(OrgApacheLuceneSearchSimilaritiesSimilarity *)similarity;

- (OrgApacheLuceneIndexIndexWriterConfig *)setUseCompoundFileWithBoolean:(jboolean)useCompoundFile;

/*!
 @brief Sets the maximum time to wait for a write lock (in milliseconds) for this
 instance.
 Note that the value can be zero, for no sleep/retry behavior.
 <p>Only takes effect when IndexWriter is first created.
 */
- (OrgApacheLuceneIndexIndexWriterConfig *)setWriteLockTimeoutWithLong:(jlong)writeLockTimeout;

- (NSString *)description;

#pragma mark Package-Private

- (OrgApacheLuceneIndexFlushPolicy *)getFlushPolicy;

- (OrgApacheLuceneIndexDocumentsWriterPerThreadPool *)getIndexerThreadPool;

- (OrgApacheLuceneIndexDocumentsWriterPerThread_IndexingChain *)getIndexingChain;

/*!
 @brief Expert: Controls when segments are flushed to disk during indexing.
 The <code>FlushPolicy</code> initialized during <code>IndexWriter</code> instantiation and once initialized
 the given instance is bound to this <code>IndexWriter</code> and should not be used with another writer.
 - seealso: #setMaxBufferedDeleteTerms(int)
 - seealso: #setMaxBufferedDocs(int)
 - seealso: #setRAMBufferSizeMB(double)
 */
- (OrgApacheLuceneIndexIndexWriterConfig *)setFlushPolicyWithOrgApacheLuceneIndexFlushPolicy:(OrgApacheLuceneIndexFlushPolicy *)flushPolicy;

/*!
 @brief Expert: Sets the <code>DocumentsWriterPerThreadPool</code> instance used by the
 IndexWriter to assign thread-states to incoming indexing threads.
 </p>
 <p>
 NOTE: The given <code>DocumentsWriterPerThreadPool</code> instance must not be used with
 other <code>IndexWriter</code> instances once it has been initialized / associated with an
 <code>IndexWriter</code>.
 </p>
 <p>
 NOTE: This only takes effect when IndexWriter is first created.</p>
 */
- (OrgApacheLuceneIndexIndexWriterConfig *)setIndexerThreadPoolWithOrgApacheLuceneIndexDocumentsWriterPerThreadPool:(OrgApacheLuceneIndexDocumentsWriterPerThreadPool *)threadPool;

/*!
 @brief Expert: sets the <code>DocConsumer</code> chain to be used to process documents.
 <p>Only takes effect when IndexWriter is first created. 
 */
- (OrgApacheLuceneIndexIndexWriterConfig *)setIndexingChainWithOrgApacheLuceneIndexDocumentsWriterPerThread_IndexingChain:(OrgApacheLuceneIndexDocumentsWriterPerThread_IndexingChain *)indexingChain;

/*!
 @brief Sets the <code>IndexWriter</code> this config is attached to.
 @throws AlreadySetException
 if this config is already attached to a writer.
 */
- (OrgApacheLuceneIndexIndexWriterConfig *)setIndexWriterWithOrgApacheLuceneIndexIndexWriter:(OrgApacheLuceneIndexIndexWriter *)writer;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexIndexWriterConfig)

/*!
 @brief Denotes a flush trigger is disabled.
 */
inline jint OrgApacheLuceneIndexIndexWriterConfig_get_DISABLE_AUTO_FLUSH();
#define OrgApacheLuceneIndexIndexWriterConfig_DISABLE_AUTO_FLUSH -1
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneIndexIndexWriterConfig, DISABLE_AUTO_FLUSH, jint)

/*!
 @brief Disabled by default (because IndexWriter flushes by RAM usage by default).
 */
inline jint OrgApacheLuceneIndexIndexWriterConfig_get_DEFAULT_MAX_BUFFERED_DELETE_TERMS();
#define OrgApacheLuceneIndexIndexWriterConfig_DEFAULT_MAX_BUFFERED_DELETE_TERMS -1
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneIndexIndexWriterConfig, DEFAULT_MAX_BUFFERED_DELETE_TERMS, jint)

/*!
 @brief Disabled by default (because IndexWriter flushes by RAM usage by default).
 */
inline jint OrgApacheLuceneIndexIndexWriterConfig_get_DEFAULT_MAX_BUFFERED_DOCS();
#define OrgApacheLuceneIndexIndexWriterConfig_DEFAULT_MAX_BUFFERED_DOCS -1
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneIndexIndexWriterConfig, DEFAULT_MAX_BUFFERED_DOCS, jint)

/*!
 @brief Default value is 16 MB (which means flush when buffered docs consume
 approximately 16 MB RAM).
 */
inline jdouble OrgApacheLuceneIndexIndexWriterConfig_get_DEFAULT_RAM_BUFFER_SIZE_MB();
#define OrgApacheLuceneIndexIndexWriterConfig_DEFAULT_RAM_BUFFER_SIZE_MB 16.0
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneIndexIndexWriterConfig, DEFAULT_RAM_BUFFER_SIZE_MB, jdouble)

/*!
 @brief Default value for the write lock timeout (0 ms: no sleeping).
 */
inline jlong OrgApacheLuceneIndexIndexWriterConfig_get_WRITE_LOCK_TIMEOUT();
#define OrgApacheLuceneIndexIndexWriterConfig_WRITE_LOCK_TIMEOUT 0LL
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneIndexIndexWriterConfig, WRITE_LOCK_TIMEOUT, jlong)

/*!
 @brief Default setting for <code>setReaderPooling</code>.
 */
inline jboolean OrgApacheLuceneIndexIndexWriterConfig_get_DEFAULT_READER_POOLING();
#define OrgApacheLuceneIndexIndexWriterConfig_DEFAULT_READER_POOLING false
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneIndexIndexWriterConfig, DEFAULT_READER_POOLING, jboolean)

/*!
 @brief Default value is 1945.
 Change using <code>setRAMPerThreadHardLimitMB(int)</code> 
 */
inline jint OrgApacheLuceneIndexIndexWriterConfig_get_DEFAULT_RAM_PER_THREAD_HARD_LIMIT_MB();
#define OrgApacheLuceneIndexIndexWriterConfig_DEFAULT_RAM_PER_THREAD_HARD_LIMIT_MB 1945
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneIndexIndexWriterConfig, DEFAULT_RAM_PER_THREAD_HARD_LIMIT_MB, jint)

/*!
 @brief Default value for compound file system for newly written segments
 (set to <code>true</code>).
 For batch indexing with very large 
 ram buffers use <code>false</code> 
 */
inline jboolean OrgApacheLuceneIndexIndexWriterConfig_get_DEFAULT_USE_COMPOUND_FILE_SYSTEM();
#define OrgApacheLuceneIndexIndexWriterConfig_DEFAULT_USE_COMPOUND_FILE_SYSTEM true
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneIndexIndexWriterConfig, DEFAULT_USE_COMPOUND_FILE_SYSTEM, jboolean)

/*!
 @brief Default value for whether calls to <code>IndexWriter.close()</code> include a commit.
 */
inline jboolean OrgApacheLuceneIndexIndexWriterConfig_get_DEFAULT_COMMIT_ON_CLOSE();
#define OrgApacheLuceneIndexIndexWriterConfig_DEFAULT_COMMIT_ON_CLOSE true
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneIndexIndexWriterConfig, DEFAULT_COMMIT_ON_CLOSE, jboolean)

FOUNDATION_EXPORT void OrgApacheLuceneIndexIndexWriterConfig_initWithOrgApacheLuceneAnalysisAnalyzer_(OrgApacheLuceneIndexIndexWriterConfig *self, OrgApacheLuceneAnalysisAnalyzer *analyzer);

FOUNDATION_EXPORT OrgApacheLuceneIndexIndexWriterConfig *new_OrgApacheLuceneIndexIndexWriterConfig_initWithOrgApacheLuceneAnalysisAnalyzer_(OrgApacheLuceneAnalysisAnalyzer *analyzer) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexIndexWriterConfig *create_OrgApacheLuceneIndexIndexWriterConfig_initWithOrgApacheLuceneAnalysisAnalyzer_(OrgApacheLuceneAnalysisAnalyzer *analyzer);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexIndexWriterConfig)

#endif

#if !defined (OrgApacheLuceneIndexIndexWriterConfig_OpenMode_) && (INCLUDE_ALL_OrgApacheLuceneIndexIndexWriterConfig || defined(INCLUDE_OrgApacheLuceneIndexIndexWriterConfig_OpenMode))
#define OrgApacheLuceneIndexIndexWriterConfig_OpenMode_

#define RESTRICT_JavaLangEnum 1
#define INCLUDE_JavaLangEnum 1
#include "java/lang/Enum.h"

typedef NS_ENUM(NSUInteger, OrgApacheLuceneIndexIndexWriterConfig_OpenMode_Enum) {
  OrgApacheLuceneIndexIndexWriterConfig_OpenMode_Enum_CREATE = 0,
  OrgApacheLuceneIndexIndexWriterConfig_OpenMode_Enum_APPEND = 1,
  OrgApacheLuceneIndexIndexWriterConfig_OpenMode_Enum_CREATE_OR_APPEND = 2,
};

/*!
 @brief Specifies the open mode for <code>IndexWriter</code>.
 */
@interface OrgApacheLuceneIndexIndexWriterConfig_OpenMode : JavaLangEnum < NSCopying >

+ (OrgApacheLuceneIndexIndexWriterConfig_OpenMode *)CREATE;

+ (OrgApacheLuceneIndexIndexWriterConfig_OpenMode *)APPEND;

+ (OrgApacheLuceneIndexIndexWriterConfig_OpenMode *)CREATE_OR_APPEND;

#pragma mark Package-Private

+ (IOSObjectArray *)values;

+ (OrgApacheLuceneIndexIndexWriterConfig_OpenMode *)valueOfWithNSString:(NSString *)name;

- (id)copyWithZone:(NSZone *)zone;
- (OrgApacheLuceneIndexIndexWriterConfig_OpenMode_Enum)toNSEnum;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneIndexIndexWriterConfig_OpenMode)

/*! INTERNAL ONLY - Use enum accessors declared below. */
FOUNDATION_EXPORT OrgApacheLuceneIndexIndexWriterConfig_OpenMode *OrgApacheLuceneIndexIndexWriterConfig_OpenMode_values_[];

/*!
 @brief Creates a new index or overwrites an existing one.
 */
inline OrgApacheLuceneIndexIndexWriterConfig_OpenMode *OrgApacheLuceneIndexIndexWriterConfig_OpenMode_get_CREATE();
J2OBJC_ENUM_CONSTANT(OrgApacheLuceneIndexIndexWriterConfig_OpenMode, CREATE)

/*!
 @brief Opens an existing index.
 */
inline OrgApacheLuceneIndexIndexWriterConfig_OpenMode *OrgApacheLuceneIndexIndexWriterConfig_OpenMode_get_APPEND();
J2OBJC_ENUM_CONSTANT(OrgApacheLuceneIndexIndexWriterConfig_OpenMode, APPEND)

/*!
 @brief Creates a new index if one does not exist,
 otherwise it opens the index and documents will be appended.
 */
inline OrgApacheLuceneIndexIndexWriterConfig_OpenMode *OrgApacheLuceneIndexIndexWriterConfig_OpenMode_get_CREATE_OR_APPEND();
J2OBJC_ENUM_CONSTANT(OrgApacheLuceneIndexIndexWriterConfig_OpenMode, CREATE_OR_APPEND)

FOUNDATION_EXPORT IOSObjectArray *OrgApacheLuceneIndexIndexWriterConfig_OpenMode_values();

FOUNDATION_EXPORT OrgApacheLuceneIndexIndexWriterConfig_OpenMode *OrgApacheLuceneIndexIndexWriterConfig_OpenMode_valueOfWithNSString_(NSString *name);

FOUNDATION_EXPORT OrgApacheLuceneIndexIndexWriterConfig_OpenMode *OrgApacheLuceneIndexIndexWriterConfig_OpenMode_fromOrdinal(NSUInteger ordinal);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexIndexWriterConfig_OpenMode)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexIndexWriterConfig")
