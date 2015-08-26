//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/FieldValueFilter.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/Deprecated.h"
#include "org/apache/lucene/index/DocValues.h"
#include "org/apache/lucene/index/LeafReader.h"
#include "org/apache/lucene/index/LeafReaderContext.h"
#include "org/apache/lucene/search/BitsFilteredDocIdSet.h"
#include "org/apache/lucene/search/DocIdSet.h"
#include "org/apache/lucene/search/DocValuesDocIdSet.h"
#include "org/apache/lucene/search/FieldValueFilter.h"
#include "org/apache/lucene/search/Filter.h"
#include "org/apache/lucene/util/BitDocIdSet.h"
#include "org/apache/lucene/util/BitSet.h"
#include "org/apache/lucene/util/Bits.h"

@interface OrgApacheLuceneSearchFieldValueFilter () {
 @public
  NSString *field_;
  jboolean negate_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchFieldValueFilter, field_, NSString *)

@interface OrgApacheLuceneSearchFieldValueFilter_$1 : OrgApacheLuceneSearchDocValuesDocIdSet {
 @public
  id<OrgApacheLuceneUtilBits> val$docsWithField_;
}

- (jboolean)matchDocWithInt:(jint)doc;

- (instancetype)initWithOrgApacheLuceneUtilBits:(id<OrgApacheLuceneUtilBits>)capture$0
                                        withInt:(jint)arg$0
                    withOrgApacheLuceneUtilBits:(id<OrgApacheLuceneUtilBits>)arg$1;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchFieldValueFilter_$1)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchFieldValueFilter_$1, val$docsWithField_, id<OrgApacheLuceneUtilBits>)

__attribute__((unused)) static void OrgApacheLuceneSearchFieldValueFilter_$1_initWithOrgApacheLuceneUtilBits_withInt_withOrgApacheLuceneUtilBits_(OrgApacheLuceneSearchFieldValueFilter_$1 *self, id<OrgApacheLuceneUtilBits> capture$0, jint arg$0, id<OrgApacheLuceneUtilBits> arg$1);

__attribute__((unused)) static OrgApacheLuceneSearchFieldValueFilter_$1 *new_OrgApacheLuceneSearchFieldValueFilter_$1_initWithOrgApacheLuceneUtilBits_withInt_withOrgApacheLuceneUtilBits_(id<OrgApacheLuceneUtilBits> capture$0, jint arg$0, id<OrgApacheLuceneUtilBits> arg$1) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchFieldValueFilter_$1)

@interface OrgApacheLuceneSearchFieldValueFilter_$2 : OrgApacheLuceneSearchDocValuesDocIdSet {
 @public
  id<OrgApacheLuceneUtilBits> val$docsWithField_;
}

- (jboolean)matchDocWithInt:(jint)doc;

- (instancetype)initWithOrgApacheLuceneUtilBits:(id<OrgApacheLuceneUtilBits>)capture$0
                                        withInt:(jint)arg$0
                    withOrgApacheLuceneUtilBits:(id<OrgApacheLuceneUtilBits>)arg$1;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchFieldValueFilter_$2)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchFieldValueFilter_$2, val$docsWithField_, id<OrgApacheLuceneUtilBits>)

__attribute__((unused)) static void OrgApacheLuceneSearchFieldValueFilter_$2_initWithOrgApacheLuceneUtilBits_withInt_withOrgApacheLuceneUtilBits_(OrgApacheLuceneSearchFieldValueFilter_$2 *self, id<OrgApacheLuceneUtilBits> capture$0, jint arg$0, id<OrgApacheLuceneUtilBits> arg$1);

__attribute__((unused)) static OrgApacheLuceneSearchFieldValueFilter_$2 *new_OrgApacheLuceneSearchFieldValueFilter_$2_initWithOrgApacheLuceneUtilBits_withInt_withOrgApacheLuceneUtilBits_(id<OrgApacheLuceneUtilBits> capture$0, jint arg$0, id<OrgApacheLuceneUtilBits> arg$1) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchFieldValueFilter_$2)

@implementation OrgApacheLuceneSearchFieldValueFilter

- (instancetype)initWithNSString:(NSString *)field {
  OrgApacheLuceneSearchFieldValueFilter_initWithNSString_(self, field);
  return self;
}

- (instancetype)initWithNSString:(NSString *)field
                     withBoolean:(jboolean)negate {
  OrgApacheLuceneSearchFieldValueFilter_initWithNSString_withBoolean_(self, field, negate);
  return self;
}

- (NSString *)field {
  return field_;
}

- (jboolean)negate {
  return negate_;
}

- (OrgApacheLuceneSearchDocIdSet *)getDocIdSetWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context
                                                            withOrgApacheLuceneUtilBits:(id<OrgApacheLuceneUtilBits>)acceptDocs {
  id<OrgApacheLuceneUtilBits> docsWithField = OrgApacheLuceneIndexDocValues_getDocsWithFieldWithOrgApacheLuceneIndexLeafReader_withNSString_([((OrgApacheLuceneIndexLeafReaderContext *) nil_chk(context)) reader], field_);
  if (negate_) {
    if ([docsWithField isKindOfClass:[OrgApacheLuceneUtilBits_MatchAllBits class]]) {
      return nil;
    }
    return [new_OrgApacheLuceneSearchFieldValueFilter_$1_initWithOrgApacheLuceneUtilBits_withInt_withOrgApacheLuceneUtilBits_(docsWithField, [((OrgApacheLuceneIndexLeafReader *) nil_chk([context reader])) maxDoc], acceptDocs) autorelease];
  }
  else {
    if ([docsWithField isKindOfClass:[OrgApacheLuceneUtilBits_MatchNoBits class]]) {
      return nil;
    }
    if ([docsWithField isKindOfClass:[OrgApacheLuceneUtilBitSet class]]) {
      return OrgApacheLuceneSearchBitsFilteredDocIdSet_wrapWithOrgApacheLuceneSearchDocIdSet_withOrgApacheLuceneUtilBits_([new_OrgApacheLuceneUtilBitDocIdSet_initWithOrgApacheLuceneUtilBitSet_((OrgApacheLuceneUtilBitSet *) check_class_cast(docsWithField, [OrgApacheLuceneUtilBitSet class])) autorelease], acceptDocs);
    }
    return [new_OrgApacheLuceneSearchFieldValueFilter_$2_initWithOrgApacheLuceneUtilBits_withInt_withOrgApacheLuceneUtilBits_(docsWithField, [((OrgApacheLuceneIndexLeafReader *) nil_chk([context reader])) maxDoc], acceptDocs) autorelease];
  }
}

- (NSUInteger)hash {
  jint prime = 31;
  jint result = ((jint) [super hash]);
  result = prime * result + ((field_ == nil) ? 0 : ((jint) [field_ hash]));
  result = prime * result + (negate_ ? 1231 : 1237);
  return result;
}

- (jboolean)isEqual:(id)obj {
  if (self == obj) return YES;
  if ([super isEqual:obj] == NO) {
    return NO;
  }
  OrgApacheLuceneSearchFieldValueFilter *other = (OrgApacheLuceneSearchFieldValueFilter *) check_class_cast(obj, [OrgApacheLuceneSearchFieldValueFilter class]);
  if (field_ == nil) {
    if (((OrgApacheLuceneSearchFieldValueFilter *) nil_chk(other))->field_ != nil) return NO;
  }
  else if (![field_ isEqual:((OrgApacheLuceneSearchFieldValueFilter *) nil_chk(other))->field_]) return NO;
  if (negate_ != ((OrgApacheLuceneSearchFieldValueFilter *) nil_chk(other))->negate_) return NO;
  return YES;
}

- (NSString *)toStringWithNSString:(NSString *)defaultField {
  return JreStrcat("$$$ZC", @"FieldValueFilter [field=", field_, @", negate=", negate_, ']');
}

- (void)dealloc {
  RELEASE_(field_);
  [super dealloc];
}

+ (IOSObjectArray *)__annotations {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[[JavaLangDeprecated alloc] init] autorelease] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:", "FieldValueFilter", NULL, 0x1, NULL, NULL },
    { "initWithNSString:withBoolean:", "FieldValueFilter", NULL, 0x1, NULL, NULL },
    { "field", NULL, "Ljava.lang.String;", 0x1, NULL, NULL },
    { "negate", NULL, "Z", 0x1, NULL, NULL },
    { "getDocIdSetWithOrgApacheLuceneIndexLeafReaderContext:withOrgApacheLuceneUtilBits:", "getDocIdSet", "Lorg.apache.lucene.search.DocIdSet;", 0x1, "Ljava.io.IOException;", NULL },
    { "hash", "hashCode", "I", 0x1, NULL, NULL },
    { "isEqual:", "equals", "Z", 0x1, NULL, NULL },
    { "toStringWithNSString:", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "field_", NULL, 0x12, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "negate_", NULL, 0x12, "Z", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchFieldValueFilter = { 2, "FieldValueFilter", "org.apache.lucene.search", NULL, 0x1, 8, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchFieldValueFilter;
}

@end

void OrgApacheLuceneSearchFieldValueFilter_initWithNSString_(OrgApacheLuceneSearchFieldValueFilter *self, NSString *field) {
  OrgApacheLuceneSearchFieldValueFilter_initWithNSString_withBoolean_(self, field, NO);
}

OrgApacheLuceneSearchFieldValueFilter *new_OrgApacheLuceneSearchFieldValueFilter_initWithNSString_(NSString *field) {
  OrgApacheLuceneSearchFieldValueFilter *self = [OrgApacheLuceneSearchFieldValueFilter alloc];
  OrgApacheLuceneSearchFieldValueFilter_initWithNSString_(self, field);
  return self;
}

void OrgApacheLuceneSearchFieldValueFilter_initWithNSString_withBoolean_(OrgApacheLuceneSearchFieldValueFilter *self, NSString *field, jboolean negate) {
  OrgApacheLuceneSearchFilter_init(self);
  JreStrongAssign(&self->field_, field);
  self->negate_ = negate;
}

OrgApacheLuceneSearchFieldValueFilter *new_OrgApacheLuceneSearchFieldValueFilter_initWithNSString_withBoolean_(NSString *field, jboolean negate) {
  OrgApacheLuceneSearchFieldValueFilter *self = [OrgApacheLuceneSearchFieldValueFilter alloc];
  OrgApacheLuceneSearchFieldValueFilter_initWithNSString_withBoolean_(self, field, negate);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchFieldValueFilter)

@implementation OrgApacheLuceneSearchFieldValueFilter_$1

- (jboolean)matchDocWithInt:(jint)doc {
  return ![((id<OrgApacheLuceneUtilBits>) nil_chk(val$docsWithField_)) getWithInt:doc];
}

- (instancetype)initWithOrgApacheLuceneUtilBits:(id<OrgApacheLuceneUtilBits>)capture$0
                                        withInt:(jint)arg$0
                    withOrgApacheLuceneUtilBits:(id<OrgApacheLuceneUtilBits>)arg$1 {
  OrgApacheLuceneSearchFieldValueFilter_$1_initWithOrgApacheLuceneUtilBits_withInt_withOrgApacheLuceneUtilBits_(self, capture$0, arg$0, arg$1);
  return self;
}

- (void)dealloc {
  RELEASE_(val$docsWithField_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "matchDocWithInt:", "matchDoc", "Z", 0x14, NULL, NULL },
    { "initWithOrgApacheLuceneUtilBits:withInt:withOrgApacheLuceneUtilBits:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "val$docsWithField_", NULL, 0x1012, "Lorg.apache.lucene.util.Bits;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "OrgApacheLuceneSearchFieldValueFilter", "getDocIdSetWithOrgApacheLuceneIndexLeafReaderContext:withOrgApacheLuceneUtilBits:" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchFieldValueFilter_$1 = { 2, "", "org.apache.lucene.search", "FieldValueFilter", 0x8008, 2, methods, 1, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_OrgApacheLuceneSearchFieldValueFilter_$1;
}

@end

void OrgApacheLuceneSearchFieldValueFilter_$1_initWithOrgApacheLuceneUtilBits_withInt_withOrgApacheLuceneUtilBits_(OrgApacheLuceneSearchFieldValueFilter_$1 *self, id<OrgApacheLuceneUtilBits> capture$0, jint arg$0, id<OrgApacheLuceneUtilBits> arg$1) {
  JreStrongAssign(&self->val$docsWithField_, capture$0);
  OrgApacheLuceneSearchDocValuesDocIdSet_initWithInt_withOrgApacheLuceneUtilBits_(self, arg$0, arg$1);
}

OrgApacheLuceneSearchFieldValueFilter_$1 *new_OrgApacheLuceneSearchFieldValueFilter_$1_initWithOrgApacheLuceneUtilBits_withInt_withOrgApacheLuceneUtilBits_(id<OrgApacheLuceneUtilBits> capture$0, jint arg$0, id<OrgApacheLuceneUtilBits> arg$1) {
  OrgApacheLuceneSearchFieldValueFilter_$1 *self = [OrgApacheLuceneSearchFieldValueFilter_$1 alloc];
  OrgApacheLuceneSearchFieldValueFilter_$1_initWithOrgApacheLuceneUtilBits_withInt_withOrgApacheLuceneUtilBits_(self, capture$0, arg$0, arg$1);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchFieldValueFilter_$1)

@implementation OrgApacheLuceneSearchFieldValueFilter_$2

- (jboolean)matchDocWithInt:(jint)doc {
  return [((id<OrgApacheLuceneUtilBits>) nil_chk(val$docsWithField_)) getWithInt:doc];
}

- (instancetype)initWithOrgApacheLuceneUtilBits:(id<OrgApacheLuceneUtilBits>)capture$0
                                        withInt:(jint)arg$0
                    withOrgApacheLuceneUtilBits:(id<OrgApacheLuceneUtilBits>)arg$1 {
  OrgApacheLuceneSearchFieldValueFilter_$2_initWithOrgApacheLuceneUtilBits_withInt_withOrgApacheLuceneUtilBits_(self, capture$0, arg$0, arg$1);
  return self;
}

- (void)dealloc {
  RELEASE_(val$docsWithField_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "matchDocWithInt:", "matchDoc", "Z", 0x14, NULL, NULL },
    { "initWithOrgApacheLuceneUtilBits:withInt:withOrgApacheLuceneUtilBits:", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "val$docsWithField_", NULL, 0x1012, "Lorg.apache.lucene.util.Bits;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "OrgApacheLuceneSearchFieldValueFilter", "getDocIdSetWithOrgApacheLuceneIndexLeafReaderContext:withOrgApacheLuceneUtilBits:" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchFieldValueFilter_$2 = { 2, "", "org.apache.lucene.search", "FieldValueFilter", 0x8008, 2, methods, 1, fields, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_OrgApacheLuceneSearchFieldValueFilter_$2;
}

@end

void OrgApacheLuceneSearchFieldValueFilter_$2_initWithOrgApacheLuceneUtilBits_withInt_withOrgApacheLuceneUtilBits_(OrgApacheLuceneSearchFieldValueFilter_$2 *self, id<OrgApacheLuceneUtilBits> capture$0, jint arg$0, id<OrgApacheLuceneUtilBits> arg$1) {
  JreStrongAssign(&self->val$docsWithField_, capture$0);
  OrgApacheLuceneSearchDocValuesDocIdSet_initWithInt_withOrgApacheLuceneUtilBits_(self, arg$0, arg$1);
}

OrgApacheLuceneSearchFieldValueFilter_$2 *new_OrgApacheLuceneSearchFieldValueFilter_$2_initWithOrgApacheLuceneUtilBits_withInt_withOrgApacheLuceneUtilBits_(id<OrgApacheLuceneUtilBits> capture$0, jint arg$0, id<OrgApacheLuceneUtilBits> arg$1) {
  OrgApacheLuceneSearchFieldValueFilter_$2 *self = [OrgApacheLuceneSearchFieldValueFilter_$2 alloc];
  OrgApacheLuceneSearchFieldValueFilter_$2_initWithOrgApacheLuceneUtilBits_withInt_withOrgApacheLuceneUtilBits_(self, capture$0, arg$0, arg$1);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchFieldValueFilter_$2)
