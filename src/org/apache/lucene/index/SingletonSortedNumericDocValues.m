//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/SingletonSortedNumericDocValues.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/index/NumericDocValues.h"
#include "org/apache/lucene/index/SingletonSortedNumericDocValues.h"
#include "org/apache/lucene/index/SortedNumericDocValues.h"
#include "org/apache/lucene/util/Bits.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/index/SingletonSortedNumericDocValues must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneIndexSingletonSortedNumericDocValues () {
 @public
  OrgApacheLuceneIndexNumericDocValues *in_;
  id<OrgApacheLuceneUtilBits> docsWithField_;
  jlong value_;
  jint count_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexSingletonSortedNumericDocValues, in_, OrgApacheLuceneIndexNumericDocValues *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexSingletonSortedNumericDocValues, docsWithField_, id<OrgApacheLuceneUtilBits>)

@implementation OrgApacheLuceneIndexSingletonSortedNumericDocValues

- (instancetype)initPackagePrivateWithOrgApacheLuceneIndexNumericDocValues:(OrgApacheLuceneIndexNumericDocValues *)inArg
                                               withOrgApacheLuceneUtilBits:(id<OrgApacheLuceneUtilBits>)docsWithField {
  OrgApacheLuceneIndexSingletonSortedNumericDocValues_initPackagePrivateWithOrgApacheLuceneIndexNumericDocValues_withOrgApacheLuceneUtilBits_(self, inArg, docsWithField);
  return self;
}

- (OrgApacheLuceneIndexNumericDocValues *)getNumericDocValues {
  return in_;
}

- (id<OrgApacheLuceneUtilBits>)getDocsWithField {
  return docsWithField_;
}

- (void)setDocumentWithInt:(jint)doc {
  value_ = [((OrgApacheLuceneIndexNumericDocValues *) nil_chk(in_)) getWithInt:doc];
  if (docsWithField_ != nil && value_ == 0 && [docsWithField_ getWithInt:doc] == false) {
    count_ = 0;
  }
  else {
    count_ = 1;
  }
}

- (jlong)valueAtWithInt:(jint)index {
  return value_;
}

- (jint)count {
  return count_;
}

- (void)dealloc {
  RELEASE_(in_);
  RELEASE_(docsWithField_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexNumericDocValues;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilBits;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "J", 0x1, 3, 2, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initPackagePrivateWithOrgApacheLuceneIndexNumericDocValues:withOrgApacheLuceneUtilBits:);
  methods[1].selector = @selector(getNumericDocValues);
  methods[2].selector = @selector(getDocsWithField);
  methods[3].selector = @selector(setDocumentWithInt:);
  methods[4].selector = @selector(valueAtWithInt:);
  methods[5].selector = @selector(count);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "in_", "LOrgApacheLuceneIndexNumericDocValues;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "docsWithField_", "LOrgApacheLuceneUtilBits;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "value_", "J", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "count_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneIndexNumericDocValues;LOrgApacheLuceneUtilBits;", "setDocument", "I", "valueAt" };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexSingletonSortedNumericDocValues = { "SingletonSortedNumericDocValues", "org.apache.lucene.index", ptrTable, methods, fields, 7, 0x10, 6, 4, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneIndexSingletonSortedNumericDocValues;
}

@end

void OrgApacheLuceneIndexSingletonSortedNumericDocValues_initPackagePrivateWithOrgApacheLuceneIndexNumericDocValues_withOrgApacheLuceneUtilBits_(OrgApacheLuceneIndexSingletonSortedNumericDocValues *self, OrgApacheLuceneIndexNumericDocValues *inArg, id<OrgApacheLuceneUtilBits> docsWithField) {
  OrgApacheLuceneIndexSortedNumericDocValues_init(self);
  JreStrongAssign(&self->in_, inArg);
  JreStrongAssign(&self->docsWithField_, [docsWithField isKindOfClass:[OrgApacheLuceneUtilBits_MatchAllBits class]] ? nil : docsWithField);
}

OrgApacheLuceneIndexSingletonSortedNumericDocValues *new_OrgApacheLuceneIndexSingletonSortedNumericDocValues_initPackagePrivateWithOrgApacheLuceneIndexNumericDocValues_withOrgApacheLuceneUtilBits_(OrgApacheLuceneIndexNumericDocValues *inArg, id<OrgApacheLuceneUtilBits> docsWithField) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexSingletonSortedNumericDocValues, initPackagePrivateWithOrgApacheLuceneIndexNumericDocValues_withOrgApacheLuceneUtilBits_, inArg, docsWithField)
}

OrgApacheLuceneIndexSingletonSortedNumericDocValues *create_OrgApacheLuceneIndexSingletonSortedNumericDocValues_initPackagePrivateWithOrgApacheLuceneIndexNumericDocValues_withOrgApacheLuceneUtilBits_(OrgApacheLuceneIndexNumericDocValues *inArg, id<OrgApacheLuceneUtilBits> docsWithField) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexSingletonSortedNumericDocValues, initPackagePrivateWithOrgApacheLuceneIndexNumericDocValues_withOrgApacheLuceneUtilBits_, inArg, docsWithField)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexSingletonSortedNumericDocValues)
