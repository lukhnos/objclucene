//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/NotDocIdSet.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "org/apache/lucene/search/DocIdSet.h"
#include "org/apache/lucene/search/DocIdSetIterator.h"
#include "org/apache/lucene/util/Bits.h"
#include "org/apache/lucene/util/NotDocIdSet.h"
#include "org/apache/lucene/util/RamUsageEstimator.h"

@interface OrgApacheLuceneUtilNotDocIdSet () {
 @public
  jint maxDoc_;
  OrgApacheLuceneSearchDocIdSet *in_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilNotDocIdSet, in_, OrgApacheLuceneSearchDocIdSet *)

static jlong OrgApacheLuceneUtilNotDocIdSet_BASE_RAM_BYTES_USED_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneUtilNotDocIdSet, BASE_RAM_BYTES_USED_, jlong)

@interface OrgApacheLuceneUtilNotDocIdSet_$1 : NSObject < OrgApacheLuceneUtilBits > {
 @public
  id<OrgApacheLuceneUtilBits> val$inBits_;
}

- (jboolean)getWithInt:(jint)index;

- (jint)length;

- (instancetype)initWithOrgApacheLuceneUtilBits:(id<OrgApacheLuceneUtilBits>)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilNotDocIdSet_$1)

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilNotDocIdSet_$1, val$inBits_, id<OrgApacheLuceneUtilBits>)

__attribute__((unused)) static void OrgApacheLuceneUtilNotDocIdSet_$1_initWithOrgApacheLuceneUtilBits_(OrgApacheLuceneUtilNotDocIdSet_$1 *self, id<OrgApacheLuceneUtilBits> capture$0);

__attribute__((unused)) static OrgApacheLuceneUtilNotDocIdSet_$1 *new_OrgApacheLuceneUtilNotDocIdSet_$1_initWithOrgApacheLuceneUtilBits_(id<OrgApacheLuceneUtilBits> capture$0) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilNotDocIdSet_$1)

@interface OrgApacheLuceneUtilNotDocIdSet_$2 : OrgApacheLuceneSearchDocIdSetIterator {
 @public
  OrgApacheLuceneUtilNotDocIdSet *this$0_;
  jint doc_;
  jint nextSkippedDoc_;
  OrgApacheLuceneSearchDocIdSetIterator *val$inIterator_;
}

- (jint)nextDoc;

- (jint)advanceWithInt:(jint)target;

- (jint)docID;

- (jlong)cost;

- (instancetype)initWithOrgApacheLuceneUtilNotDocIdSet:(OrgApacheLuceneUtilNotDocIdSet *)outer$
             withOrgApacheLuceneSearchDocIdSetIterator:(OrgApacheLuceneSearchDocIdSetIterator *)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilNotDocIdSet_$2)

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilNotDocIdSet_$2, this$0_, OrgApacheLuceneUtilNotDocIdSet *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilNotDocIdSet_$2, val$inIterator_, OrgApacheLuceneSearchDocIdSetIterator *)

__attribute__((unused)) static void OrgApacheLuceneUtilNotDocIdSet_$2_initWithOrgApacheLuceneUtilNotDocIdSet_withOrgApacheLuceneSearchDocIdSetIterator_(OrgApacheLuceneUtilNotDocIdSet_$2 *self, OrgApacheLuceneUtilNotDocIdSet *outer$, OrgApacheLuceneSearchDocIdSetIterator *capture$0);

__attribute__((unused)) static OrgApacheLuceneUtilNotDocIdSet_$2 *new_OrgApacheLuceneUtilNotDocIdSet_$2_initWithOrgApacheLuceneUtilNotDocIdSet_withOrgApacheLuceneSearchDocIdSetIterator_(OrgApacheLuceneUtilNotDocIdSet *outer$, OrgApacheLuceneSearchDocIdSetIterator *capture$0) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilNotDocIdSet_$2)

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneUtilNotDocIdSet)

@implementation OrgApacheLuceneUtilNotDocIdSet

- (instancetype)initWithInt:(jint)maxDoc
withOrgApacheLuceneSearchDocIdSet:(OrgApacheLuceneSearchDocIdSet *)inArg {
  OrgApacheLuceneUtilNotDocIdSet_initWithInt_withOrgApacheLuceneSearchDocIdSet_(self, maxDoc, inArg);
  return self;
}

- (jboolean)isCacheable {
  return [((OrgApacheLuceneSearchDocIdSet *) nil_chk(in_)) isCacheable];
}

- (id<OrgApacheLuceneUtilBits>)bits {
  id<OrgApacheLuceneUtilBits> inBits = [((OrgApacheLuceneSearchDocIdSet *) nil_chk(in_)) bits];
  if (inBits == nil) {
    return nil;
  }
  return [new_OrgApacheLuceneUtilNotDocIdSet_$1_initWithOrgApacheLuceneUtilBits_(inBits) autorelease];
}

- (jlong)ramBytesUsed {
  return OrgApacheLuceneUtilNotDocIdSet_BASE_RAM_BYTES_USED_ + [((OrgApacheLuceneSearchDocIdSet *) nil_chk(in_)) ramBytesUsed];
}

- (OrgApacheLuceneSearchDocIdSetIterator *)iterator {
  OrgApacheLuceneSearchDocIdSetIterator *inIterator = [((OrgApacheLuceneSearchDocIdSet *) nil_chk(in_)) iterator];
  return [new_OrgApacheLuceneUtilNotDocIdSet_$2_initWithOrgApacheLuceneUtilNotDocIdSet_withOrgApacheLuceneSearchDocIdSetIterator_(self, inIterator) autorelease];
}

- (void)dealloc {
  RELEASE_(in_);
  [super dealloc];
}

+ (void)initialize {
  if (self == [OrgApacheLuceneUtilNotDocIdSet class]) {
    OrgApacheLuceneUtilNotDocIdSet_BASE_RAM_BYTES_USED_ = OrgApacheLuceneUtilRamUsageEstimator_shallowSizeOfInstanceWithIOSClass_(OrgApacheLuceneUtilNotDocIdSet_class_());
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneUtilNotDocIdSet)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:withOrgApacheLuceneSearchDocIdSet:", "NotDocIdSet", NULL, 0x1, NULL, NULL },
    { "isCacheable", NULL, "Z", 0x1, NULL, NULL },
    { "bits", NULL, "Lorg.apache.lucene.util.Bits;", 0x1, "Ljava.io.IOException;", NULL },
    { "ramBytesUsed", NULL, "J", 0x1, NULL, NULL },
    { "iterator", NULL, "Lorg.apache.lucene.search.DocIdSetIterator;", 0x1, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "BASE_RAM_BYTES_USED_", NULL, 0x1a, "J", &OrgApacheLuceneUtilNotDocIdSet_BASE_RAM_BYTES_USED_, NULL, .constantValue.asLong = 0 },
    { "maxDoc_", NULL, 0x12, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "in_", NULL, 0x12, "Lorg.apache.lucene.search.DocIdSet;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilNotDocIdSet = { 2, "NotDocIdSet", "org.apache.lucene.util", NULL, 0x11, 5, methods, 3, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneUtilNotDocIdSet;
}

@end

void OrgApacheLuceneUtilNotDocIdSet_initWithInt_withOrgApacheLuceneSearchDocIdSet_(OrgApacheLuceneUtilNotDocIdSet *self, jint maxDoc, OrgApacheLuceneSearchDocIdSet *inArg) {
  OrgApacheLuceneSearchDocIdSet_init(self);
  self->maxDoc_ = maxDoc;
  JreStrongAssign(&self->in_, inArg);
}

OrgApacheLuceneUtilNotDocIdSet *new_OrgApacheLuceneUtilNotDocIdSet_initWithInt_withOrgApacheLuceneSearchDocIdSet_(jint maxDoc, OrgApacheLuceneSearchDocIdSet *inArg) {
  OrgApacheLuceneUtilNotDocIdSet *self = [OrgApacheLuceneUtilNotDocIdSet alloc];
  OrgApacheLuceneUtilNotDocIdSet_initWithInt_withOrgApacheLuceneSearchDocIdSet_(self, maxDoc, inArg);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilNotDocIdSet)

@implementation OrgApacheLuceneUtilNotDocIdSet_$1

- (jboolean)getWithInt:(jint)index {
  return ![((id<OrgApacheLuceneUtilBits>) nil_chk(val$inBits_)) getWithInt:index];
}

- (jint)length {
  return [((id<OrgApacheLuceneUtilBits>) nil_chk(val$inBits_)) length];
}

- (instancetype)initWithOrgApacheLuceneUtilBits:(id<OrgApacheLuceneUtilBits>)capture$0 {
  OrgApacheLuceneUtilNotDocIdSet_$1_initWithOrgApacheLuceneUtilBits_(self, capture$0);
  return self;
}

- (void)dealloc {
  RELEASE_(val$inBits_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getWithInt:", "get", "Z", 0x1, NULL, NULL },
    { "length", NULL, "I", 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneUtilBits:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "val$inBits_", NULL, 0x1012, "Lorg.apache.lucene.util.Bits;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "OrgApacheLuceneUtilNotDocIdSet", "bits" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilNotDocIdSet_$1 = { 2, "", "org.apache.lucene.util", "NotDocIdSet", 0x8008, 3, methods, 1, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_OrgApacheLuceneUtilNotDocIdSet_$1;
}

@end

void OrgApacheLuceneUtilNotDocIdSet_$1_initWithOrgApacheLuceneUtilBits_(OrgApacheLuceneUtilNotDocIdSet_$1 *self, id<OrgApacheLuceneUtilBits> capture$0) {
  JreStrongAssign(&self->val$inBits_, capture$0);
  NSObject_init(self);
}

OrgApacheLuceneUtilNotDocIdSet_$1 *new_OrgApacheLuceneUtilNotDocIdSet_$1_initWithOrgApacheLuceneUtilBits_(id<OrgApacheLuceneUtilBits> capture$0) {
  OrgApacheLuceneUtilNotDocIdSet_$1 *self = [OrgApacheLuceneUtilNotDocIdSet_$1 alloc];
  OrgApacheLuceneUtilNotDocIdSet_$1_initWithOrgApacheLuceneUtilBits_(self, capture$0);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilNotDocIdSet_$1)

@implementation OrgApacheLuceneUtilNotDocIdSet_$2

- (jint)nextDoc {
  return [self advanceWithInt:doc_ + 1];
}

- (jint)advanceWithInt:(jint)target {
  doc_ = target;
  if (doc_ > nextSkippedDoc_) {
    nextSkippedDoc_ = [((OrgApacheLuceneSearchDocIdSetIterator *) nil_chk(val$inIterator_)) advanceWithInt:doc_];
  }
  while (YES) {
    if (doc_ >= this$0_->maxDoc_) {
      return doc_ = OrgApacheLuceneSearchDocIdSetIterator_NO_MORE_DOCS;
    }
    JreAssert((doc_ <= nextSkippedDoc_), (@"org/apache/lucene/util/NotDocIdSet.java:98 condition failed: assert doc <= nextSkippedDoc;"));
    if (doc_ != nextSkippedDoc_) {
      return doc_;
    }
    doc_ += 1;
    nextSkippedDoc_ = [((OrgApacheLuceneSearchDocIdSetIterator *) nil_chk(val$inIterator_)) nextDoc];
  }
}

- (jint)docID {
  return doc_;
}

- (jlong)cost {
  return this$0_->maxDoc_;
}

- (instancetype)initWithOrgApacheLuceneUtilNotDocIdSet:(OrgApacheLuceneUtilNotDocIdSet *)outer$
             withOrgApacheLuceneSearchDocIdSetIterator:(OrgApacheLuceneSearchDocIdSetIterator *)capture$0 {
  OrgApacheLuceneUtilNotDocIdSet_$2_initWithOrgApacheLuceneUtilNotDocIdSet_withOrgApacheLuceneSearchDocIdSetIterator_(self, outer$, capture$0);
  return self;
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(val$inIterator_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "nextDoc", NULL, "I", 0x1, "Ljava.io.IOException;", NULL },
    { "advanceWithInt:", "advance", "I", 0x1, "Ljava.io.IOException;", NULL },
    { "docID", NULL, "I", 0x1, NULL, NULL },
    { "cost", NULL, "J", 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneUtilNotDocIdSet:withOrgApacheLuceneSearchDocIdSetIterator:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", NULL, 0x1012, "Lorg.apache.lucene.util.NotDocIdSet;", NULL, NULL, .constantValue.asLong = 0 },
    { "doc_", NULL, 0x0, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "nextSkippedDoc_", NULL, 0x0, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "val$inIterator_", NULL, 0x1012, "Lorg.apache.lucene.search.DocIdSetIterator;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "OrgApacheLuceneUtilNotDocIdSet", "iterator" };
  static const J2ObjcClassInfo _OrgApacheLuceneUtilNotDocIdSet_$2 = { 2, "", "org.apache.lucene.util", "NotDocIdSet", 0x8008, 5, methods, 4, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_OrgApacheLuceneUtilNotDocIdSet_$2;
}

@end

void OrgApacheLuceneUtilNotDocIdSet_$2_initWithOrgApacheLuceneUtilNotDocIdSet_withOrgApacheLuceneSearchDocIdSetIterator_(OrgApacheLuceneUtilNotDocIdSet_$2 *self, OrgApacheLuceneUtilNotDocIdSet *outer$, OrgApacheLuceneSearchDocIdSetIterator *capture$0) {
  JreStrongAssign(&self->this$0_, outer$);
  JreStrongAssign(&self->val$inIterator_, capture$0);
  OrgApacheLuceneSearchDocIdSetIterator_init(self);
  self->doc_ = -1;
  self->nextSkippedDoc_ = -1;
}

OrgApacheLuceneUtilNotDocIdSet_$2 *new_OrgApacheLuceneUtilNotDocIdSet_$2_initWithOrgApacheLuceneUtilNotDocIdSet_withOrgApacheLuceneSearchDocIdSetIterator_(OrgApacheLuceneUtilNotDocIdSet *outer$, OrgApacheLuceneSearchDocIdSetIterator *capture$0) {
  OrgApacheLuceneUtilNotDocIdSet_$2 *self = [OrgApacheLuceneUtilNotDocIdSet_$2 alloc];
  OrgApacheLuceneUtilNotDocIdSet_$2_initWithOrgApacheLuceneUtilNotDocIdSet_withOrgApacheLuceneSearchDocIdSetIterator_(self, outer$, capture$0);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneUtilNotDocIdSet_$2)
