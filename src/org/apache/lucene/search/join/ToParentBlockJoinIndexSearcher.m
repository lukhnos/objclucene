//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./join/src/java/org/apache/lucene/search/join/ToParentBlockJoinIndexSearcher.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/util/List.h"
#include "java/util/concurrent/ExecutorService.h"
#include "org/apache/lucene/index/IndexReader.h"
#include "org/apache/lucene/index/LeafReader.h"
#include "org/apache/lucene/index/LeafReaderContext.h"
#include "org/apache/lucene/search/Collector.h"
#include "org/apache/lucene/search/DocIdSetIterator.h"
#include "org/apache/lucene/search/IndexSearcher.h"
#include "org/apache/lucene/search/LeafCollector.h"
#include "org/apache/lucene/search/Scorer.h"
#include "org/apache/lucene/search/Weight.h"
#include "org/apache/lucene/search/join/ToParentBlockJoinIndexSearcher.h"
#include "org/apache/lucene/util/Bits.h"

@implementation OrgApacheLuceneSearchJoinToParentBlockJoinIndexSearcher

- (instancetype)initWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)r
                  withJavaUtilConcurrentExecutorService:(id<JavaUtilConcurrentExecutorService>)executor {
  OrgApacheLuceneSearchJoinToParentBlockJoinIndexSearcher_initWithOrgApacheLuceneIndexIndexReader_withJavaUtilConcurrentExecutorService_(self, r, executor);
  return self;
}

- (instancetype)initWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)r {
  OrgApacheLuceneSearchJoinToParentBlockJoinIndexSearcher_initWithOrgApacheLuceneIndexIndexReader_(self, r);
  return self;
}

- (void)searchWithJavaUtilList:(id<JavaUtilList>)leaves
withOrgApacheLuceneSearchWeight:(OrgApacheLuceneSearchWeight *)weight
withOrgApacheLuceneSearchCollector:(id<OrgApacheLuceneSearchCollector>)collector {
  for (OrgApacheLuceneIndexLeafReaderContext * __strong ctx in nil_chk(leaves)) {
    OrgApacheLuceneSearchScorer *scorer = [((OrgApacheLuceneSearchWeight *) nil_chk(weight)) scorerWithOrgApacheLuceneIndexLeafReaderContext:ctx];
    if (scorer != nil) {
      id<OrgApacheLuceneSearchLeafCollector> leafCollector = [((id<OrgApacheLuceneSearchCollector>) nil_chk(collector)) getLeafCollectorWithOrgApacheLuceneIndexLeafReaderContext:ctx];
      [((id<OrgApacheLuceneSearchLeafCollector>) nil_chk(leafCollector)) setScorerWithOrgApacheLuceneSearchScorer:scorer];
      id<OrgApacheLuceneUtilBits> liveDocs = [((OrgApacheLuceneIndexLeafReader *) nil_chk([((OrgApacheLuceneIndexLeafReaderContext *) nil_chk(ctx)) reader])) getLiveDocs];
      for (jint doc = [scorer nextDoc]; doc != OrgApacheLuceneSearchDocIdSetIterator_NO_MORE_DOCS; doc = [scorer nextDoc]) {
        if (liveDocs == nil || [liveDocs getWithInt:doc]) {
          [leafCollector collectWithInt:doc];
        }
      }
    }
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneIndexIndexReader:withJavaUtilConcurrentExecutorService:", "ToParentBlockJoinIndexSearcher", NULL, 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneIndexIndexReader:", "ToParentBlockJoinIndexSearcher", NULL, 0x1, NULL, NULL },
    { "searchWithJavaUtilList:withOrgApacheLuceneSearchWeight:withOrgApacheLuceneSearchCollector:", "search", "V", 0x4, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchJoinToParentBlockJoinIndexSearcher = { 2, "ToParentBlockJoinIndexSearcher", "org.apache.lucene.search.join", NULL, 0x1, 3, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchJoinToParentBlockJoinIndexSearcher;
}

@end

void OrgApacheLuceneSearchJoinToParentBlockJoinIndexSearcher_initWithOrgApacheLuceneIndexIndexReader_withJavaUtilConcurrentExecutorService_(OrgApacheLuceneSearchJoinToParentBlockJoinIndexSearcher *self, OrgApacheLuceneIndexIndexReader *r, id<JavaUtilConcurrentExecutorService> executor) {
  OrgApacheLuceneSearchIndexSearcher_initWithOrgApacheLuceneIndexIndexReader_withJavaUtilConcurrentExecutorService_(self, r, executor);
}

OrgApacheLuceneSearchJoinToParentBlockJoinIndexSearcher *new_OrgApacheLuceneSearchJoinToParentBlockJoinIndexSearcher_initWithOrgApacheLuceneIndexIndexReader_withJavaUtilConcurrentExecutorService_(OrgApacheLuceneIndexIndexReader *r, id<JavaUtilConcurrentExecutorService> executor) {
  OrgApacheLuceneSearchJoinToParentBlockJoinIndexSearcher *self = [OrgApacheLuceneSearchJoinToParentBlockJoinIndexSearcher alloc];
  OrgApacheLuceneSearchJoinToParentBlockJoinIndexSearcher_initWithOrgApacheLuceneIndexIndexReader_withJavaUtilConcurrentExecutorService_(self, r, executor);
  return self;
}

void OrgApacheLuceneSearchJoinToParentBlockJoinIndexSearcher_initWithOrgApacheLuceneIndexIndexReader_(OrgApacheLuceneSearchJoinToParentBlockJoinIndexSearcher *self, OrgApacheLuceneIndexIndexReader *r) {
  OrgApacheLuceneSearchIndexSearcher_initWithOrgApacheLuceneIndexIndexReader_(self, r);
}

OrgApacheLuceneSearchJoinToParentBlockJoinIndexSearcher *new_OrgApacheLuceneSearchJoinToParentBlockJoinIndexSearcher_initWithOrgApacheLuceneIndexIndexReader_(OrgApacheLuceneIndexIndexReader *r) {
  OrgApacheLuceneSearchJoinToParentBlockJoinIndexSearcher *self = [OrgApacheLuceneSearchJoinToParentBlockJoinIndexSearcher alloc];
  OrgApacheLuceneSearchJoinToParentBlockJoinIndexSearcher_initWithOrgApacheLuceneIndexIndexReader_(self, r);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchJoinToParentBlockJoinIndexSearcher)
