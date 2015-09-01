//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/IndexWriterConfig.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/lang/Deprecated.h"
#include "java/lang/Enum.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/IllegalStateException.h"
#include "java/lang/StringBuilder.h"
#include "org/apache/lucene/analysis/Analyzer.h"
#include "org/apache/lucene/codecs/Codec.h"
#include "org/apache/lucene/index/DocumentsWriterPerThread.h"
#include "org/apache/lucene/index/DocumentsWriterPerThreadPool.h"
#include "org/apache/lucene/index/FlushPolicy.h"
#include "org/apache/lucene/index/IndexCommit.h"
#include "org/apache/lucene/index/IndexDeletionPolicy.h"
#include "org/apache/lucene/index/IndexWriter.h"
#include "org/apache/lucene/index/IndexWriterConfig.h"
#include "org/apache/lucene/index/LiveIndexWriterConfig.h"
#include "org/apache/lucene/index/MergePolicy.h"
#include "org/apache/lucene/index/MergeScheduler.h"
#include "org/apache/lucene/search/similarities/Similarity.h"
#include "org/apache/lucene/util/InfoStream.h"
#include "org/apache/lucene/util/SetOnce.h"

@interface OrgApacheLuceneIndexIndexWriterConfig () {
 @public
  OrgApacheLuceneUtilSetOnce *writer_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexIndexWriterConfig, writer_, OrgApacheLuceneUtilSetOnce *)

__attribute__((unused)) static void OrgApacheLuceneIndexIndexWriterConfig_OpenModeEnum_initWithNSString_withInt_(OrgApacheLuceneIndexIndexWriterConfig_OpenModeEnum *self, NSString *__name, jint __ordinal);

__attribute__((unused)) static OrgApacheLuceneIndexIndexWriterConfig_OpenModeEnum *new_OrgApacheLuceneIndexIndexWriterConfig_OpenModeEnum_initWithNSString_withInt_(NSString *__name, jint __ordinal) NS_RETURNS_RETAINED;

@implementation OrgApacheLuceneIndexIndexWriterConfig

- (OrgApacheLuceneIndexIndexWriterConfig *)setIndexWriterWithOrgApacheLuceneIndexIndexWriter:(OrgApacheLuceneIndexIndexWriter *)writer {
  if ([((OrgApacheLuceneUtilSetOnce *) nil_chk(self->writer_)) get] != nil) {
    @throw [new_JavaLangIllegalStateException_initWithNSString_(@"do not share IndexWriterConfig instances across IndexWriters") autorelease];
  }
  [self->writer_ setWithId:writer];
  return self;
}

- (instancetype)initWithOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer {
  OrgApacheLuceneIndexIndexWriterConfig_initWithOrgApacheLuceneAnalysisAnalyzer_(self, analyzer);
  return self;
}

- (OrgApacheLuceneIndexIndexWriterConfig *)setOpenModeWithOrgApacheLuceneIndexIndexWriterConfig_OpenModeEnum:(OrgApacheLuceneIndexIndexWriterConfig_OpenModeEnum *)openMode {
  if (openMode == nil) {
    @throw [new_JavaLangIllegalArgumentException_initWithNSString_(@"openMode must not be null") autorelease];
  }
  JreVolatileStrongAssign(&self->openMode_, openMode);
  return self;
}

- (OrgApacheLuceneIndexIndexWriterConfig_OpenModeEnum *)getOpenMode {
  return JreLoadVolatileId(&openMode_);
}

- (OrgApacheLuceneIndexIndexDeletionPolicy *)getIndexDeletionPolicy {
  return JreLoadVolatileId(&delPolicy_);
}

- (OrgApacheLuceneIndexIndexCommit *)getIndexCommit {
  return JreLoadVolatileId(&commit_);
}

- (OrgApacheLuceneSearchSimilaritiesSimilarity *)getSimilarity {
  return JreLoadVolatileId(&similarity_);
}

- (OrgApacheLuceneIndexMergeScheduler *)getMergeScheduler {
  return JreLoadVolatileId(&mergeScheduler_);
}

- (jlong)getWriteLockTimeout {
  return JreLoadVolatileLong(&writeLockTimeout_);
}

- (OrgApacheLuceneCodecsCodec *)getCodec {
  return JreLoadVolatileId(&codec_);
}

- (OrgApacheLuceneIndexMergePolicy *)getMergePolicy {
  return JreLoadVolatileId(&mergePolicy_);
}

- (OrgApacheLuceneIndexDocumentsWriterPerThreadPool *)getIndexerThreadPool {
  return JreLoadVolatileId(&indexerThreadPool_);
}

- (jboolean)getReaderPooling {
  return JreLoadVolatileBoolean(&readerPooling_);
}

- (OrgApacheLuceneIndexDocumentsWriterPerThread_IndexingChain *)getIndexingChain {
  return JreLoadVolatileId(&indexingChain_);
}

- (jint)getRAMPerThreadHardLimitMB {
  return JreLoadVolatileInt(&perThreadHardLimitMB_);
}

- (OrgApacheLuceneIndexFlushPolicy *)getFlushPolicy {
  return JreLoadVolatileId(&flushPolicy_);
}

- (OrgApacheLuceneUtilInfoStream *)getInfoStream {
  return JreLoadVolatileId(&infoStream_);
}

- (OrgApacheLuceneAnalysisAnalyzer *)getAnalyzer {
  return [super getAnalyzer];
}

- (jint)getMaxBufferedDeleteTerms {
  return [super getMaxBufferedDeleteTerms];
}

- (jint)getMaxBufferedDocs {
  return [super getMaxBufferedDocs];
}

- (OrgApacheLuceneIndexIndexWriter_IndexReaderWarmer *)getMergedSegmentWarmer {
  return [super getMergedSegmentWarmer];
}

- (jdouble)getRAMBufferSizeMB {
  return [super getRAMBufferSizeMB];
}

- (OrgApacheLuceneIndexIndexWriterConfig *)setMergePolicyWithOrgApacheLuceneIndexMergePolicy:(OrgApacheLuceneIndexMergePolicy *)mergePolicy {
  return (OrgApacheLuceneIndexIndexWriterConfig *) check_class_cast([super setMergePolicyWithOrgApacheLuceneIndexMergePolicy:mergePolicy], [OrgApacheLuceneIndexIndexWriterConfig class]);
}

- (NSString *)description {
  JavaLangStringBuilder *sb = [new_JavaLangStringBuilder_initWithNSString_([super description]) autorelease];
  [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([sb appendWithNSString:@"writer="])) appendWithId:[((OrgApacheLuceneUtilSetOnce *) nil_chk(writer_)) get]])) appendWithNSString:@"\n"];
  return [sb description];
}

- (void)dealloc {
  RELEASE_(writer_);
  [super dealloc];
}

+ (IOSObjectArray *)__annotations_WRITE_LOCK_TIMEOUT_ {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[[JavaLangDeprecated alloc] init] autorelease] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "setIndexWriterWithOrgApacheLuceneIndexIndexWriter:", "setIndexWriter", "Lorg.apache.lucene.index.IndexWriterConfig;", 0x0, NULL, NULL },
    { "initWithOrgApacheLuceneAnalysisAnalyzer:", "IndexWriterConfig", NULL, 0x1, NULL, NULL },
    { "setOpenModeWithOrgApacheLuceneIndexIndexWriterConfig_OpenModeEnum:", "setOpenMode", "Lorg.apache.lucene.index.IndexWriterConfig;", 0x1, NULL, NULL },
    { "getOpenMode", NULL, "Lorg.apache.lucene.index.IndexWriterConfig$OpenMode;", 0x1, NULL, NULL },
    { "getIndexDeletionPolicy", NULL, "Lorg.apache.lucene.index.IndexDeletionPolicy;", 0x1, NULL, NULL },
    { "getIndexCommit", NULL, "Lorg.apache.lucene.index.IndexCommit;", 0x1, NULL, NULL },
    { "getSimilarity", NULL, "Lorg.apache.lucene.search.similarities.Similarity;", 0x1, NULL, NULL },
    { "getMergeScheduler", NULL, "Lorg.apache.lucene.index.MergeScheduler;", 0x1, NULL, NULL },
    { "getWriteLockTimeout", NULL, "J", 0x1, NULL, NULL },
    { "getCodec", NULL, "Lorg.apache.lucene.codecs.Codec;", 0x1, NULL, NULL },
    { "getMergePolicy", NULL, "Lorg.apache.lucene.index.MergePolicy;", 0x1, NULL, NULL },
    { "getIndexerThreadPool", NULL, "Lorg.apache.lucene.index.DocumentsWriterPerThreadPool;", 0x0, NULL, NULL },
    { "getReaderPooling", NULL, "Z", 0x1, NULL, NULL },
    { "getIndexingChain", NULL, "Lorg.apache.lucene.index.DocumentsWriterPerThread$IndexingChain;", 0x0, NULL, NULL },
    { "getRAMPerThreadHardLimitMB", NULL, "I", 0x1, NULL, NULL },
    { "getFlushPolicy", NULL, "Lorg.apache.lucene.index.FlushPolicy;", 0x0, NULL, NULL },
    { "getInfoStream", NULL, "Lorg.apache.lucene.util.InfoStream;", 0x1, NULL, NULL },
    { "getAnalyzer", NULL, "Lorg.apache.lucene.analysis.Analyzer;", 0x1, NULL, NULL },
    { "getMaxBufferedDeleteTerms", NULL, "I", 0x1, NULL, NULL },
    { "getMaxBufferedDocs", NULL, "I", 0x1, NULL, NULL },
    { "getMergedSegmentWarmer", NULL, "Lorg.apache.lucene.index.IndexWriter$IndexReaderWarmer;", 0x1, NULL, NULL },
    { "getRAMBufferSizeMB", NULL, "D", 0x1, NULL, NULL },
    { "setMergePolicyWithOrgApacheLuceneIndexMergePolicy:", "setMergePolicy", "Lorg.apache.lucene.index.IndexWriterConfig;", 0x1, NULL, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "DISABLE_AUTO_FLUSH", "DISABLE_AUTO_FLUSH", 0x19, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneIndexIndexWriterConfig_DISABLE_AUTO_FLUSH },
    { "DEFAULT_MAX_BUFFERED_DELETE_TERMS", "DEFAULT_MAX_BUFFERED_DELETE_TERMS", 0x19, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneIndexIndexWriterConfig_DEFAULT_MAX_BUFFERED_DELETE_TERMS },
    { "DEFAULT_MAX_BUFFERED_DOCS", "DEFAULT_MAX_BUFFERED_DOCS", 0x19, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneIndexIndexWriterConfig_DEFAULT_MAX_BUFFERED_DOCS },
    { "DEFAULT_RAM_BUFFER_SIZE_MB", "DEFAULT_RAM_BUFFER_SIZE_MB", 0x19, "D", NULL, NULL, .constantValue.asDouble = OrgApacheLuceneIndexIndexWriterConfig_DEFAULT_RAM_BUFFER_SIZE_MB },
    { "WRITE_LOCK_TIMEOUT", "WRITE_LOCK_TIMEOUT", 0x19, "J", NULL, NULL, .constantValue.asLong = OrgApacheLuceneIndexIndexWriterConfig_WRITE_LOCK_TIMEOUT },
    { "DEFAULT_READER_POOLING", "DEFAULT_READER_POOLING", 0x19, "Z", NULL, NULL, .constantValue.asBOOL = OrgApacheLuceneIndexIndexWriterConfig_DEFAULT_READER_POOLING },
    { "DEFAULT_RAM_PER_THREAD_HARD_LIMIT_MB", "DEFAULT_RAM_PER_THREAD_HARD_LIMIT_MB", 0x19, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneIndexIndexWriterConfig_DEFAULT_RAM_PER_THREAD_HARD_LIMIT_MB },
    { "DEFAULT_USE_COMPOUND_FILE_SYSTEM", "DEFAULT_USE_COMPOUND_FILE_SYSTEM", 0x19, "Z", NULL, NULL, .constantValue.asBOOL = OrgApacheLuceneIndexIndexWriterConfig_DEFAULT_USE_COMPOUND_FILE_SYSTEM },
    { "DEFAULT_COMMIT_ON_CLOSE", "DEFAULT_COMMIT_ON_CLOSE", 0x19, "Z", NULL, NULL, .constantValue.asBOOL = OrgApacheLuceneIndexIndexWriterConfig_DEFAULT_COMMIT_ON_CLOSE },
    { "writer_", NULL, 0x2, "Lorg.apache.lucene.util.SetOnce;", NULL, "Lorg/apache/lucene/util/SetOnce<Lorg/apache/lucene/index/IndexWriter;>;", .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.index.IndexWriterConfig$OpenMode;"};
  static const J2ObjcClassInfo _OrgApacheLuceneIndexIndexWriterConfig = { 2, "IndexWriterConfig", "org.apache.lucene.index", NULL, 0x11, 24, methods, 10, fields, 0, NULL, 1, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneIndexIndexWriterConfig;
}

@end

void OrgApacheLuceneIndexIndexWriterConfig_initWithOrgApacheLuceneAnalysisAnalyzer_(OrgApacheLuceneIndexIndexWriterConfig *self, OrgApacheLuceneAnalysisAnalyzer *analyzer) {
  OrgApacheLuceneIndexLiveIndexWriterConfig_initWithOrgApacheLuceneAnalysisAnalyzer_(self, analyzer);
  JreStrongAssignAndConsume(&self->writer_, new_OrgApacheLuceneUtilSetOnce_init());
}

OrgApacheLuceneIndexIndexWriterConfig *new_OrgApacheLuceneIndexIndexWriterConfig_initWithOrgApacheLuceneAnalysisAnalyzer_(OrgApacheLuceneAnalysisAnalyzer *analyzer) {
  OrgApacheLuceneIndexIndexWriterConfig *self = [OrgApacheLuceneIndexIndexWriterConfig alloc];
  OrgApacheLuceneIndexIndexWriterConfig_initWithOrgApacheLuceneAnalysisAnalyzer_(self, analyzer);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexIndexWriterConfig)

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneIndexIndexWriterConfig_OpenModeEnum)

OrgApacheLuceneIndexIndexWriterConfig_OpenModeEnum *OrgApacheLuceneIndexIndexWriterConfig_OpenModeEnum_values_[3];

@implementation OrgApacheLuceneIndexIndexWriterConfig_OpenModeEnum

- (instancetype)initWithNSString:(NSString *)__name
                         withInt:(jint)__ordinal {
  OrgApacheLuceneIndexIndexWriterConfig_OpenModeEnum_initWithNSString_withInt_(self, __name, __ordinal);
  return self;
}

IOSObjectArray *OrgApacheLuceneIndexIndexWriterConfig_OpenModeEnum_values() {
  OrgApacheLuceneIndexIndexWriterConfig_OpenModeEnum_initialize();
  return [IOSObjectArray arrayWithObjects:OrgApacheLuceneIndexIndexWriterConfig_OpenModeEnum_values_ count:3 type:OrgApacheLuceneIndexIndexWriterConfig_OpenModeEnum_class_()];
}

+ (IOSObjectArray *)values {
  return OrgApacheLuceneIndexIndexWriterConfig_OpenModeEnum_values();
}

+ (OrgApacheLuceneIndexIndexWriterConfig_OpenModeEnum *)valueOfWithNSString:(NSString *)name {
  return OrgApacheLuceneIndexIndexWriterConfig_OpenModeEnum_valueOfWithNSString_(name);
}

OrgApacheLuceneIndexIndexWriterConfig_OpenModeEnum *OrgApacheLuceneIndexIndexWriterConfig_OpenModeEnum_valueOfWithNSString_(NSString *name) {
  OrgApacheLuceneIndexIndexWriterConfig_OpenModeEnum_initialize();
  for (int i = 0; i < 3; i++) {
    OrgApacheLuceneIndexIndexWriterConfig_OpenModeEnum *e = OrgApacheLuceneIndexIndexWriterConfig_OpenModeEnum_values_[i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw [[[JavaLangIllegalArgumentException alloc] initWithNSString:name] autorelease];
  return nil;
}

- (id)copyWithZone:(NSZone *)zone {
  return [self retain];
}

+ (void)initialize {
  if (self == [OrgApacheLuceneIndexIndexWriterConfig_OpenModeEnum class]) {
    OrgApacheLuceneIndexIndexWriterConfig_OpenModeEnum_CREATE = new_OrgApacheLuceneIndexIndexWriterConfig_OpenModeEnum_initWithNSString_withInt_(@"CREATE", 0);
    OrgApacheLuceneIndexIndexWriterConfig_OpenModeEnum_APPEND = new_OrgApacheLuceneIndexIndexWriterConfig_OpenModeEnum_initWithNSString_withInt_(@"APPEND", 1);
    OrgApacheLuceneIndexIndexWriterConfig_OpenModeEnum_CREATE_OR_APPEND = new_OrgApacheLuceneIndexIndexWriterConfig_OpenModeEnum_initWithNSString_withInt_(@"CREATE_OR_APPEND", 2);
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneIndexIndexWriterConfig_OpenModeEnum)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcFieldInfo fields[] = {
    { "CREATE", "CREATE", 0x4019, "Lorg.apache.lucene.index.IndexWriterConfig$OpenMode;", &OrgApacheLuceneIndexIndexWriterConfig_OpenModeEnum_CREATE, NULL, .constantValue.asLong = 0 },
    { "APPEND", "APPEND", 0x4019, "Lorg.apache.lucene.index.IndexWriterConfig$OpenMode;", &OrgApacheLuceneIndexIndexWriterConfig_OpenModeEnum_APPEND, NULL, .constantValue.asLong = 0 },
    { "CREATE_OR_APPEND", "CREATE_OR_APPEND", 0x4019, "Lorg.apache.lucene.index.IndexWriterConfig$OpenMode;", &OrgApacheLuceneIndexIndexWriterConfig_OpenModeEnum_CREATE_OR_APPEND, NULL, .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"Lorg.apache.lucene.index.IndexWriterConfig$OpenMode;"};
  static const J2ObjcClassInfo _OrgApacheLuceneIndexIndexWriterConfig_OpenModeEnum = { 2, "OpenMode", "org.apache.lucene.index", "IndexWriterConfig", 0x4019, 0, NULL, 3, fields, 1, superclass_type_args, 0, NULL, NULL, "Ljava/lang/Enum<Lorg/apache/lucene/index/IndexWriterConfig$OpenMode;>;" };
  return &_OrgApacheLuceneIndexIndexWriterConfig_OpenModeEnum;
}

@end

void OrgApacheLuceneIndexIndexWriterConfig_OpenModeEnum_initWithNSString_withInt_(OrgApacheLuceneIndexIndexWriterConfig_OpenModeEnum *self, NSString *__name, jint __ordinal) {
  JavaLangEnum_initWithNSString_withInt_(self, __name, __ordinal);
}

OrgApacheLuceneIndexIndexWriterConfig_OpenModeEnum *new_OrgApacheLuceneIndexIndexWriterConfig_OpenModeEnum_initWithNSString_withInt_(NSString *__name, jint __ordinal) {
  OrgApacheLuceneIndexIndexWriterConfig_OpenModeEnum *self = [OrgApacheLuceneIndexIndexWriterConfig_OpenModeEnum alloc];
  OrgApacheLuceneIndexIndexWriterConfig_OpenModeEnum_initWithNSString_withInt_(self, __name, __ordinal);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexIndexWriterConfig_OpenModeEnum)
