//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/FilteredDocIdSet.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/util/Collection.h"
#include "org/apache/lucene/search/DocIdSet.h"
#include "org/apache/lucene/search/DocIdSetIterator.h"
#include "org/apache/lucene/search/FilteredDocIdSet.h"
#include "org/apache/lucene/search/FilteredDocIdSetIterator.h"
#include "org/apache/lucene/util/Bits.h"
#include "org/apache/lucene/util/RamUsageEstimator.h"

@interface OrgApacheLuceneSearchFilteredDocIdSet () {
 @public
  OrgApacheLuceneSearchDocIdSet *_innerSet_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchFilteredDocIdSet, _innerSet_, OrgApacheLuceneSearchDocIdSet *)

@interface OrgApacheLuceneSearchFilteredDocIdSet_$1 : NSObject < OrgApacheLuceneUtilBits > {
 @public
  OrgApacheLuceneSearchFilteredDocIdSet *this$0_;
  id<OrgApacheLuceneUtilBits> val$bits_;
}

- (jboolean)getWithInt:(jint)docid;

- (jint)length;

- (instancetype)initWithOrgApacheLuceneSearchFilteredDocIdSet:(OrgApacheLuceneSearchFilteredDocIdSet *)outer$
                                  withOrgApacheLuceneUtilBits:(id<OrgApacheLuceneUtilBits>)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchFilteredDocIdSet_$1)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchFilteredDocIdSet_$1, this$0_, OrgApacheLuceneSearchFilteredDocIdSet *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchFilteredDocIdSet_$1, val$bits_, id<OrgApacheLuceneUtilBits>)

__attribute__((unused)) static void OrgApacheLuceneSearchFilteredDocIdSet_$1_initWithOrgApacheLuceneSearchFilteredDocIdSet_withOrgApacheLuceneUtilBits_(OrgApacheLuceneSearchFilteredDocIdSet_$1 *self, OrgApacheLuceneSearchFilteredDocIdSet *outer$, id<OrgApacheLuceneUtilBits> capture$0);

__attribute__((unused)) static OrgApacheLuceneSearchFilteredDocIdSet_$1 *new_OrgApacheLuceneSearchFilteredDocIdSet_$1_initWithOrgApacheLuceneSearchFilteredDocIdSet_withOrgApacheLuceneUtilBits_(OrgApacheLuceneSearchFilteredDocIdSet *outer$, id<OrgApacheLuceneUtilBits> capture$0) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchFilteredDocIdSet_$1)

@interface OrgApacheLuceneSearchFilteredDocIdSet_$2 : OrgApacheLuceneSearchFilteredDocIdSetIterator {
 @public
  OrgApacheLuceneSearchFilteredDocIdSet *this$0_;
}

- (jboolean)matchWithInt:(jint)docid;

- (instancetype)initWithOrgApacheLuceneSearchFilteredDocIdSet:(OrgApacheLuceneSearchFilteredDocIdSet *)outer$
                    withOrgApacheLuceneSearchDocIdSetIterator:(OrgApacheLuceneSearchDocIdSetIterator *)arg$0;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchFilteredDocIdSet_$2)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchFilteredDocIdSet_$2, this$0_, OrgApacheLuceneSearchFilteredDocIdSet *)

__attribute__((unused)) static void OrgApacheLuceneSearchFilteredDocIdSet_$2_initWithOrgApacheLuceneSearchFilteredDocIdSet_withOrgApacheLuceneSearchDocIdSetIterator_(OrgApacheLuceneSearchFilteredDocIdSet_$2 *self, OrgApacheLuceneSearchFilteredDocIdSet *outer$, OrgApacheLuceneSearchDocIdSetIterator *arg$0);

__attribute__((unused)) static OrgApacheLuceneSearchFilteredDocIdSet_$2 *new_OrgApacheLuceneSearchFilteredDocIdSet_$2_initWithOrgApacheLuceneSearchFilteredDocIdSet_withOrgApacheLuceneSearchDocIdSetIterator_(OrgApacheLuceneSearchFilteredDocIdSet *outer$, OrgApacheLuceneSearchDocIdSetIterator *arg$0) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchFilteredDocIdSet_$2)

@implementation OrgApacheLuceneSearchFilteredDocIdSet

- (instancetype)initWithOrgApacheLuceneSearchDocIdSet:(OrgApacheLuceneSearchDocIdSet *)innerSet {
  OrgApacheLuceneSearchFilteredDocIdSet_initWithOrgApacheLuceneSearchDocIdSet_(self, innerSet);
  return self;
}

- (OrgApacheLuceneSearchDocIdSet *)getDelegate {
  return _innerSet_;
}

- (jboolean)isCacheable {
  return [((OrgApacheLuceneSearchDocIdSet *) nil_chk(_innerSet_)) isCacheable];
}

- (jlong)ramBytesUsed {
  return JreLoadStatic(OrgApacheLuceneUtilRamUsageEstimator, NUM_BYTES_OBJECT_REF_) + [((OrgApacheLuceneSearchDocIdSet *) nil_chk(_innerSet_)) ramBytesUsed];
}

- (id<JavaUtilCollection>)getChildResources {
  return [((OrgApacheLuceneSearchDocIdSet *) nil_chk(_innerSet_)) getChildResources];
}

- (id<OrgApacheLuceneUtilBits>)bits {
  id<OrgApacheLuceneUtilBits> bits = [((OrgApacheLuceneSearchDocIdSet *) nil_chk(_innerSet_)) bits];
  return (bits == nil) ? nil : [new_OrgApacheLuceneSearchFilteredDocIdSet_$1_initWithOrgApacheLuceneSearchFilteredDocIdSet_withOrgApacheLuceneUtilBits_(self, bits) autorelease];
}

- (jboolean)matchWithInt:(jint)docid {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (OrgApacheLuceneSearchDocIdSetIterator *)iterator {
  OrgApacheLuceneSearchDocIdSetIterator *iterator = [((OrgApacheLuceneSearchDocIdSet *) nil_chk(_innerSet_)) iterator];
  if (iterator == nil) {
    return nil;
  }
  return [new_OrgApacheLuceneSearchFilteredDocIdSet_$2_initWithOrgApacheLuceneSearchFilteredDocIdSet_withOrgApacheLuceneSearchDocIdSetIterator_(self, iterator) autorelease];
}

- (void)dealloc {
  RELEASE_(_innerSet_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneSearchDocIdSet:", "FilteredDocIdSet", NULL, 0x1, NULL, NULL },
    { "getDelegate", NULL, "Lorg.apache.lucene.search.DocIdSet;", 0x1, NULL, NULL },
    { "isCacheable", NULL, "Z", 0x1, NULL, NULL },
    { "ramBytesUsed", NULL, "J", 0x1, NULL, NULL },
    { "getChildResources", NULL, "Ljava.util.Collection;", 0x1, NULL, NULL },
    { "bits", NULL, "Lorg.apache.lucene.util.Bits;", 0x1, "Ljava.io.IOException;", NULL },
    { "matchWithInt:", "match", "Z", 0x404, NULL, NULL },
    { "iterator", NULL, "Lorg.apache.lucene.search.DocIdSetIterator;", 0x1, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "_innerSet_", NULL, 0x12, "Lorg.apache.lucene.search.DocIdSet;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchFilteredDocIdSet = { 2, "FilteredDocIdSet", "org.apache.lucene.search", NULL, 0x401, 8, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchFilteredDocIdSet;
}

@end

void OrgApacheLuceneSearchFilteredDocIdSet_initWithOrgApacheLuceneSearchDocIdSet_(OrgApacheLuceneSearchFilteredDocIdSet *self, OrgApacheLuceneSearchDocIdSet *innerSet) {
  OrgApacheLuceneSearchDocIdSet_init(self);
  JreStrongAssign(&self->_innerSet_, innerSet);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchFilteredDocIdSet)

@implementation OrgApacheLuceneSearchFilteredDocIdSet_$1

- (jboolean)getWithInt:(jint)docid {
  return [((id<OrgApacheLuceneUtilBits>) nil_chk(val$bits_)) getWithInt:docid] && [this$0_ matchWithInt:docid];
}

- (jint)length {
  return [((id<OrgApacheLuceneUtilBits>) nil_chk(val$bits_)) length];
}

- (instancetype)initWithOrgApacheLuceneSearchFilteredDocIdSet:(OrgApacheLuceneSearchFilteredDocIdSet *)outer$
                                  withOrgApacheLuceneUtilBits:(id<OrgApacheLuceneUtilBits>)capture$0 {
  OrgApacheLuceneSearchFilteredDocIdSet_$1_initWithOrgApacheLuceneSearchFilteredDocIdSet_withOrgApacheLuceneUtilBits_(self, outer$, capture$0);
  return self;
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(val$bits_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getWithInt:", "get", "Z", 0x1, NULL, NULL },
    { "length", NULL, "I", 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneSearchFilteredDocIdSet:withOrgApacheLuceneUtilBits:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lorg.apache.lucene.search.FilteredDocIdSet;", NULL, NULL, .constantValue.asLong = 0 },
    { "val$bits_", NULL, 0x1012, "Lorg.apache.lucene.util.Bits;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "OrgApacheLuceneSearchFilteredDocIdSet", "bits" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchFilteredDocIdSet_$1 = { 2, "", "org.apache.lucene.search", "FilteredDocIdSet", 0x8008, 3, methods, 2, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_OrgApacheLuceneSearchFilteredDocIdSet_$1;
}

@end

void OrgApacheLuceneSearchFilteredDocIdSet_$1_initWithOrgApacheLuceneSearchFilteredDocIdSet_withOrgApacheLuceneUtilBits_(OrgApacheLuceneSearchFilteredDocIdSet_$1 *self, OrgApacheLuceneSearchFilteredDocIdSet *outer$, id<OrgApacheLuceneUtilBits> capture$0) {
  JreStrongAssign(&self->this$0_, outer$);
  JreStrongAssign(&self->val$bits_, capture$0);
  NSObject_init(self);
}

OrgApacheLuceneSearchFilteredDocIdSet_$1 *new_OrgApacheLuceneSearchFilteredDocIdSet_$1_initWithOrgApacheLuceneSearchFilteredDocIdSet_withOrgApacheLuceneUtilBits_(OrgApacheLuceneSearchFilteredDocIdSet *outer$, id<OrgApacheLuceneUtilBits> capture$0) {
  OrgApacheLuceneSearchFilteredDocIdSet_$1 *self = [OrgApacheLuceneSearchFilteredDocIdSet_$1 alloc];
  OrgApacheLuceneSearchFilteredDocIdSet_$1_initWithOrgApacheLuceneSearchFilteredDocIdSet_withOrgApacheLuceneUtilBits_(self, outer$, capture$0);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchFilteredDocIdSet_$1)

@implementation OrgApacheLuceneSearchFilteredDocIdSet_$2

- (jboolean)matchWithInt:(jint)docid {
  return [this$0_ matchWithInt:docid];
}

- (instancetype)initWithOrgApacheLuceneSearchFilteredDocIdSet:(OrgApacheLuceneSearchFilteredDocIdSet *)outer$
                    withOrgApacheLuceneSearchDocIdSetIterator:(OrgApacheLuceneSearchDocIdSetIterator *)arg$0 {
  OrgApacheLuceneSearchFilteredDocIdSet_$2_initWithOrgApacheLuceneSearchFilteredDocIdSet_withOrgApacheLuceneSearchDocIdSetIterator_(self, outer$, arg$0);
  return self;
}

- (void)dealloc {
  RELEASE_(this$0_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "matchWithInt:", "match", "Z", 0x4, NULL, NULL },
    { "initWithOrgApacheLuceneSearchFilteredDocIdSet:withOrgApacheLuceneSearchDocIdSetIterator:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lorg.apache.lucene.search.FilteredDocIdSet;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "OrgApacheLuceneSearchFilteredDocIdSet", "iterator" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchFilteredDocIdSet_$2 = { 2, "", "org.apache.lucene.search", "FilteredDocIdSet", 0x8008, 2, methods, 1, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_OrgApacheLuceneSearchFilteredDocIdSet_$2;
}

@end

void OrgApacheLuceneSearchFilteredDocIdSet_$2_initWithOrgApacheLuceneSearchFilteredDocIdSet_withOrgApacheLuceneSearchDocIdSetIterator_(OrgApacheLuceneSearchFilteredDocIdSet_$2 *self, OrgApacheLuceneSearchFilteredDocIdSet *outer$, OrgApacheLuceneSearchDocIdSetIterator *arg$0) {
  JreStrongAssign(&self->this$0_, outer$);
  OrgApacheLuceneSearchFilteredDocIdSetIterator_initWithOrgApacheLuceneSearchDocIdSetIterator_(self, arg$0);
}

OrgApacheLuceneSearchFilteredDocIdSet_$2 *new_OrgApacheLuceneSearchFilteredDocIdSet_$2_initWithOrgApacheLuceneSearchFilteredDocIdSet_withOrgApacheLuceneSearchDocIdSetIterator_(OrgApacheLuceneSearchFilteredDocIdSet *outer$, OrgApacheLuceneSearchDocIdSetIterator *arg$0) {
  OrgApacheLuceneSearchFilteredDocIdSet_$2 *self = [OrgApacheLuceneSearchFilteredDocIdSet_$2 alloc];
  OrgApacheLuceneSearchFilteredDocIdSet_$2_initWithOrgApacheLuceneSearchFilteredDocIdSet_withOrgApacheLuceneSearchDocIdSetIterator_(self, outer$, arg$0);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchFilteredDocIdSet_$2)
