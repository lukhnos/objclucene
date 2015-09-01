//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/QueryCachingPolicy.java
//

#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "org/apache/lucene/search/QueryCachingPolicy.h"

@interface OrgApacheLuceneSearchQueryCachingPolicy_CacheOnLargeSegments () {
 @public
  jint minIndexSize_;
  jfloat minSizeRatio_;
}

@end

@interface OrgApacheLuceneSearchQueryCachingPolicy_$1 : NSObject < OrgApacheLuceneSearchQueryCachingPolicy >

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchQueryCachingPolicy_$1)

__attribute__((unused)) static void OrgApacheLuceneSearchQueryCachingPolicy_$1_init(OrgApacheLuceneSearchQueryCachingPolicy_$1 *self);

__attribute__((unused)) static OrgApacheLuceneSearchQueryCachingPolicy_$1 *new_OrgApacheLuceneSearchQueryCachingPolicy_$1_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchQueryCachingPolicy_$1)

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneSearchQueryCachingPolicy)

id<OrgApacheLuceneSearchQueryCachingPolicy> OrgApacheLuceneSearchQueryCachingPolicy_ALWAYS_CACHE_;

@implementation OrgApacheLuceneSearchQueryCachingPolicy

+ (void)initialize {
  if (self == [OrgApacheLuceneSearchQueryCachingPolicy class]) {
    JreStrongAssignAndConsume(&OrgApacheLuceneSearchQueryCachingPolicy_ALWAYS_CACHE_, new_OrgApacheLuceneSearchQueryCachingPolicy_$1_init());
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneSearchQueryCachingPolicy)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcFieldInfo fields[] = {
    { "ALWAYS_CACHE_", NULL, 0x19, "Lorg.apache.lucene.search.QueryCachingPolicy;", &OrgApacheLuceneSearchQueryCachingPolicy_ALWAYS_CACHE_, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.search.QueryCachingPolicy$CacheOnLargeSegments;"};
  static const J2ObjcClassInfo _OrgApacheLuceneSearchQueryCachingPolicy = { 2, "QueryCachingPolicy", "org.apache.lucene.search", NULL, 0x609, 0, NULL, 1, fields, 0, NULL, 1, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneSearchQueryCachingPolicy;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchQueryCachingPolicy)

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneSearchQueryCachingPolicy_CacheOnLargeSegments)

OrgApacheLuceneSearchQueryCachingPolicy_CacheOnLargeSegments *OrgApacheLuceneSearchQueryCachingPolicy_CacheOnLargeSegments_DEFAULT_;

@implementation OrgApacheLuceneSearchQueryCachingPolicy_CacheOnLargeSegments

- (instancetype)initWithInt:(jint)minIndexSize
                  withFloat:(jfloat)minSizeRatio {
  OrgApacheLuceneSearchQueryCachingPolicy_CacheOnLargeSegments_initWithInt_withFloat_(self, minIndexSize, minSizeRatio);
  return self;
}

+ (void)initialize {
  if (self == [OrgApacheLuceneSearchQueryCachingPolicy_CacheOnLargeSegments class]) {
    JreStrongAssignAndConsume(&OrgApacheLuceneSearchQueryCachingPolicy_CacheOnLargeSegments_DEFAULT_, new_OrgApacheLuceneSearchQueryCachingPolicy_CacheOnLargeSegments_initWithInt_withFloat_(10000, 0.03f));
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneSearchQueryCachingPolicy_CacheOnLargeSegments)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:withFloat:", "CacheOnLargeSegments", NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "DEFAULT_", NULL, 0x19, "Lorg.apache.lucene.search.QueryCachingPolicy$CacheOnLargeSegments;", &OrgApacheLuceneSearchQueryCachingPolicy_CacheOnLargeSegments_DEFAULT_, NULL, .constantValue.asLong = 0 },
    { "minIndexSize_", NULL, 0x12, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "minSizeRatio_", NULL, 0x12, "F", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchQueryCachingPolicy_CacheOnLargeSegments = { 2, "CacheOnLargeSegments", "org.apache.lucene.search", "QueryCachingPolicy", 0x9, 1, methods, 3, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchQueryCachingPolicy_CacheOnLargeSegments;
}

@end

void OrgApacheLuceneSearchQueryCachingPolicy_CacheOnLargeSegments_initWithInt_withFloat_(OrgApacheLuceneSearchQueryCachingPolicy_CacheOnLargeSegments *self, jint minIndexSize, jfloat minSizeRatio) {
  NSObject_init(self);
  if (minSizeRatio <= 0 || minSizeRatio >= 1) {
    @throw [new_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$F", @"minSizeRatio must be in ]0, 1[, got ", minSizeRatio)) autorelease];
  }
  self->minIndexSize_ = minIndexSize;
  self->minSizeRatio_ = minSizeRatio;
}

OrgApacheLuceneSearchQueryCachingPolicy_CacheOnLargeSegments *new_OrgApacheLuceneSearchQueryCachingPolicy_CacheOnLargeSegments_initWithInt_withFloat_(jint minIndexSize, jfloat minSizeRatio) {
  OrgApacheLuceneSearchQueryCachingPolicy_CacheOnLargeSegments *self = [OrgApacheLuceneSearchQueryCachingPolicy_CacheOnLargeSegments alloc];
  OrgApacheLuceneSearchQueryCachingPolicy_CacheOnLargeSegments_initWithInt_withFloat_(self, minIndexSize, minSizeRatio);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchQueryCachingPolicy_CacheOnLargeSegments)

@implementation OrgApacheLuceneSearchQueryCachingPolicy_$1

- (instancetype)init {
  OrgApacheLuceneSearchQueryCachingPolicy_$1_init(self);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchQueryCachingPolicy_$1 = { 2, "", "org.apache.lucene.search", "QueryCachingPolicy", 0x8008, 1, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchQueryCachingPolicy_$1;
}

@end

void OrgApacheLuceneSearchQueryCachingPolicy_$1_init(OrgApacheLuceneSearchQueryCachingPolicy_$1 *self) {
  NSObject_init(self);
}

OrgApacheLuceneSearchQueryCachingPolicy_$1 *new_OrgApacheLuceneSearchQueryCachingPolicy_$1_init() {
  OrgApacheLuceneSearchQueryCachingPolicy_$1 *self = [OrgApacheLuceneSearchQueryCachingPolicy_$1 alloc];
  OrgApacheLuceneSearchQueryCachingPolicy_$1_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchQueryCachingPolicy_$1)
