//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/RandomAccessOrds.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/index/RandomAccessOrds.h"
#include "org/apache/lucene/index/SortedSetDocValues.h"

@implementation OrgApacheLuceneIndexRandomAccessOrds

- (instancetype)init {
  OrgApacheLuceneIndexRandomAccessOrds_init(self);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "RandomAccessOrds", NULL, 0x4, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexRandomAccessOrds = { 2, "RandomAccessOrds", "org.apache.lucene.index", NULL, 0x401, 1, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneIndexRandomAccessOrds;
}

@end

void OrgApacheLuceneIndexRandomAccessOrds_init(OrgApacheLuceneIndexRandomAccessOrds *self) {
  OrgApacheLuceneIndexSortedSetDocValues_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexRandomAccessOrds)
