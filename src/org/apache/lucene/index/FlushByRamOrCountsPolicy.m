//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/FlushByRamOrCountsPolicy.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/index/DocumentsWriterFlushControl.h"
#include "org/apache/lucene/index/DocumentsWriterPerThread.h"
#include "org/apache/lucene/index/DocumentsWriterPerThreadPool.h"
#include "org/apache/lucene/index/FlushByRamOrCountsPolicy.h"
#include "org/apache/lucene/index/FlushPolicy.h"
#include "org/apache/lucene/index/IndexWriterConfig.h"
#include "org/apache/lucene/index/LiveIndexWriterConfig.h"
#include "org/apache/lucene/util/InfoStream.h"

@implementation OrgApacheLuceneIndexFlushByRamOrCountsPolicy

- (void)onDeleteWithOrgApacheLuceneIndexDocumentsWriterFlushControl:(OrgApacheLuceneIndexDocumentsWriterFlushControl *)control
   withOrgApacheLuceneIndexDocumentsWriterPerThreadPool_ThreadState:(OrgApacheLuceneIndexDocumentsWriterPerThreadPool_ThreadState *)state {
  if ([self flushOnDeleteTerms]) {
    jint maxBufferedDeleteTerms = [((OrgApacheLuceneIndexLiveIndexWriterConfig *) nil_chk(indexWriterConfig_)) getMaxBufferedDeleteTerms];
    if ([((OrgApacheLuceneIndexDocumentsWriterFlushControl *) nil_chk(control)) getNumGlobalTermDeletes] >= maxBufferedDeleteTerms) {
      [control setApplyAllDeletes];
    }
  }
  if (([self flushOnRAM] && [((OrgApacheLuceneIndexDocumentsWriterFlushControl *) nil_chk(control)) getDeleteBytesUsed] > (1024 * 1024 * [((OrgApacheLuceneIndexLiveIndexWriterConfig *) nil_chk(indexWriterConfig_)) getRAMBufferSizeMB]))) {
    [((OrgApacheLuceneIndexDocumentsWriterFlushControl *) nil_chk(control)) setApplyAllDeletes];
    if ([((OrgApacheLuceneUtilInfoStream *) nil_chk(infoStream_)) isEnabledWithNSString:@"FP"]) {
      [((OrgApacheLuceneUtilInfoStream *) nil_chk(infoStream_)) messageWithNSString:@"FP" withNSString:JreStrcat("$J$D", @"force apply deletes bytesUsed=", [control getDeleteBytesUsed], @" vs ramBufferMB=", [((OrgApacheLuceneIndexLiveIndexWriterConfig *) nil_chk(indexWriterConfig_)) getRAMBufferSizeMB])];
    }
  }
}

- (void)onInsertWithOrgApacheLuceneIndexDocumentsWriterFlushControl:(OrgApacheLuceneIndexDocumentsWriterFlushControl *)control
   withOrgApacheLuceneIndexDocumentsWriterPerThreadPool_ThreadState:(OrgApacheLuceneIndexDocumentsWriterPerThreadPool_ThreadState *)state {
  if ([self flushOnDocCount] && [((OrgApacheLuceneIndexDocumentsWriterPerThread *) nil_chk(((OrgApacheLuceneIndexDocumentsWriterPerThreadPool_ThreadState *) nil_chk(state))->dwpt_)) getNumDocsInRAM] >= [((OrgApacheLuceneIndexLiveIndexWriterConfig *) nil_chk(indexWriterConfig_)) getMaxBufferedDocs]) {
    [((OrgApacheLuceneIndexDocumentsWriterFlushControl *) nil_chk(control)) setFlushPendingWithOrgApacheLuceneIndexDocumentsWriterPerThreadPool_ThreadState:state];
  }
  else if ([self flushOnRAM]) {
    jlong limit = JreFpToLong(([((OrgApacheLuceneIndexLiveIndexWriterConfig *) nil_chk(indexWriterConfig_)) getRAMBufferSizeMB] * 1024. * 1024.));
    jlong totalRam = [((OrgApacheLuceneIndexDocumentsWriterFlushControl *) nil_chk(control)) activeBytes] + [control getDeleteBytesUsed];
    if (totalRam >= limit) {
      if ([((OrgApacheLuceneUtilInfoStream *) nil_chk(infoStream_)) isEnabledWithNSString:@"FP"]) {
        [((OrgApacheLuceneUtilInfoStream *) nil_chk(infoStream_)) messageWithNSString:@"FP" withNSString:JreStrcat("$J$J$J", @"trigger flush: activeBytes=", [control activeBytes], @" deleteBytes=", [control getDeleteBytesUsed], @" vs limit=", limit)];
      }
      [self markLargestWriterPendingWithOrgApacheLuceneIndexDocumentsWriterFlushControl:control withOrgApacheLuceneIndexDocumentsWriterPerThreadPool_ThreadState:state withLong:totalRam];
    }
  }
}

- (void)markLargestWriterPendingWithOrgApacheLuceneIndexDocumentsWriterFlushControl:(OrgApacheLuceneIndexDocumentsWriterFlushControl *)control
                   withOrgApacheLuceneIndexDocumentsWriterPerThreadPool_ThreadState:(OrgApacheLuceneIndexDocumentsWriterPerThreadPool_ThreadState *)perThreadState
                                                                           withLong:(jlong)currentBytesPerThread {
  [((OrgApacheLuceneIndexDocumentsWriterFlushControl *) nil_chk(control)) setFlushPendingWithOrgApacheLuceneIndexDocumentsWriterPerThreadPool_ThreadState:[self findLargestNonPendingWriterWithOrgApacheLuceneIndexDocumentsWriterFlushControl:control withOrgApacheLuceneIndexDocumentsWriterPerThreadPool_ThreadState:perThreadState]];
}

- (jboolean)flushOnDocCount {
  return [((OrgApacheLuceneIndexLiveIndexWriterConfig *) nil_chk(indexWriterConfig_)) getMaxBufferedDocs] != OrgApacheLuceneIndexIndexWriterConfig_DISABLE_AUTO_FLUSH;
}

- (jboolean)flushOnDeleteTerms {
  return [((OrgApacheLuceneIndexLiveIndexWriterConfig *) nil_chk(indexWriterConfig_)) getMaxBufferedDeleteTerms] != OrgApacheLuceneIndexIndexWriterConfig_DISABLE_AUTO_FLUSH;
}

- (jboolean)flushOnRAM {
  return [((OrgApacheLuceneIndexLiveIndexWriterConfig *) nil_chk(indexWriterConfig_)) getRAMBufferSizeMB] != OrgApacheLuceneIndexIndexWriterConfig_DISABLE_AUTO_FLUSH;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneIndexFlushByRamOrCountsPolicy_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "onDeleteWithOrgApacheLuceneIndexDocumentsWriterFlushControl:withOrgApacheLuceneIndexDocumentsWriterPerThreadPool_ThreadState:", "onDelete", "V", 0x1, NULL, NULL },
    { "onInsertWithOrgApacheLuceneIndexDocumentsWriterFlushControl:withOrgApacheLuceneIndexDocumentsWriterPerThreadPool_ThreadState:", "onInsert", "V", 0x1, NULL, NULL },
    { "markLargestWriterPendingWithOrgApacheLuceneIndexDocumentsWriterFlushControl:withOrgApacheLuceneIndexDocumentsWriterPerThreadPool_ThreadState:withLong:", "markLargestWriterPending", "V", 0x4, NULL, NULL },
    { "flushOnDocCount", NULL, "Z", 0x4, NULL, NULL },
    { "flushOnDeleteTerms", NULL, "Z", 0x4, NULL, NULL },
    { "flushOnRAM", NULL, "Z", 0x4, NULL, NULL },
    { "init", "FlushByRamOrCountsPolicy", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexFlushByRamOrCountsPolicy = { 2, "FlushByRamOrCountsPolicy", "org.apache.lucene.index", NULL, 0x0, 7, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneIndexFlushByRamOrCountsPolicy;
}

@end

void OrgApacheLuceneIndexFlushByRamOrCountsPolicy_init(OrgApacheLuceneIndexFlushByRamOrCountsPolicy *self) {
  OrgApacheLuceneIndexFlushPolicy_init(self);
}

OrgApacheLuceneIndexFlushByRamOrCountsPolicy *new_OrgApacheLuceneIndexFlushByRamOrCountsPolicy_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexFlushByRamOrCountsPolicy, init)
}

OrgApacheLuceneIndexFlushByRamOrCountsPolicy *create_OrgApacheLuceneIndexFlushByRamOrCountsPolicy_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexFlushByRamOrCountsPolicy, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexFlushByRamOrCountsPolicy)
