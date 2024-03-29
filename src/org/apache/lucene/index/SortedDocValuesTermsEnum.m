//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/SortedDocValuesTermsEnum.java
//

#include "J2ObjC_source.h"
#include "java/lang/UnsupportedOperationException.h"
#include "org/apache/lucene/index/OrdTermState.h"
#include "org/apache/lucene/index/PostingsEnum.h"
#include "org/apache/lucene/index/SortedDocValues.h"
#include "org/apache/lucene/index/SortedDocValuesTermsEnum.h"
#include "org/apache/lucene/index/TermState.h"
#include "org/apache/lucene/index/TermsEnum.h"
#include "org/apache/lucene/util/BytesRef.h"
#include "org/apache/lucene/util/BytesRefBuilder.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/index/SortedDocValuesTermsEnum must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneIndexSortedDocValuesTermsEnum () {
 @public
  OrgApacheLuceneIndexSortedDocValues *values_;
  jint currentOrd_;
  OrgApacheLuceneUtilBytesRefBuilder *scratch_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexSortedDocValuesTermsEnum, values_, OrgApacheLuceneIndexSortedDocValues *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexSortedDocValuesTermsEnum, scratch_, OrgApacheLuceneUtilBytesRefBuilder *)

@implementation OrgApacheLuceneIndexSortedDocValuesTermsEnum

- (instancetype)initPackagePrivateWithOrgApacheLuceneIndexSortedDocValues:(OrgApacheLuceneIndexSortedDocValues *)values {
  OrgApacheLuceneIndexSortedDocValuesTermsEnum_initPackagePrivateWithOrgApacheLuceneIndexSortedDocValues_(self, values);
  return self;
}

- (OrgApacheLuceneIndexTermsEnum_SeekStatus *)seekCeilWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)text {
  jint ord = [((OrgApacheLuceneIndexSortedDocValues *) nil_chk(values_)) lookupTermWithOrgApacheLuceneUtilBytesRef:text];
  if (ord >= 0) {
    currentOrd_ = ord;
    [((OrgApacheLuceneUtilBytesRefBuilder *) nil_chk(scratch_)) copyBytesWithOrgApacheLuceneUtilBytesRef:text];
    return JreLoadEnum(OrgApacheLuceneIndexTermsEnum_SeekStatus, FOUND);
  }
  else {
    currentOrd_ = -ord - 1;
    if (currentOrd_ == [values_ getValueCount]) {
      return JreLoadEnum(OrgApacheLuceneIndexTermsEnum_SeekStatus, END);
    }
    else {
      [((OrgApacheLuceneUtilBytesRefBuilder *) nil_chk(scratch_)) copyBytesWithOrgApacheLuceneUtilBytesRef:[values_ lookupOrdWithInt:currentOrd_]];
      return JreLoadEnum(OrgApacheLuceneIndexTermsEnum_SeekStatus, NOT_FOUND);
    }
  }
}

- (jboolean)seekExactWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)text {
  jint ord = [((OrgApacheLuceneIndexSortedDocValues *) nil_chk(values_)) lookupTermWithOrgApacheLuceneUtilBytesRef:text];
  if (ord >= 0) {
    currentOrd_ = ord;
    [((OrgApacheLuceneUtilBytesRefBuilder *) nil_chk(scratch_)) copyBytesWithOrgApacheLuceneUtilBytesRef:text];
    return true;
  }
  else {
    return false;
  }
}

- (void)seekExactWithLong:(jlong)ord {
  JreAssert(ord >= 0 && ord < [((OrgApacheLuceneIndexSortedDocValues *) nil_chk(values_)) getValueCount], @"org/apache/lucene/index/SortedDocValuesTermsEnum.java:72 condition failed: assert ord >= 0 && ord < values.getValueCount();");
  currentOrd_ = (jint) ord;
  [((OrgApacheLuceneUtilBytesRefBuilder *) nil_chk(scratch_)) copyBytesWithOrgApacheLuceneUtilBytesRef:[((OrgApacheLuceneIndexSortedDocValues *) nil_chk(values_)) lookupOrdWithInt:currentOrd_]];
}

- (OrgApacheLuceneUtilBytesRef *)next {
  currentOrd_++;
  if (currentOrd_ >= [((OrgApacheLuceneIndexSortedDocValues *) nil_chk(values_)) getValueCount]) {
    return nil;
  }
  [((OrgApacheLuceneUtilBytesRefBuilder *) nil_chk(scratch_)) copyBytesWithOrgApacheLuceneUtilBytesRef:[values_ lookupOrdWithInt:currentOrd_]];
  return [scratch_ get];
}

- (OrgApacheLuceneUtilBytesRef *)term {
  return [((OrgApacheLuceneUtilBytesRefBuilder *) nil_chk(scratch_)) get];
}

- (jlong)ord {
  return currentOrd_;
}

- (jint)docFreq {
  @throw create_JavaLangUnsupportedOperationException_init();
}

- (jlong)totalTermFreq {
  return -1;
}

- (OrgApacheLuceneIndexPostingsEnum *)postingsWithOrgApacheLuceneIndexPostingsEnum:(OrgApacheLuceneIndexPostingsEnum *)reuse
                                                                           withInt:(jint)flags {
  @throw create_JavaLangUnsupportedOperationException_init();
}

- (void)seekExactWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)term
               withOrgApacheLuceneIndexTermState:(OrgApacheLuceneIndexTermState *)state {
  JreAssert(state != nil && [state isKindOfClass:[OrgApacheLuceneIndexOrdTermState class]], @"org/apache/lucene/index/SortedDocValuesTermsEnum.java:114 condition failed: assert state != null && state instanceof OrdTermState;");
  [self seekExactWithLong:((OrgApacheLuceneIndexOrdTermState *) nil_chk(((OrgApacheLuceneIndexOrdTermState *) cast_chk(state, [OrgApacheLuceneIndexOrdTermState class]))))->ord_];
}

- (OrgApacheLuceneIndexTermState *)termState {
  OrgApacheLuceneIndexOrdTermState *state = create_OrgApacheLuceneIndexOrdTermState_init();
  state->ord_ = currentOrd_;
  return state;
}

- (void)dealloc {
  RELEASE_(values_);
  RELEASE_(scratch_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexTermsEnum_SeekStatus;", 0x1, 1, 2, 3, -1, -1, -1 },
    { NULL, "Z", 0x1, 4, 2, 3, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 5, 3, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilBytesRef;", 0x1, -1, -1, 3, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilBytesRef;", 0x1, -1, -1, 3, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, 3, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexPostingsEnum;", 0x1, 6, 7, 3, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 8, 3, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexTermState;", 0x1, -1, -1, 3, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initPackagePrivateWithOrgApacheLuceneIndexSortedDocValues:);
  methods[1].selector = @selector(seekCeilWithOrgApacheLuceneUtilBytesRef:);
  methods[2].selector = @selector(seekExactWithOrgApacheLuceneUtilBytesRef:);
  methods[3].selector = @selector(seekExactWithLong:);
  methods[4].selector = @selector(next);
  methods[5].selector = @selector(term);
  methods[6].selector = @selector(ord);
  methods[7].selector = @selector(docFreq);
  methods[8].selector = @selector(totalTermFreq);
  methods[9].selector = @selector(postingsWithOrgApacheLuceneIndexPostingsEnum:withInt:);
  methods[10].selector = @selector(seekExactWithOrgApacheLuceneUtilBytesRef:withOrgApacheLuceneIndexTermState:);
  methods[11].selector = @selector(termState);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "values_", "LOrgApacheLuceneIndexSortedDocValues;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "currentOrd_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "scratch_", "LOrgApacheLuceneUtilBytesRefBuilder;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneIndexSortedDocValues;", "seekCeil", "LOrgApacheLuceneUtilBytesRef;", "LJavaIoIOException;", "seekExact", "J", "postings", "LOrgApacheLuceneIndexPostingsEnum;I", "LOrgApacheLuceneUtilBytesRef;LOrgApacheLuceneIndexTermState;" };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexSortedDocValuesTermsEnum = { "SortedDocValuesTermsEnum", "org.apache.lucene.index", ptrTable, methods, fields, 7, 0x0, 12, 3, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneIndexSortedDocValuesTermsEnum;
}

@end

void OrgApacheLuceneIndexSortedDocValuesTermsEnum_initPackagePrivateWithOrgApacheLuceneIndexSortedDocValues_(OrgApacheLuceneIndexSortedDocValuesTermsEnum *self, OrgApacheLuceneIndexSortedDocValues *values) {
  OrgApacheLuceneIndexTermsEnum_init(self);
  self->currentOrd_ = -1;
  JreStrongAssign(&self->values_, values);
  JreStrongAssignAndConsume(&self->scratch_, new_OrgApacheLuceneUtilBytesRefBuilder_init());
}

OrgApacheLuceneIndexSortedDocValuesTermsEnum *new_OrgApacheLuceneIndexSortedDocValuesTermsEnum_initPackagePrivateWithOrgApacheLuceneIndexSortedDocValues_(OrgApacheLuceneIndexSortedDocValues *values) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexSortedDocValuesTermsEnum, initPackagePrivateWithOrgApacheLuceneIndexSortedDocValues_, values)
}

OrgApacheLuceneIndexSortedDocValuesTermsEnum *create_OrgApacheLuceneIndexSortedDocValuesTermsEnum_initPackagePrivateWithOrgApacheLuceneIndexSortedDocValues_(OrgApacheLuceneIndexSortedDocValues *values) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexSortedDocValuesTermsEnum, initPackagePrivateWithOrgApacheLuceneIndexSortedDocValues_, values)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexSortedDocValuesTermsEnum)
