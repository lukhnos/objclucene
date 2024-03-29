//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/Filter.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/index/IndexReader.h"
#include "org/apache/lucene/index/LeafReaderContext.h"
#include "org/apache/lucene/search/DocIdSet.h"
#include "org/apache/lucene/search/Filter.h"
#include "org/apache/lucene/search/FilteredQuery.h"
#include "org/apache/lucene/search/Query.h"
#include "org/apache/lucene/util/Bits.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/search/Filter must not be compiled with ARC (-fobjc-arc)"
#endif

@implementation OrgApacheLuceneSearchFilter

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneSearchFilter_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (OrgApacheLuceneSearchDocIdSet *)getDocIdSetWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context
                                                            withOrgApacheLuceneUtilBits:(id<OrgApacheLuceneUtilBits>)acceptDocs {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (OrgApacheLuceneSearchQuery *)rewriteWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader {
  return [((OrgApacheLuceneSearchFilteredQuery_FilterStrategy *) nil_chk(JreLoadStatic(OrgApacheLuceneSearchFilteredQuery, RANDOM_ACCESS_FILTER_STRATEGY))) rewriteWithOrgApacheLuceneSearchFilter:self];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchDocIdSet;", 0x401, 0, 1, 2, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchQuery;", 0x1, 3, 4, 2, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(getDocIdSetWithOrgApacheLuceneIndexLeafReaderContext:withOrgApacheLuceneUtilBits:);
  methods[2].selector = @selector(rewriteWithOrgApacheLuceneIndexIndexReader:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "getDocIdSet", "LOrgApacheLuceneIndexLeafReaderContext;LOrgApacheLuceneUtilBits;", "LJavaIoIOException;", "rewrite", "LOrgApacheLuceneIndexIndexReader;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchFilter = { "Filter", "org.apache.lucene.search", ptrTable, methods, NULL, 7, 0x401, 3, 0, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchFilter;
}

@end

void OrgApacheLuceneSearchFilter_init(OrgApacheLuceneSearchFilter *self) {
  OrgApacheLuceneSearchQuery_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchFilter)
