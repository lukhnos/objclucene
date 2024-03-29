//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./join/src/java/org/apache/lucene/search/join/BitDocIdSetCachingWrapperFilter.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/util/Collections.h"
#include "java/util/Map.h"
#include "java/util/WeakHashMap.h"
#include "org/apache/lucene/index/LeafReader.h"
#include "org/apache/lucene/index/LeafReaderContext.h"
#include "org/apache/lucene/search/DocIdSet.h"
#include "org/apache/lucene/search/DocIdSetIterator.h"
#include "org/apache/lucene/search/Filter.h"
#include "org/apache/lucene/search/join/BitDocIdSetCachingWrapperFilter.h"
#include "org/apache/lucene/search/join/BitDocIdSetFilter.h"
#include "org/apache/lucene/util/BitDocIdSet.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/search/join/BitDocIdSetCachingWrapperFilter must not be compiled with ARC (-fobjc-arc)"
#endif

#pragma clang diagnostic ignored "-Wincomplete-implementation"

@interface OrgApacheLuceneSearchJoinBitDocIdSetCachingWrapperFilter () {
 @public
  OrgApacheLuceneSearchFilter *filter_;
  id<JavaUtilMap> cache_;
}

- (OrgApacheLuceneUtilBitDocIdSet *)docIdSetToCacheWithOrgApacheLuceneSearchDocIdSet:(OrgApacheLuceneSearchDocIdSet *)docIdSet
                                                  withOrgApacheLuceneIndexLeafReader:(OrgApacheLuceneIndexLeafReader *)reader;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchJoinBitDocIdSetCachingWrapperFilter, filter_, OrgApacheLuceneSearchFilter *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchJoinBitDocIdSetCachingWrapperFilter, cache_, id<JavaUtilMap>)

__attribute__((unused)) static OrgApacheLuceneUtilBitDocIdSet *OrgApacheLuceneSearchJoinBitDocIdSetCachingWrapperFilter_docIdSetToCacheWithOrgApacheLuceneSearchDocIdSet_withOrgApacheLuceneIndexLeafReader_(OrgApacheLuceneSearchJoinBitDocIdSetCachingWrapperFilter *self, OrgApacheLuceneSearchDocIdSet *docIdSet, OrgApacheLuceneIndexLeafReader *reader);

@implementation OrgApacheLuceneSearchJoinBitDocIdSetCachingWrapperFilter

- (instancetype)initWithOrgApacheLuceneSearchFilter:(OrgApacheLuceneSearchFilter *)filter {
  OrgApacheLuceneSearchJoinBitDocIdSetCachingWrapperFilter_initWithOrgApacheLuceneSearchFilter_(self, filter);
  return self;
}

- (OrgApacheLuceneSearchFilter *)getFilter {
  return filter_;
}

- (OrgApacheLuceneUtilBitDocIdSet *)docIdSetToCacheWithOrgApacheLuceneSearchDocIdSet:(OrgApacheLuceneSearchDocIdSet *)docIdSet
                                                  withOrgApacheLuceneIndexLeafReader:(OrgApacheLuceneIndexLeafReader *)reader {
  return OrgApacheLuceneSearchJoinBitDocIdSetCachingWrapperFilter_docIdSetToCacheWithOrgApacheLuceneSearchDocIdSet_withOrgApacheLuceneIndexLeafReader_(self, docIdSet, reader);
}

- (OrgApacheLuceneUtilBitDocIdSet *)getDocIdSetWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context {
  OrgApacheLuceneIndexLeafReader *reader = [((OrgApacheLuceneIndexLeafReaderContext *) nil_chk(context)) reader];
  id key = [((OrgApacheLuceneIndexLeafReader *) nil_chk(reader)) getCoreCacheKey];
  OrgApacheLuceneSearchDocIdSet *docIdSet = JreRetainedLocalValue([((id<JavaUtilMap>) nil_chk(cache_)) getWithId:key]);
  if (docIdSet == nil) {
    docIdSet = [((OrgApacheLuceneSearchFilter *) nil_chk(filter_)) getDocIdSetWithOrgApacheLuceneIndexLeafReaderContext:context withOrgApacheLuceneUtilBits:nil];
    docIdSet = OrgApacheLuceneSearchJoinBitDocIdSetCachingWrapperFilter_docIdSetToCacheWithOrgApacheLuceneSearchDocIdSet_withOrgApacheLuceneIndexLeafReader_(self, docIdSet, reader);
    if (docIdSet == nil) {
      docIdSet = JreLoadStatic(OrgApacheLuceneSearchDocIdSet, EMPTY);
    }
    [cache_ putWithId:key withId:docIdSet];
  }
  return JreObjectEqualsEquals(docIdSet, JreLoadStatic(OrgApacheLuceneSearchDocIdSet, EMPTY)) ? nil : (OrgApacheLuceneUtilBitDocIdSet *) cast_chk(docIdSet, [OrgApacheLuceneUtilBitDocIdSet class]);
}

- (NSString *)toStringWithNSString:(NSString *)field {
  return JreStrcat("$C$C", [[self java_getClass] getSimpleName], '(', [((OrgApacheLuceneSearchFilter *) nil_chk(filter_)) toStringWithNSString:field], ')');
}

- (jboolean)isEqual:(id)o {
  if ([super isEqual:o] == false) {
    return false;
  }
  OrgApacheLuceneSearchJoinBitDocIdSetCachingWrapperFilter *other = (OrgApacheLuceneSearchJoinBitDocIdSetCachingWrapperFilter *) cast_chk(o, [OrgApacheLuceneSearchJoinBitDocIdSetCachingWrapperFilter class]);
  return [((OrgApacheLuceneSearchFilter *) nil_chk(self->filter_)) isEqual:((OrgApacheLuceneSearchJoinBitDocIdSetCachingWrapperFilter *) nil_chk(other))->filter_];
}

- (NSUInteger)hash {
  return 31 * ((jint) [super hash]) + ((jint) [((OrgApacheLuceneSearchFilter *) nil_chk(filter_)) hash]);
}

- (void)dealloc {
  RELEASE_(filter_);
  RELEASE_(cache_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchFilter;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilBitDocIdSet;", 0x2, 1, 2, 3, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilBitDocIdSet;", 0x1, 4, 5, 3, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 6, 7, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 8, 9, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 10, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneSearchFilter:);
  methods[1].selector = @selector(getFilter);
  methods[2].selector = @selector(docIdSetToCacheWithOrgApacheLuceneSearchDocIdSet:withOrgApacheLuceneIndexLeafReader:);
  methods[3].selector = @selector(getDocIdSetWithOrgApacheLuceneIndexLeafReaderContext:);
  methods[4].selector = @selector(toStringWithNSString:);
  methods[5].selector = @selector(isEqual:);
  methods[6].selector = @selector(hash);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "filter_", "LOrgApacheLuceneSearchFilter;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "cache_", "LJavaUtilMap;", .constantValue.asLong = 0, 0x12, -1, -1, 11, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneSearchFilter;", "docIdSetToCache", "LOrgApacheLuceneSearchDocIdSet;LOrgApacheLuceneIndexLeafReader;", "LJavaIoIOException;", "getDocIdSet", "LOrgApacheLuceneIndexLeafReaderContext;", "toString", "LNSString;", "equals", "LNSObject;", "hashCode", "Ljava/util/Map<Ljava/lang/Object;Lorg/apache/lucene/search/DocIdSet;>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchJoinBitDocIdSetCachingWrapperFilter = { "BitDocIdSetCachingWrapperFilter", "org.apache.lucene.search.join", ptrTable, methods, fields, 7, 0x1, 7, 2, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchJoinBitDocIdSetCachingWrapperFilter;
}

@end

void OrgApacheLuceneSearchJoinBitDocIdSetCachingWrapperFilter_initWithOrgApacheLuceneSearchFilter_(OrgApacheLuceneSearchJoinBitDocIdSetCachingWrapperFilter *self, OrgApacheLuceneSearchFilter *filter) {
  OrgApacheLuceneSearchJoinBitDocIdSetFilter_init(self);
  JreStrongAssign(&self->cache_, JavaUtilCollections_synchronizedMapWithJavaUtilMap_(create_JavaUtilWeakHashMap_init()));
  JreStrongAssign(&self->filter_, filter);
}

OrgApacheLuceneSearchJoinBitDocIdSetCachingWrapperFilter *new_OrgApacheLuceneSearchJoinBitDocIdSetCachingWrapperFilter_initWithOrgApacheLuceneSearchFilter_(OrgApacheLuceneSearchFilter *filter) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchJoinBitDocIdSetCachingWrapperFilter, initWithOrgApacheLuceneSearchFilter_, filter)
}

OrgApacheLuceneSearchJoinBitDocIdSetCachingWrapperFilter *create_OrgApacheLuceneSearchJoinBitDocIdSetCachingWrapperFilter_initWithOrgApacheLuceneSearchFilter_(OrgApacheLuceneSearchFilter *filter) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchJoinBitDocIdSetCachingWrapperFilter, initWithOrgApacheLuceneSearchFilter_, filter)
}

OrgApacheLuceneUtilBitDocIdSet *OrgApacheLuceneSearchJoinBitDocIdSetCachingWrapperFilter_docIdSetToCacheWithOrgApacheLuceneSearchDocIdSet_withOrgApacheLuceneIndexLeafReader_(OrgApacheLuceneSearchJoinBitDocIdSetCachingWrapperFilter *self, OrgApacheLuceneSearchDocIdSet *docIdSet, OrgApacheLuceneIndexLeafReader *reader) {
  OrgApacheLuceneSearchDocIdSetIterator *it = [((OrgApacheLuceneSearchDocIdSet *) nil_chk(docIdSet)) iterator];
  if (it == nil) {
    return nil;
  }
  else {
    OrgApacheLuceneUtilBitDocIdSet_Builder *builder = create_OrgApacheLuceneUtilBitDocIdSet_Builder_initWithInt_([((OrgApacheLuceneIndexLeafReader *) nil_chk(reader)) maxDoc]);
    [builder or__WithOrgApacheLuceneSearchDocIdSetIterator:it];
    return [builder build];
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchJoinBitDocIdSetCachingWrapperFilter)
