//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./join/src/java/org/apache/lucene/search/join/BitDocIdSetFilter.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/index/LeafReaderContext.h"
#include "org/apache/lucene/search/BitsFilteredDocIdSet.h"
#include "org/apache/lucene/search/DocIdSet.h"
#include "org/apache/lucene/search/Filter.h"
#include "org/apache/lucene/search/join/BitDocIdSetFilter.h"
#include "org/apache/lucene/util/BitDocIdSet.h"
#include "org/apache/lucene/util/BitSet.h"
#include "org/apache/lucene/util/Bits.h"
#include "org/lukhnos/portmobile/util/Objects.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/search/join/BitDocIdSetFilter must not be compiled with ARC (-fobjc-arc)"
#endif

#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation OrgApacheLuceneSearchJoinBitDocIdSetFilter

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneSearchJoinBitDocIdSetFilter_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (OrgApacheLuceneUtilBitDocIdSet *)getDocIdSetWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (OrgApacheLuceneSearchDocIdSet *)getDocIdSetWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context
                                                            withOrgApacheLuceneUtilBits:(id<OrgApacheLuceneUtilBits>)acceptDocs {
  return OrgApacheLuceneSearchBitsFilteredDocIdSet_wrapWithOrgApacheLuceneSearchDocIdSet_withOrgApacheLuceneUtilBits_([self getDocIdSetWithOrgApacheLuceneIndexLeafReaderContext:context], acceptDocs);
}

- (OrgApacheLuceneUtilBitSet *)getBitSetWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context {
  OrgApacheLuceneUtilBitDocIdSet *set = [self getDocIdSetWithOrgApacheLuceneIndexLeafReaderContext:context];
  if (set == nil) {
    return nil;
  }
  else {
    OrgApacheLuceneUtilBitSet *bits = [set bits];
    return OrgLukhnosPortmobileUtilObjects_requireNonNullWithId_(bits);
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilBitDocIdSet;", 0x401, 0, 1, 2, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchDocIdSet;", 0x11, 0, 3, 2, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilBitSet;", 0x11, 4, 1, 2, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(getDocIdSetWithOrgApacheLuceneIndexLeafReaderContext:);
  methods[2].selector = @selector(getDocIdSetWithOrgApacheLuceneIndexLeafReaderContext:withOrgApacheLuceneUtilBits:);
  methods[3].selector = @selector(getBitSetWithOrgApacheLuceneIndexLeafReaderContext:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "getDocIdSet", "LOrgApacheLuceneIndexLeafReaderContext;", "LJavaIoIOException;", "LOrgApacheLuceneIndexLeafReaderContext;LOrgApacheLuceneUtilBits;", "getBitSet" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchJoinBitDocIdSetFilter = { "BitDocIdSetFilter", "org.apache.lucene.search.join", ptrTable, methods, NULL, 7, 0x401, 4, 0, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchJoinBitDocIdSetFilter;
}

@end

void OrgApacheLuceneSearchJoinBitDocIdSetFilter_init(OrgApacheLuceneSearchJoinBitDocIdSetFilter *self) {
  OrgApacheLuceneSearchFilter_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchJoinBitDocIdSetFilter)
