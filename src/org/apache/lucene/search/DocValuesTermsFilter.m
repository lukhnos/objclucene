//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./sandbox/src/java/org/apache/lucene/search/DocValuesTermsFilter.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Deprecated.h"
#include "java/lang/StringBuilder.h"
#include "java/lang/annotation/Annotation.h"
#include "java/util/Arrays.h"
#include "org/apache/lucene/index/DocValues.h"
#include "org/apache/lucene/index/LeafReader.h"
#include "org/apache/lucene/index/LeafReaderContext.h"
#include "org/apache/lucene/index/SortedDocValues.h"
#include "org/apache/lucene/search/DocIdSet.h"
#include "org/apache/lucene/search/DocValuesDocIdSet.h"
#include "org/apache/lucene/search/DocValuesTermsFilter.h"
#include "org/apache/lucene/search/Filter.h"
#include "org/apache/lucene/util/Bits.h"
#include "org/apache/lucene/util/BytesRef.h"
#include "org/apache/lucene/util/FixedBitSet.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/search/DocValuesTermsFilter must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneSearchDocValuesTermsFilter () {
 @public
  NSString *field_;
  IOSObjectArray *terms_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchDocValuesTermsFilter, field_, NSString *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchDocValuesTermsFilter, terms_, IOSObjectArray *)

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneSearchDocValuesTermsFilter__Annotations$0(void);

@interface OrgApacheLuceneSearchDocValuesTermsFilter_1 : OrgApacheLuceneSearchDocValuesDocIdSet {
 @public
  OrgApacheLuceneIndexSortedDocValues *val$fcsi_;
  OrgApacheLuceneUtilFixedBitSet *val$bits_;
}

- (instancetype)initWithOrgApacheLuceneIndexSortedDocValues:(OrgApacheLuceneIndexSortedDocValues *)capture$0
                         withOrgApacheLuceneUtilFixedBitSet:(OrgApacheLuceneUtilFixedBitSet *)capture$1
                                                    withInt:(jint)maxDoc
                                withOrgApacheLuceneUtilBits:(id<OrgApacheLuceneUtilBits>)acceptDocs;

- (jboolean)matchDocWithInt:(jint)doc;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchDocValuesTermsFilter_1)

__attribute__((unused)) static void OrgApacheLuceneSearchDocValuesTermsFilter_1_initWithOrgApacheLuceneIndexSortedDocValues_withOrgApacheLuceneUtilFixedBitSet_withInt_withOrgApacheLuceneUtilBits_(OrgApacheLuceneSearchDocValuesTermsFilter_1 *self, OrgApacheLuceneIndexSortedDocValues *capture$0, OrgApacheLuceneUtilFixedBitSet *capture$1, jint maxDoc, id<OrgApacheLuceneUtilBits> acceptDocs);

__attribute__((unused)) static OrgApacheLuceneSearchDocValuesTermsFilter_1 *new_OrgApacheLuceneSearchDocValuesTermsFilter_1_initWithOrgApacheLuceneIndexSortedDocValues_withOrgApacheLuceneUtilFixedBitSet_withInt_withOrgApacheLuceneUtilBits_(OrgApacheLuceneIndexSortedDocValues *capture$0, OrgApacheLuceneUtilFixedBitSet *capture$1, jint maxDoc, id<OrgApacheLuceneUtilBits> acceptDocs) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneSearchDocValuesTermsFilter_1 *create_OrgApacheLuceneSearchDocValuesTermsFilter_1_initWithOrgApacheLuceneIndexSortedDocValues_withOrgApacheLuceneUtilFixedBitSet_withInt_withOrgApacheLuceneUtilBits_(OrgApacheLuceneIndexSortedDocValues *capture$0, OrgApacheLuceneUtilFixedBitSet *capture$1, jint maxDoc, id<OrgApacheLuceneUtilBits> acceptDocs);

@implementation OrgApacheLuceneSearchDocValuesTermsFilter

- (instancetype)initWithNSString:(NSString *)field
withOrgApacheLuceneUtilBytesRefArray:(IOSObjectArray *)terms {
  OrgApacheLuceneSearchDocValuesTermsFilter_initWithNSString_withOrgApacheLuceneUtilBytesRefArray_(self, field, terms);
  return self;
}

- (instancetype)initWithNSString:(NSString *)field
               withNSStringArray:(IOSObjectArray *)terms {
  OrgApacheLuceneSearchDocValuesTermsFilter_initWithNSString_withNSStringArray_(self, field, terms);
  return self;
}

- (OrgApacheLuceneSearchDocIdSet *)getDocIdSetWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context
                                                            withOrgApacheLuceneUtilBits:(id<OrgApacheLuceneUtilBits>)acceptDocs {
  OrgApacheLuceneIndexSortedDocValues *fcsi = OrgApacheLuceneIndexDocValues_getSortedWithOrgApacheLuceneIndexLeafReader_withNSString_([((OrgApacheLuceneIndexLeafReaderContext *) nil_chk(context)) reader], field_);
  OrgApacheLuceneUtilFixedBitSet *bits = create_OrgApacheLuceneUtilFixedBitSet_initWithInt_([((OrgApacheLuceneIndexSortedDocValues *) nil_chk(fcsi)) getValueCount]);
  for (jint i = 0; i < ((IOSObjectArray *) nil_chk(terms_))->size_; i++) {
    jint ord = [fcsi lookupTermWithOrgApacheLuceneUtilBytesRef:IOSObjectArray_Get(terms_, i)];
    if (ord >= 0) {
      [bits setWithInt:ord];
    }
  }
  return create_OrgApacheLuceneSearchDocValuesTermsFilter_1_initWithOrgApacheLuceneIndexSortedDocValues_withOrgApacheLuceneUtilFixedBitSet_withInt_withOrgApacheLuceneUtilBits_(fcsi, bits, [((OrgApacheLuceneIndexLeafReader *) nil_chk([context reader])) maxDoc], acceptDocs);
}

- (NSString *)toStringWithNSString:(NSString *)defaultField {
  JavaLangStringBuilder *sb = create_JavaLangStringBuilder_init();
  [((JavaLangStringBuilder *) nil_chk([sb appendWithNSString:field_])) appendWithNSString:@": ["];
  {
    IOSObjectArray *a__ = terms_;
    OrgApacheLuceneUtilBytesRef * const *b__ = ((IOSObjectArray *) nil_chk(a__))->buffer_;
    OrgApacheLuceneUtilBytesRef * const *e__ = b__ + a__->size_;
    while (b__ < e__) {
      OrgApacheLuceneUtilBytesRef *term = *b__++;
      [((JavaLangStringBuilder *) nil_chk([sb appendWithId:term])) appendWithNSString:@", "];
    }
  }
  if (((IOSObjectArray *) nil_chk(terms_))->size_ > 0) {
    [sb setLengthWithInt:[sb java_length] - 2];
  }
  return [((JavaLangStringBuilder *) nil_chk([sb appendWithChar:']'])) description];
}

- (jboolean)isEqual:(id)obj {
  if ([super isEqual:obj] == false) {
    return false;
  }
  OrgApacheLuceneSearchDocValuesTermsFilter *other = (OrgApacheLuceneSearchDocValuesTermsFilter *) cast_chk(obj, [OrgApacheLuceneSearchDocValuesTermsFilter class]);
  return [((NSString *) nil_chk(field_)) isEqual:((OrgApacheLuceneSearchDocValuesTermsFilter *) nil_chk(other))->field_] && JavaUtilArrays_equalsWithNSObjectArray_withNSObjectArray_(terms_, other->terms_);
}

- (NSUInteger)hash {
  jint h = ((jint) [super hash]);
  h = 31 * h + ((jint) [((NSString *) nil_chk(field_)) hash]);
  h = 31 * h + JavaUtilArrays_hashCodeWithNSObjectArray_(terms_);
  return h;
}

- (void)dealloc {
  RELEASE_(field_);
  RELEASE_(terms_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x81, -1, 0, -1, -1, -1, -1 },
    { NULL, NULL, 0x81, -1, 1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchDocIdSet;", 0x1, 2, 3, 4, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 5, 6, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 7, 8, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 9, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNSString:withOrgApacheLuceneUtilBytesRefArray:);
  methods[1].selector = @selector(initWithNSString:withNSStringArray:);
  methods[2].selector = @selector(getDocIdSetWithOrgApacheLuceneIndexLeafReaderContext:withOrgApacheLuceneUtilBits:);
  methods[3].selector = @selector(toStringWithNSString:);
  methods[4].selector = @selector(isEqual:);
  methods[5].selector = @selector(hash);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "field_", "LNSString;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "terms_", "[LOrgApacheLuceneUtilBytesRef;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LNSString;[LOrgApacheLuceneUtilBytesRef;", "LNSString;[LNSString;", "getDocIdSet", "LOrgApacheLuceneIndexLeafReaderContext;LOrgApacheLuceneUtilBits;", "LJavaIoIOException;", "toString", "LNSString;", "equals", "LNSObject;", "hashCode", (void *)&OrgApacheLuceneSearchDocValuesTermsFilter__Annotations$0 };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchDocValuesTermsFilter = { "DocValuesTermsFilter", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0x1, 6, 2, -1, -1, -1, -1, 10 };
  return &_OrgApacheLuceneSearchDocValuesTermsFilter;
}

@end

void OrgApacheLuceneSearchDocValuesTermsFilter_initWithNSString_withOrgApacheLuceneUtilBytesRefArray_(OrgApacheLuceneSearchDocValuesTermsFilter *self, NSString *field, IOSObjectArray *terms) {
  OrgApacheLuceneSearchFilter_init(self);
  JreStrongAssign(&self->field_, field);
  JreStrongAssign(&self->terms_, terms);
}

OrgApacheLuceneSearchDocValuesTermsFilter *new_OrgApacheLuceneSearchDocValuesTermsFilter_initWithNSString_withOrgApacheLuceneUtilBytesRefArray_(NSString *field, IOSObjectArray *terms) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchDocValuesTermsFilter, initWithNSString_withOrgApacheLuceneUtilBytesRefArray_, field, terms)
}

OrgApacheLuceneSearchDocValuesTermsFilter *create_OrgApacheLuceneSearchDocValuesTermsFilter_initWithNSString_withOrgApacheLuceneUtilBytesRefArray_(NSString *field, IOSObjectArray *terms) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchDocValuesTermsFilter, initWithNSString_withOrgApacheLuceneUtilBytesRefArray_, field, terms)
}

void OrgApacheLuceneSearchDocValuesTermsFilter_initWithNSString_withNSStringArray_(OrgApacheLuceneSearchDocValuesTermsFilter *self, NSString *field, IOSObjectArray *terms) {
  OrgApacheLuceneSearchFilter_init(self);
  JreStrongAssign(&self->field_, field);
  JreStrongAssignAndConsume(&self->terms_, [IOSObjectArray newArrayWithLength:((IOSObjectArray *) nil_chk(terms))->size_ type:OrgApacheLuceneUtilBytesRef_class_()]);
  for (jint i = 0; i < terms->size_; i++) IOSObjectArray_SetAndConsume(nil_chk(self->terms_), i, new_OrgApacheLuceneUtilBytesRef_initWithJavaLangCharSequence_(IOSObjectArray_Get(terms, i)));
}

OrgApacheLuceneSearchDocValuesTermsFilter *new_OrgApacheLuceneSearchDocValuesTermsFilter_initWithNSString_withNSStringArray_(NSString *field, IOSObjectArray *terms) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchDocValuesTermsFilter, initWithNSString_withNSStringArray_, field, terms)
}

OrgApacheLuceneSearchDocValuesTermsFilter *create_OrgApacheLuceneSearchDocValuesTermsFilter_initWithNSString_withNSStringArray_(NSString *field, IOSObjectArray *terms) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchDocValuesTermsFilter, initWithNSString_withNSStringArray_, field, terms)
}

IOSObjectArray *OrgApacheLuceneSearchDocValuesTermsFilter__Annotations$0() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchDocValuesTermsFilter)

@implementation OrgApacheLuceneSearchDocValuesTermsFilter_1

- (instancetype)initWithOrgApacheLuceneIndexSortedDocValues:(OrgApacheLuceneIndexSortedDocValues *)capture$0
                         withOrgApacheLuceneUtilFixedBitSet:(OrgApacheLuceneUtilFixedBitSet *)capture$1
                                                    withInt:(jint)maxDoc
                                withOrgApacheLuceneUtilBits:(id<OrgApacheLuceneUtilBits>)acceptDocs {
  OrgApacheLuceneSearchDocValuesTermsFilter_1_initWithOrgApacheLuceneIndexSortedDocValues_withOrgApacheLuceneUtilFixedBitSet_withInt_withOrgApacheLuceneUtilBits_(self, capture$0, capture$1, maxDoc, acceptDocs);
  return self;
}

- (jboolean)matchDocWithInt:(jint)doc {
  jint ord = [((OrgApacheLuceneIndexSortedDocValues *) nil_chk(val$fcsi_)) getOrdWithInt:doc];
  if (ord == -1) {
    return false;
  }
  else {
    return [((OrgApacheLuceneUtilFixedBitSet *) nil_chk(val$bits_)) getWithInt:ord];
  }
}

- (void)dealloc {
  RELEASE_(val$fcsi_);
  RELEASE_(val$bits_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "Z", 0x14, 1, 2, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneIndexSortedDocValues:withOrgApacheLuceneUtilFixedBitSet:withInt:withOrgApacheLuceneUtilBits:);
  methods[1].selector = @selector(matchDocWithInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "val$fcsi_", "LOrgApacheLuceneIndexSortedDocValues;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "val$bits_", "LOrgApacheLuceneUtilFixedBitSet;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneIndexSortedDocValues;LOrgApacheLuceneUtilFixedBitSet;ILOrgApacheLuceneUtilBits;", "matchDoc", "I", "LOrgApacheLuceneSearchDocValuesTermsFilter;", "getDocIdSetWithOrgApacheLuceneIndexLeafReaderContext:withOrgApacheLuceneUtilBits:" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchDocValuesTermsFilter_1 = { "", "org.apache.lucene.search", ptrTable, methods, fields, 7, 0x8010, 2, 2, 3, -1, 4, -1, -1 };
  return &_OrgApacheLuceneSearchDocValuesTermsFilter_1;
}

@end

void OrgApacheLuceneSearchDocValuesTermsFilter_1_initWithOrgApacheLuceneIndexSortedDocValues_withOrgApacheLuceneUtilFixedBitSet_withInt_withOrgApacheLuceneUtilBits_(OrgApacheLuceneSearchDocValuesTermsFilter_1 *self, OrgApacheLuceneIndexSortedDocValues *capture$0, OrgApacheLuceneUtilFixedBitSet *capture$1, jint maxDoc, id<OrgApacheLuceneUtilBits> acceptDocs) {
  JreStrongAssign(&self->val$fcsi_, capture$0);
  JreStrongAssign(&self->val$bits_, capture$1);
  OrgApacheLuceneSearchDocValuesDocIdSet_initWithInt_withOrgApacheLuceneUtilBits_(self, maxDoc, acceptDocs);
}

OrgApacheLuceneSearchDocValuesTermsFilter_1 *new_OrgApacheLuceneSearchDocValuesTermsFilter_1_initWithOrgApacheLuceneIndexSortedDocValues_withOrgApacheLuceneUtilFixedBitSet_withInt_withOrgApacheLuceneUtilBits_(OrgApacheLuceneIndexSortedDocValues *capture$0, OrgApacheLuceneUtilFixedBitSet *capture$1, jint maxDoc, id<OrgApacheLuceneUtilBits> acceptDocs) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchDocValuesTermsFilter_1, initWithOrgApacheLuceneIndexSortedDocValues_withOrgApacheLuceneUtilFixedBitSet_withInt_withOrgApacheLuceneUtilBits_, capture$0, capture$1, maxDoc, acceptDocs)
}

OrgApacheLuceneSearchDocValuesTermsFilter_1 *create_OrgApacheLuceneSearchDocValuesTermsFilter_1_initWithOrgApacheLuceneIndexSortedDocValues_withOrgApacheLuceneUtilFixedBitSet_withInt_withOrgApacheLuceneUtilBits_(OrgApacheLuceneIndexSortedDocValues *capture$0, OrgApacheLuceneUtilFixedBitSet *capture$1, jint maxDoc, id<OrgApacheLuceneUtilBits> acceptDocs) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchDocValuesTermsFilter_1, initWithOrgApacheLuceneIndexSortedDocValues_withOrgApacheLuceneUtilFixedBitSet_withInt_withOrgApacheLuceneUtilBits_, capture$0, capture$1, maxDoc, acceptDocs)
}
