//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/LRUQueryCache.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/search/LRUQueryCache.h"

#pragma clang diagnostic ignored "-Wprotocol"

@implementation OrgApacheLuceneSearchLRUQueryCache

- (instancetype)init {
  OrgApacheLuceneSearchLRUQueryCache_init(self);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "QUERY_DEFAULT_RAM_BYTES_USED", "QUERY_DEFAULT_RAM_BYTES_USED", 0x18, "J", NULL, NULL, .constantValue.asLong = OrgApacheLuceneSearchLRUQueryCache_QUERY_DEFAULT_RAM_BYTES_USED },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.search.LRUQueryCache$LeafCache;", "Lorg.apache.lucene.search.LRUQueryCache$CachingWrapperWeight;"};
  static const J2ObjcClassInfo _OrgApacheLuceneSearchLRUQueryCache = { 2, "LRUQueryCache", "org.apache.lucene.search", NULL, 0x1, 1, methods, 1, fields, 0, NULL, 2, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneSearchLRUQueryCache;
}

@end

void OrgApacheLuceneSearchLRUQueryCache_init(OrgApacheLuceneSearchLRUQueryCache *self) {
  NSObject_init(self);
}

OrgApacheLuceneSearchLRUQueryCache *new_OrgApacheLuceneSearchLRUQueryCache_init() {
  OrgApacheLuceneSearchLRUQueryCache *self = [OrgApacheLuceneSearchLRUQueryCache alloc];
  OrgApacheLuceneSearchLRUQueryCache_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchLRUQueryCache)
