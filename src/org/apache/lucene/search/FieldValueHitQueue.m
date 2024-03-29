//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/FieldValueHitQueue.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "org/apache/lucene/index/LeafReaderContext.h"
#include "org/apache/lucene/search/FieldComparator.h"
#include "org/apache/lucene/search/FieldDoc.h"
#include "org/apache/lucene/search/FieldValueHitQueue.h"
#include "org/apache/lucene/search/LeafFieldComparator.h"
#include "org/apache/lucene/search/ScoreDoc.h"
#include "org/apache/lucene/search/SortField.h"
#include "org/apache/lucene/util/PriorityQueue.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/search/FieldValueHitQueue must not be compiled with ARC (-fobjc-arc)"
#endif

#pragma clang diagnostic ignored "-Wincomplete-implementation"

@interface OrgApacheLuceneSearchFieldValueHitQueue ()

- (instancetype)initWithOrgApacheLuceneSearchSortFieldArray:(IOSObjectArray *)fields
                                                    withInt:(jint)size;

@end

__attribute__((unused)) static void OrgApacheLuceneSearchFieldValueHitQueue_initWithOrgApacheLuceneSearchSortFieldArray_withInt_(OrgApacheLuceneSearchFieldValueHitQueue *self, IOSObjectArray *fields, jint size);

/*!
 @brief An implementation of <code>FieldValueHitQueue</code> which is optimized in case
  there is just one comparator.
 */
@interface OrgApacheLuceneSearchFieldValueHitQueue_OneComparatorFieldValueHitQueue : OrgApacheLuceneSearchFieldValueHitQueue {
 @public
  jint oneReverseMul_;
  OrgApacheLuceneSearchFieldComparator *oneComparator_;
}

- (instancetype)initWithOrgApacheLuceneSearchSortFieldArray:(IOSObjectArray *)fields
                                                    withInt:(jint)size;

/*!
 @brief Returns whether <code>hitA</code> is less relevant than <code>hitB</code>.
 @param hitA Entry
 @param hitB Entry
 @return <code>true</code> if document <code>hitA</code> should be sorted after document <code>hitB</code>.
 */
- (jboolean)lessThanWithId:(OrgApacheLuceneSearchFieldValueHitQueue_Entry *)hitA
                    withId:(OrgApacheLuceneSearchFieldValueHitQueue_Entry *)hitB;

- (OrgApacheLuceneSearchFieldValueHitQueue_Entry *)pop;

- (OrgApacheLuceneSearchFieldValueHitQueue_Entry *)top;

- (OrgApacheLuceneSearchFieldValueHitQueue_Entry *)insertWithOverflowWithId:(OrgApacheLuceneSearchFieldValueHitQueue_Entry *)arg0;

- (OrgApacheLuceneSearchFieldValueHitQueue_Entry *)addWithId:(OrgApacheLuceneSearchFieldValueHitQueue_Entry *)arg0;

- (OrgApacheLuceneSearchFieldValueHitQueue_Entry *)getSentinelObject;

- (OrgApacheLuceneSearchFieldValueHitQueue_Entry *)updateTopWithId:(OrgApacheLuceneSearchFieldValueHitQueue_Entry *)arg0;

- (OrgApacheLuceneSearchFieldValueHitQueue_Entry *)updateTop;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchFieldValueHitQueue_OneComparatorFieldValueHitQueue)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchFieldValueHitQueue_OneComparatorFieldValueHitQueue, oneComparator_, OrgApacheLuceneSearchFieldComparator *)

__attribute__((unused)) static void OrgApacheLuceneSearchFieldValueHitQueue_OneComparatorFieldValueHitQueue_initWithOrgApacheLuceneSearchSortFieldArray_withInt_(OrgApacheLuceneSearchFieldValueHitQueue_OneComparatorFieldValueHitQueue *self, IOSObjectArray *fields, jint size);

__attribute__((unused)) static OrgApacheLuceneSearchFieldValueHitQueue_OneComparatorFieldValueHitQueue *new_OrgApacheLuceneSearchFieldValueHitQueue_OneComparatorFieldValueHitQueue_initWithOrgApacheLuceneSearchSortFieldArray_withInt_(IOSObjectArray *fields, jint size) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchFieldValueHitQueue_OneComparatorFieldValueHitQueue *create_OrgApacheLuceneSearchFieldValueHitQueue_OneComparatorFieldValueHitQueue_initWithOrgApacheLuceneSearchSortFieldArray_withInt_(IOSObjectArray *fields, jint size);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchFieldValueHitQueue_OneComparatorFieldValueHitQueue)

/*!
 @brief An implementation of <code>FieldValueHitQueue</code> which is optimized in case
  there is more than one comparator.
 */
@interface OrgApacheLuceneSearchFieldValueHitQueue_MultiComparatorsFieldValueHitQueue : OrgApacheLuceneSearchFieldValueHitQueue

- (instancetype)initWithOrgApacheLuceneSearchSortFieldArray:(IOSObjectArray *)fields
                                                    withInt:(jint)size;

- (jboolean)lessThanWithId:(OrgApacheLuceneSearchFieldValueHitQueue_Entry *)hitA
                    withId:(OrgApacheLuceneSearchFieldValueHitQueue_Entry *)hitB;

- (OrgApacheLuceneSearchFieldValueHitQueue_Entry *)pop;

- (OrgApacheLuceneSearchFieldValueHitQueue_Entry *)top;

- (OrgApacheLuceneSearchFieldValueHitQueue_Entry *)insertWithOverflowWithId:(OrgApacheLuceneSearchFieldValueHitQueue_Entry *)arg0;

- (OrgApacheLuceneSearchFieldValueHitQueue_Entry *)addWithId:(OrgApacheLuceneSearchFieldValueHitQueue_Entry *)arg0;

- (OrgApacheLuceneSearchFieldValueHitQueue_Entry *)getSentinelObject;

- (OrgApacheLuceneSearchFieldValueHitQueue_Entry *)updateTopWithId:(OrgApacheLuceneSearchFieldValueHitQueue_Entry *)arg0;

- (OrgApacheLuceneSearchFieldValueHitQueue_Entry *)updateTop;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchFieldValueHitQueue_MultiComparatorsFieldValueHitQueue)

__attribute__((unused)) static void OrgApacheLuceneSearchFieldValueHitQueue_MultiComparatorsFieldValueHitQueue_initWithOrgApacheLuceneSearchSortFieldArray_withInt_(OrgApacheLuceneSearchFieldValueHitQueue_MultiComparatorsFieldValueHitQueue *self, IOSObjectArray *fields, jint size);

__attribute__((unused)) static OrgApacheLuceneSearchFieldValueHitQueue_MultiComparatorsFieldValueHitQueue *new_OrgApacheLuceneSearchFieldValueHitQueue_MultiComparatorsFieldValueHitQueue_initWithOrgApacheLuceneSearchSortFieldArray_withInt_(IOSObjectArray *fields, jint size) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchFieldValueHitQueue_MultiComparatorsFieldValueHitQueue *create_OrgApacheLuceneSearchFieldValueHitQueue_MultiComparatorsFieldValueHitQueue_initWithOrgApacheLuceneSearchSortFieldArray_withInt_(IOSObjectArray *fields, jint size);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchFieldValueHitQueue_MultiComparatorsFieldValueHitQueue)

@implementation OrgApacheLuceneSearchFieldValueHitQueue

- (instancetype)initWithOrgApacheLuceneSearchSortFieldArray:(IOSObjectArray *)fields
                                                    withInt:(jint)size {
  OrgApacheLuceneSearchFieldValueHitQueue_initWithOrgApacheLuceneSearchSortFieldArray_withInt_(self, fields, size);
  return self;
}

+ (OrgApacheLuceneSearchFieldValueHitQueue *)createWithOrgApacheLuceneSearchSortFieldArray:(IOSObjectArray *)fields
                                                                                   withInt:(jint)size {
  return OrgApacheLuceneSearchFieldValueHitQueue_createWithOrgApacheLuceneSearchSortFieldArray_withInt_(fields, size);
}

- (IOSObjectArray *)getComparators {
  return comparators_;
}

- (IOSIntArray *)getReverseMul {
  return reverseMul_;
}

- (IOSObjectArray *)getComparatorsWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context {
  IOSObjectArray *comparators = [IOSObjectArray arrayWithLength:((IOSObjectArray *) nil_chk(self->comparators_))->size_ type:OrgApacheLuceneSearchLeafFieldComparator_class_()];
  for (jint i = 0; i < comparators->size_; ++i) {
    IOSObjectArray_Set(comparators, i, [((OrgApacheLuceneSearchFieldComparator *) nil_chk(IOSObjectArray_Get(self->comparators_, i))) getLeafComparatorWithOrgApacheLuceneIndexLeafReaderContext:context]);
  }
  return comparators;
}

- (jboolean)lessThanWithId:(OrgApacheLuceneSearchFieldValueHitQueue_Entry *)a
                    withId:(OrgApacheLuceneSearchFieldValueHitQueue_Entry *)b {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (OrgApacheLuceneSearchFieldDoc *)fillFieldsWithOrgApacheLuceneSearchFieldValueHitQueue_Entry:(OrgApacheLuceneSearchFieldValueHitQueue_Entry *)entry_ {
  jint n = ((IOSObjectArray *) nil_chk(comparators_))->size_;
  IOSObjectArray *fields = [IOSObjectArray arrayWithLength:n type:NSObject_class_()];
  for (jint i = 0; i < n; ++i) {
    IOSObjectArray_Set(fields, i, [((OrgApacheLuceneSearchFieldComparator *) nil_chk(IOSObjectArray_Get(comparators_, i))) valueWithInt:((OrgApacheLuceneSearchFieldValueHitQueue_Entry *) nil_chk(entry_))->slot_]);
  }
  return create_OrgApacheLuceneSearchFieldDoc_initWithInt_withFloat_withNSObjectArray_(((OrgApacheLuceneSearchFieldValueHitQueue_Entry *) nil_chk(entry_))->doc_, entry_->score_, fields);
}

- (IOSObjectArray *)getFields {
  return fields_;
}

- (void)dealloc {
  RELEASE_(fields_);
  RELEASE_(comparators_);
  RELEASE_(reverseMul_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, 0, 1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchFieldValueHitQueue;", 0x9, 2, 0, 1, 3, -1, -1 },
    { NULL, "[LOrgApacheLuceneSearchFieldComparator;", 0x1, -1, -1, -1, 4, -1, -1 },
    { NULL, "[I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "[LOrgApacheLuceneSearchLeafFieldComparator;", 0x1, 5, 6, 1, -1, -1, -1 },
    { NULL, "Z", 0x404, 7, 8, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchFieldDoc;", 0x0, 9, 10, -1, -1, -1, -1 },
    { NULL, "[LOrgApacheLuceneSearchSortField;", 0x0, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneSearchSortFieldArray:withInt:);
  methods[1].selector = @selector(createWithOrgApacheLuceneSearchSortFieldArray:withInt:);
  methods[2].selector = @selector(getComparators);
  methods[3].selector = @selector(getReverseMul);
  methods[4].selector = @selector(getComparatorsWithOrgApacheLuceneIndexLeafReaderContext:);
  methods[5].selector = @selector(lessThanWithId:withId:);
  methods[6].selector = @selector(fillFieldsWithOrgApacheLuceneSearchFieldValueHitQueue_Entry:);
  methods[7].selector = @selector(getFields);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "fields_", "[LOrgApacheLuceneSearchSortField;", .constantValue.asLong = 0, 0x14, -1, -1, -1, -1 },
    { "comparators_", "[LOrgApacheLuceneSearchFieldComparator;", .constantValue.asLong = 0, 0x14, -1, -1, 11, -1 },
    { "reverseMul_", "[I", .constantValue.asLong = 0, 0x14, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "[LOrgApacheLuceneSearchSortField;I", "LJavaIoIOException;", "create", "<T:Lorg/apache/lucene/search/FieldValueHitQueue$Entry;>([Lorg/apache/lucene/search/SortField;I)Lorg/apache/lucene/search/FieldValueHitQueue<TT;>;", "()[Lorg/apache/lucene/search/FieldComparator<*>;", "getComparators", "LOrgApacheLuceneIndexLeafReaderContext;", "lessThan", "LOrgApacheLuceneSearchFieldValueHitQueue_Entry;LOrgApacheLuceneSearchFieldValueHitQueue_Entry;", "fillFields", "LOrgApacheLuceneSearchFieldValueHitQueue_Entry;", "[Lorg/apache/lucene/search/FieldComparator<*>;", "LOrgApacheLuceneSearchFieldValueHitQueue_Entry;LOrgApacheLuceneSearchFieldValueHitQueue_OneComparatorFieldValueHitQueue;LOrgApacheLuceneSearchFieldValueHitQueue_MultiComparatorsFieldValueHitQueue;", "<T:Lorg/apache/lucene/search/FieldValueHitQueue$Entry;>Lorg/apache/lucene/util/PriorityQueue<TT;>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchFieldValueHitQueue = { "FieldValueHitQueue", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0x401, 8, 3, -1, 12, -1, 13, -1 };
  return &_OrgApacheLuceneSearchFieldValueHitQueue;
}

@end

void OrgApacheLuceneSearchFieldValueHitQueue_initWithOrgApacheLuceneSearchSortFieldArray_withInt_(OrgApacheLuceneSearchFieldValueHitQueue *self, IOSObjectArray *fields, jint size) {
  OrgApacheLuceneUtilPriorityQueue_initWithInt_(self, size);
  JreStrongAssign(&self->fields_, fields);
  jint numComparators = ((IOSObjectArray *) nil_chk(fields))->size_;
  JreStrongAssignAndConsume(&self->comparators_, [IOSObjectArray newArrayWithLength:numComparators type:OrgApacheLuceneSearchFieldComparator_class_()]);
  JreStrongAssignAndConsume(&self->reverseMul_, [IOSIntArray newArrayWithLength:numComparators]);
  for (jint i = 0; i < numComparators; ++i) {
    OrgApacheLuceneSearchSortField *field = IOSObjectArray_Get(fields, i);
    *IOSIntArray_GetRef(self->reverseMul_, i) = ((OrgApacheLuceneSearchSortField *) nil_chk(field))->reverse_ ? -1 : 1;
    IOSObjectArray_Set(self->comparators_, i, [field getComparatorWithInt:size withInt:i]);
  }
}

OrgApacheLuceneSearchFieldValueHitQueue *OrgApacheLuceneSearchFieldValueHitQueue_createWithOrgApacheLuceneSearchSortFieldArray_withInt_(IOSObjectArray *fields, jint size) {
  OrgApacheLuceneSearchFieldValueHitQueue_initialize();
  if (((IOSObjectArray *) nil_chk(fields))->size_ == 0) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"Sort must contain at least one field");
  }
  if (fields->size_ == 1) {
    return create_OrgApacheLuceneSearchFieldValueHitQueue_OneComparatorFieldValueHitQueue_initWithOrgApacheLuceneSearchSortFieldArray_withInt_(fields, size);
  }
  else {
    return create_OrgApacheLuceneSearchFieldValueHitQueue_MultiComparatorsFieldValueHitQueue_initWithOrgApacheLuceneSearchSortFieldArray_withInt_(fields, size);
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchFieldValueHitQueue)

@implementation OrgApacheLuceneSearchFieldValueHitQueue_Entry

- (instancetype)initWithInt:(jint)slot
                    withInt:(jint)doc
                  withFloat:(jfloat)score {
  OrgApacheLuceneSearchFieldValueHitQueue_Entry_initWithInt_withInt_withFloat_(self, slot, doc, score);
  return self;
}

- (NSString *)description {
  return JreStrcat("$IC$", @"slot:", slot_, ' ', [super description]);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithInt:withInt:withFloat:);
  methods[1].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "slot_", "I", .constantValue.asLong = 0, 0x1, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "IIF", "toString", "LOrgApacheLuceneSearchFieldValueHitQueue;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchFieldValueHitQueue_Entry = { "Entry", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0x9, 2, 1, 2, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchFieldValueHitQueue_Entry;
}

@end

void OrgApacheLuceneSearchFieldValueHitQueue_Entry_initWithInt_withInt_withFloat_(OrgApacheLuceneSearchFieldValueHitQueue_Entry *self, jint slot, jint doc, jfloat score) {
  OrgApacheLuceneSearchScoreDoc_initWithInt_withFloat_(self, doc, score);
  self->slot_ = slot;
}

OrgApacheLuceneSearchFieldValueHitQueue_Entry *new_OrgApacheLuceneSearchFieldValueHitQueue_Entry_initWithInt_withInt_withFloat_(jint slot, jint doc, jfloat score) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchFieldValueHitQueue_Entry, initWithInt_withInt_withFloat_, slot, doc, score)
}

OrgApacheLuceneSearchFieldValueHitQueue_Entry *create_OrgApacheLuceneSearchFieldValueHitQueue_Entry_initWithInt_withInt_withFloat_(jint slot, jint doc, jfloat score) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchFieldValueHitQueue_Entry, initWithInt_withInt_withFloat_, slot, doc, score)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchFieldValueHitQueue_Entry)

@implementation OrgApacheLuceneSearchFieldValueHitQueue_OneComparatorFieldValueHitQueue

- (instancetype)initWithOrgApacheLuceneSearchSortFieldArray:(IOSObjectArray *)fields
                                                    withInt:(jint)size {
  OrgApacheLuceneSearchFieldValueHitQueue_OneComparatorFieldValueHitQueue_initWithOrgApacheLuceneSearchSortFieldArray_withInt_(self, fields, size);
  return self;
}

- (jboolean)lessThanWithId:(OrgApacheLuceneSearchFieldValueHitQueue_Entry *)hitA
                    withId:(OrgApacheLuceneSearchFieldValueHitQueue_Entry *)hitB {
  JreAssert(!JreObjectEqualsEquals(hitA, hitB), @"org/apache/lucene/search/FieldValueHitQueue.java:79 condition failed: assert hitA != hitB;");
  JreAssert(((OrgApacheLuceneSearchFieldValueHitQueue_Entry *) nil_chk(hitA))->slot_ != ((OrgApacheLuceneSearchFieldValueHitQueue_Entry *) nil_chk(hitB))->slot_, @"org/apache/lucene/search/FieldValueHitQueue.java:80 condition failed: assert hitA.slot != hitB.slot;");
  jint c = oneReverseMul_ * [((OrgApacheLuceneSearchFieldComparator *) nil_chk(oneComparator_)) compareWithInt:hitA->slot_ withInt:hitB->slot_];
  if (c != 0) {
    return c > 0;
  }
  return hitA->doc_ > hitB->doc_;
}

- (void)dealloc {
  RELEASE_(oneComparator_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, 1, -1, -1, -1 },
    { NULL, "Z", 0x4, 2, 3, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneSearchSortFieldArray:withInt:);
  methods[1].selector = @selector(lessThanWithId:withId:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "oneReverseMul_", "I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "oneComparator_", "LOrgApacheLuceneSearchFieldComparator;", .constantValue.asLong = 0, 0x12, -1, -1, 4, -1 },
  };
  static const void *ptrTable[] = { "[LOrgApacheLuceneSearchSortField;I", "LJavaIoIOException;", "lessThan", "LOrgApacheLuceneSearchFieldValueHitQueue_Entry;LOrgApacheLuceneSearchFieldValueHitQueue_Entry;", "Lorg/apache/lucene/search/FieldComparator<*>;", "LOrgApacheLuceneSearchFieldValueHitQueue;", "<T:Lorg/apache/lucene/search/FieldValueHitQueue$Entry;>Lorg/apache/lucene/search/FieldValueHitQueue<TT;>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchFieldValueHitQueue_OneComparatorFieldValueHitQueue = { "OneComparatorFieldValueHitQueue", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0x1a, 2, 2, 5, -1, -1, 6, -1 };
  return &_OrgApacheLuceneSearchFieldValueHitQueue_OneComparatorFieldValueHitQueue;
}

@end

void OrgApacheLuceneSearchFieldValueHitQueue_OneComparatorFieldValueHitQueue_initWithOrgApacheLuceneSearchSortFieldArray_withInt_(OrgApacheLuceneSearchFieldValueHitQueue_OneComparatorFieldValueHitQueue *self, IOSObjectArray *fields, jint size) {
  OrgApacheLuceneSearchFieldValueHitQueue_initWithOrgApacheLuceneSearchSortFieldArray_withInt_(self, fields, size);
  JreAssert(((IOSObjectArray *) nil_chk(fields))->size_ == 1, @"org/apache/lucene/search/FieldValueHitQueue.java:65 condition failed: assert fields.length == 1;");
  JreStrongAssign(&self->oneComparator_, IOSObjectArray_Get(nil_chk(self->comparators_), 0));
  self->oneReverseMul_ = IOSIntArray_Get(nil_chk(self->reverseMul_), 0);
}

OrgApacheLuceneSearchFieldValueHitQueue_OneComparatorFieldValueHitQueue *new_OrgApacheLuceneSearchFieldValueHitQueue_OneComparatorFieldValueHitQueue_initWithOrgApacheLuceneSearchSortFieldArray_withInt_(IOSObjectArray *fields, jint size) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchFieldValueHitQueue_OneComparatorFieldValueHitQueue, initWithOrgApacheLuceneSearchSortFieldArray_withInt_, fields, size)
}

OrgApacheLuceneSearchFieldValueHitQueue_OneComparatorFieldValueHitQueue *create_OrgApacheLuceneSearchFieldValueHitQueue_OneComparatorFieldValueHitQueue_initWithOrgApacheLuceneSearchSortFieldArray_withInt_(IOSObjectArray *fields, jint size) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchFieldValueHitQueue_OneComparatorFieldValueHitQueue, initWithOrgApacheLuceneSearchSortFieldArray_withInt_, fields, size)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchFieldValueHitQueue_OneComparatorFieldValueHitQueue)

@implementation OrgApacheLuceneSearchFieldValueHitQueue_MultiComparatorsFieldValueHitQueue

- (instancetype)initWithOrgApacheLuceneSearchSortFieldArray:(IOSObjectArray *)fields
                                                    withInt:(jint)size {
  OrgApacheLuceneSearchFieldValueHitQueue_MultiComparatorsFieldValueHitQueue_initWithOrgApacheLuceneSearchSortFieldArray_withInt_(self, fields, size);
  return self;
}

- (jboolean)lessThanWithId:(OrgApacheLuceneSearchFieldValueHitQueue_Entry *)hitA
                    withId:(OrgApacheLuceneSearchFieldValueHitQueue_Entry *)hitB {
  JreAssert(!JreObjectEqualsEquals(hitA, hitB), @"org/apache/lucene/search/FieldValueHitQueue.java:107 condition failed: assert hitA != hitB;");
  JreAssert(((OrgApacheLuceneSearchFieldValueHitQueue_Entry *) nil_chk(hitA))->slot_ != ((OrgApacheLuceneSearchFieldValueHitQueue_Entry *) nil_chk(hitB))->slot_, @"org/apache/lucene/search/FieldValueHitQueue.java:108 condition failed: assert hitA.slot != hitB.slot;");
  jint numComparators = ((IOSObjectArray *) nil_chk(comparators_))->size_;
  for (jint i = 0; i < numComparators; ++i) {
    jint c = IOSIntArray_Get(nil_chk(reverseMul_), i) * [((OrgApacheLuceneSearchFieldComparator *) nil_chk(IOSObjectArray_Get(comparators_, i))) compareWithInt:hitA->slot_ withInt:hitB->slot_];
    if (c != 0) {
      return c > 0;
    }
  }
  return hitA->doc_ > hitB->doc_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, 1, -1, -1, -1 },
    { NULL, "Z", 0x4, 2, 3, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneSearchSortFieldArray:withInt:);
  methods[1].selector = @selector(lessThanWithId:withId:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "[LOrgApacheLuceneSearchSortField;I", "LJavaIoIOException;", "lessThan", "LOrgApacheLuceneSearchFieldValueHitQueue_Entry;LOrgApacheLuceneSearchFieldValueHitQueue_Entry;", "LOrgApacheLuceneSearchFieldValueHitQueue;", "<T:Lorg/apache/lucene/search/FieldValueHitQueue$Entry;>Lorg/apache/lucene/search/FieldValueHitQueue<TT;>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchFieldValueHitQueue_MultiComparatorsFieldValueHitQueue = { "MultiComparatorsFieldValueHitQueue", "org.apache.lucene.search", ptrTable, methods, NULL, 7, 0x1a, 2, 0, 4, -1, -1, 5, -1 };
  return &_OrgApacheLuceneSearchFieldValueHitQueue_MultiComparatorsFieldValueHitQueue;
}

@end

void OrgApacheLuceneSearchFieldValueHitQueue_MultiComparatorsFieldValueHitQueue_initWithOrgApacheLuceneSearchSortFieldArray_withInt_(OrgApacheLuceneSearchFieldValueHitQueue_MultiComparatorsFieldValueHitQueue *self, IOSObjectArray *fields, jint size) {
  OrgApacheLuceneSearchFieldValueHitQueue_initWithOrgApacheLuceneSearchSortFieldArray_withInt_(self, fields, size);
}

OrgApacheLuceneSearchFieldValueHitQueue_MultiComparatorsFieldValueHitQueue *new_OrgApacheLuceneSearchFieldValueHitQueue_MultiComparatorsFieldValueHitQueue_initWithOrgApacheLuceneSearchSortFieldArray_withInt_(IOSObjectArray *fields, jint size) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchFieldValueHitQueue_MultiComparatorsFieldValueHitQueue, initWithOrgApacheLuceneSearchSortFieldArray_withInt_, fields, size)
}

OrgApacheLuceneSearchFieldValueHitQueue_MultiComparatorsFieldValueHitQueue *create_OrgApacheLuceneSearchFieldValueHitQueue_MultiComparatorsFieldValueHitQueue_initWithOrgApacheLuceneSearchSortFieldArray_withInt_(IOSObjectArray *fields, jint size) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchFieldValueHitQueue_MultiComparatorsFieldValueHitQueue, initWithOrgApacheLuceneSearchSortFieldArray_withInt_, fields, size)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchFieldValueHitQueue_MultiComparatorsFieldValueHitQueue)
