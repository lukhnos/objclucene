//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/MappedMultiFields.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/UnsupportedOperationException.h"
#include "org/apache/lucene/index/Fields.h"
#include "org/apache/lucene/index/FilterLeafReader.h"
#include "org/apache/lucene/index/MappedMultiFields.h"
#include "org/apache/lucene/index/MappingMultiPostingsEnum.h"
#include "org/apache/lucene/index/MergeState.h"
#include "org/apache/lucene/index/MultiFields.h"
#include "org/apache/lucene/index/MultiPostingsEnum.h"
#include "org/apache/lucene/index/MultiTerms.h"
#include "org/apache/lucene/index/MultiTermsEnum.h"
#include "org/apache/lucene/index/PostingsEnum.h"
#include "org/apache/lucene/index/Terms.h"
#include "org/apache/lucene/index/TermsEnum.h"

@interface OrgApacheLuceneIndexMappedMultiFields_MappedMultiTerms : OrgApacheLuceneIndexFilterLeafReader_FilterTerms {
 @public
  OrgApacheLuceneIndexMergeState *mergeState_;
  NSString *field_;
}

- (instancetype)initWithNSString:(NSString *)field
withOrgApacheLuceneIndexMergeState:(OrgApacheLuceneIndexMergeState *)mergeState
withOrgApacheLuceneIndexMultiTerms:(OrgApacheLuceneIndexMultiTerms *)multiTerms;

- (OrgApacheLuceneIndexTermsEnum *)iterator;

- (jlong)size;

- (jlong)getSumTotalTermFreq;

- (jlong)getSumDocFreq;

- (jint)getDocCount;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexMappedMultiFields_MappedMultiTerms)

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexMappedMultiFields_MappedMultiTerms, mergeState_, OrgApacheLuceneIndexMergeState *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexMappedMultiFields_MappedMultiTerms, field_, NSString *)

__attribute__((unused)) static void OrgApacheLuceneIndexMappedMultiFields_MappedMultiTerms_initWithNSString_withOrgApacheLuceneIndexMergeState_withOrgApacheLuceneIndexMultiTerms_(OrgApacheLuceneIndexMappedMultiFields_MappedMultiTerms *self, NSString *field, OrgApacheLuceneIndexMergeState *mergeState, OrgApacheLuceneIndexMultiTerms *multiTerms);

__attribute__((unused)) static OrgApacheLuceneIndexMappedMultiFields_MappedMultiTerms *new_OrgApacheLuceneIndexMappedMultiFields_MappedMultiTerms_initWithNSString_withOrgApacheLuceneIndexMergeState_withOrgApacheLuceneIndexMultiTerms_(NSString *field, OrgApacheLuceneIndexMergeState *mergeState, OrgApacheLuceneIndexMultiTerms *multiTerms) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexMappedMultiFields_MappedMultiTerms)

@interface OrgApacheLuceneIndexMappedMultiFields_MappedMultiTermsEnum : OrgApacheLuceneIndexFilterLeafReader_FilterTermsEnum {
 @public
  OrgApacheLuceneIndexMergeState *mergeState_;
  NSString *field_;
}

- (instancetype)initWithNSString:(NSString *)field
withOrgApacheLuceneIndexMergeState:(OrgApacheLuceneIndexMergeState *)mergeState
withOrgApacheLuceneIndexMultiTermsEnum:(OrgApacheLuceneIndexMultiTermsEnum *)multiTermsEnum;

- (jint)docFreq;

- (jlong)totalTermFreq;

- (OrgApacheLuceneIndexPostingsEnum *)postingsWithOrgApacheLuceneIndexPostingsEnum:(OrgApacheLuceneIndexPostingsEnum *)reuse
                                                                           withInt:(jint)flags;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexMappedMultiFields_MappedMultiTermsEnum)

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexMappedMultiFields_MappedMultiTermsEnum, mergeState_, OrgApacheLuceneIndexMergeState *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexMappedMultiFields_MappedMultiTermsEnum, field_, NSString *)

__attribute__((unused)) static void OrgApacheLuceneIndexMappedMultiFields_MappedMultiTermsEnum_initWithNSString_withOrgApacheLuceneIndexMergeState_withOrgApacheLuceneIndexMultiTermsEnum_(OrgApacheLuceneIndexMappedMultiFields_MappedMultiTermsEnum *self, NSString *field, OrgApacheLuceneIndexMergeState *mergeState, OrgApacheLuceneIndexMultiTermsEnum *multiTermsEnum);

__attribute__((unused)) static OrgApacheLuceneIndexMappedMultiFields_MappedMultiTermsEnum *new_OrgApacheLuceneIndexMappedMultiFields_MappedMultiTermsEnum_initWithNSString_withOrgApacheLuceneIndexMergeState_withOrgApacheLuceneIndexMultiTermsEnum_(NSString *field, OrgApacheLuceneIndexMergeState *mergeState, OrgApacheLuceneIndexMultiTermsEnum *multiTermsEnum) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexMappedMultiFields_MappedMultiTermsEnum)

@implementation OrgApacheLuceneIndexMappedMultiFields

- (instancetype)initWithOrgApacheLuceneIndexMergeState:(OrgApacheLuceneIndexMergeState *)mergeState
                   withOrgApacheLuceneIndexMultiFields:(OrgApacheLuceneIndexMultiFields *)multiFields {
  OrgApacheLuceneIndexMappedMultiFields_initWithOrgApacheLuceneIndexMergeState_withOrgApacheLuceneIndexMultiFields_(self, mergeState, multiFields);
  return self;
}

- (OrgApacheLuceneIndexTerms *)termsWithNSString:(NSString *)field {
  OrgApacheLuceneIndexMultiTerms *terms = (OrgApacheLuceneIndexMultiTerms *) check_class_cast([((OrgApacheLuceneIndexFields *) nil_chk(in_)) termsWithNSString:field], [OrgApacheLuceneIndexMultiTerms class]);
  if (terms == nil) {
    return nil;
  }
  else {
    return [new_OrgApacheLuceneIndexMappedMultiFields_MappedMultiTerms_initWithNSString_withOrgApacheLuceneIndexMergeState_withOrgApacheLuceneIndexMultiTerms_(field, mergeState_, terms) autorelease];
  }
}

- (void)dealloc {
  RELEASE_(mergeState_);
  [super dealloc];
}

- (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState *)state objects:(__unsafe_unretained id *)stackbuf count:(NSUInteger)len {
  return JreDefaultFastEnumeration(self, state, stackbuf, len);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneIndexMergeState:withOrgApacheLuceneIndexMultiFields:", "MappedMultiFields", NULL, 0x1, NULL, NULL },
    { "termsWithNSString:", "terms", "Lorg.apache.lucene.index.Terms;", 0x1, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "mergeState_", NULL, 0x10, "Lorg.apache.lucene.index.MergeState;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.index.MappedMultiFields$MappedMultiTerms;", "Lorg.apache.lucene.index.MappedMultiFields$MappedMultiTermsEnum;"};
  static const J2ObjcClassInfo _OrgApacheLuceneIndexMappedMultiFields = { 2, "MappedMultiFields", "org.apache.lucene.index", NULL, 0x1, 2, methods, 1, fields, 0, NULL, 2, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneIndexMappedMultiFields;
}

@end

void OrgApacheLuceneIndexMappedMultiFields_initWithOrgApacheLuceneIndexMergeState_withOrgApacheLuceneIndexMultiFields_(OrgApacheLuceneIndexMappedMultiFields *self, OrgApacheLuceneIndexMergeState *mergeState, OrgApacheLuceneIndexMultiFields *multiFields) {
  OrgApacheLuceneIndexFilterLeafReader_FilterFields_initWithOrgApacheLuceneIndexFields_(self, multiFields);
  JreStrongAssign(&self->mergeState_, mergeState);
}

OrgApacheLuceneIndexMappedMultiFields *new_OrgApacheLuceneIndexMappedMultiFields_initWithOrgApacheLuceneIndexMergeState_withOrgApacheLuceneIndexMultiFields_(OrgApacheLuceneIndexMergeState *mergeState, OrgApacheLuceneIndexMultiFields *multiFields) {
  OrgApacheLuceneIndexMappedMultiFields *self = [OrgApacheLuceneIndexMappedMultiFields alloc];
  OrgApacheLuceneIndexMappedMultiFields_initWithOrgApacheLuceneIndexMergeState_withOrgApacheLuceneIndexMultiFields_(self, mergeState, multiFields);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexMappedMultiFields)

@implementation OrgApacheLuceneIndexMappedMultiFields_MappedMultiTerms

- (instancetype)initWithNSString:(NSString *)field
withOrgApacheLuceneIndexMergeState:(OrgApacheLuceneIndexMergeState *)mergeState
withOrgApacheLuceneIndexMultiTerms:(OrgApacheLuceneIndexMultiTerms *)multiTerms {
  OrgApacheLuceneIndexMappedMultiFields_MappedMultiTerms_initWithNSString_withOrgApacheLuceneIndexMergeState_withOrgApacheLuceneIndexMultiTerms_(self, field, mergeState, multiTerms);
  return self;
}

- (OrgApacheLuceneIndexTermsEnum *)iterator {
  return [new_OrgApacheLuceneIndexMappedMultiFields_MappedMultiTermsEnum_initWithNSString_withOrgApacheLuceneIndexMergeState_withOrgApacheLuceneIndexMultiTermsEnum_(field_, mergeState_, (OrgApacheLuceneIndexMultiTermsEnum *) check_class_cast([((OrgApacheLuceneIndexTerms *) nil_chk(in_)) iterator], [OrgApacheLuceneIndexMultiTermsEnum class])) autorelease];
}

- (jlong)size {
  @throw [new_JavaLangUnsupportedOperationException_init() autorelease];
}

- (jlong)getSumTotalTermFreq {
  @throw [new_JavaLangUnsupportedOperationException_init() autorelease];
}

- (jlong)getSumDocFreq {
  @throw [new_JavaLangUnsupportedOperationException_init() autorelease];
}

- (jint)getDocCount {
  @throw [new_JavaLangUnsupportedOperationException_init() autorelease];
}

- (void)dealloc {
  RELEASE_(mergeState_);
  RELEASE_(field_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:withOrgApacheLuceneIndexMergeState:withOrgApacheLuceneIndexMultiTerms:", "MappedMultiTerms", NULL, 0x1, NULL, NULL },
    { "iterator", NULL, "Lorg.apache.lucene.index.TermsEnum;", 0x1, "Ljava.io.IOException;", NULL },
    { "size", NULL, "J", 0x1, "Ljava.io.IOException;", NULL },
    { "getSumTotalTermFreq", NULL, "J", 0x1, "Ljava.io.IOException;", NULL },
    { "getSumDocFreq", NULL, "J", 0x1, "Ljava.io.IOException;", NULL },
    { "getDocCount", NULL, "I", 0x1, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "mergeState_", NULL, 0x10, "Lorg.apache.lucene.index.MergeState;", NULL, NULL, .constantValue.asLong = 0 },
    { "field_", NULL, 0x10, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexMappedMultiFields_MappedMultiTerms = { 2, "MappedMultiTerms", "org.apache.lucene.index", "MappedMultiFields", 0xa, 6, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneIndexMappedMultiFields_MappedMultiTerms;
}

@end

void OrgApacheLuceneIndexMappedMultiFields_MappedMultiTerms_initWithNSString_withOrgApacheLuceneIndexMergeState_withOrgApacheLuceneIndexMultiTerms_(OrgApacheLuceneIndexMappedMultiFields_MappedMultiTerms *self, NSString *field, OrgApacheLuceneIndexMergeState *mergeState, OrgApacheLuceneIndexMultiTerms *multiTerms) {
  OrgApacheLuceneIndexFilterLeafReader_FilterTerms_initWithOrgApacheLuceneIndexTerms_(self, multiTerms);
  JreStrongAssign(&self->field_, field);
  JreStrongAssign(&self->mergeState_, mergeState);
}

OrgApacheLuceneIndexMappedMultiFields_MappedMultiTerms *new_OrgApacheLuceneIndexMappedMultiFields_MappedMultiTerms_initWithNSString_withOrgApacheLuceneIndexMergeState_withOrgApacheLuceneIndexMultiTerms_(NSString *field, OrgApacheLuceneIndexMergeState *mergeState, OrgApacheLuceneIndexMultiTerms *multiTerms) {
  OrgApacheLuceneIndexMappedMultiFields_MappedMultiTerms *self = [OrgApacheLuceneIndexMappedMultiFields_MappedMultiTerms alloc];
  OrgApacheLuceneIndexMappedMultiFields_MappedMultiTerms_initWithNSString_withOrgApacheLuceneIndexMergeState_withOrgApacheLuceneIndexMultiTerms_(self, field, mergeState, multiTerms);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexMappedMultiFields_MappedMultiTerms)

@implementation OrgApacheLuceneIndexMappedMultiFields_MappedMultiTermsEnum

- (instancetype)initWithNSString:(NSString *)field
withOrgApacheLuceneIndexMergeState:(OrgApacheLuceneIndexMergeState *)mergeState
withOrgApacheLuceneIndexMultiTermsEnum:(OrgApacheLuceneIndexMultiTermsEnum *)multiTermsEnum {
  OrgApacheLuceneIndexMappedMultiFields_MappedMultiTermsEnum_initWithNSString_withOrgApacheLuceneIndexMergeState_withOrgApacheLuceneIndexMultiTermsEnum_(self, field, mergeState, multiTermsEnum);
  return self;
}

- (jint)docFreq {
  @throw [new_JavaLangUnsupportedOperationException_init() autorelease];
}

- (jlong)totalTermFreq {
  @throw [new_JavaLangUnsupportedOperationException_init() autorelease];
}

- (OrgApacheLuceneIndexPostingsEnum *)postingsWithOrgApacheLuceneIndexPostingsEnum:(OrgApacheLuceneIndexPostingsEnum *)reuse
                                                                           withInt:(jint)flags {
  OrgApacheLuceneIndexMappingMultiPostingsEnum *mappingDocsAndPositionsEnum;
  if ([reuse isKindOfClass:[OrgApacheLuceneIndexMappingMultiPostingsEnum class]]) {
    OrgApacheLuceneIndexMappingMultiPostingsEnum *postings = (OrgApacheLuceneIndexMappingMultiPostingsEnum *) check_class_cast(reuse, [OrgApacheLuceneIndexMappingMultiPostingsEnum class]);
    if ([((NSString *) nil_chk(((OrgApacheLuceneIndexMappingMultiPostingsEnum *) nil_chk(postings))->field_)) isEqual:self->field_]) {
      mappingDocsAndPositionsEnum = postings;
    }
    else {
      mappingDocsAndPositionsEnum = [new_OrgApacheLuceneIndexMappingMultiPostingsEnum_initWithNSString_withOrgApacheLuceneIndexMergeState_(field_, mergeState_) autorelease];
    }
  }
  else {
    mappingDocsAndPositionsEnum = [new_OrgApacheLuceneIndexMappingMultiPostingsEnum_initWithNSString_withOrgApacheLuceneIndexMergeState_(field_, mergeState_) autorelease];
  }
  OrgApacheLuceneIndexMultiPostingsEnum *docsAndPositionsEnum = (OrgApacheLuceneIndexMultiPostingsEnum *) check_class_cast([((OrgApacheLuceneIndexTermsEnum *) nil_chk(in_)) postingsWithOrgApacheLuceneIndexPostingsEnum:((OrgApacheLuceneIndexMappingMultiPostingsEnum *) nil_chk(mappingDocsAndPositionsEnum))->multiDocsAndPositionsEnum_ withInt:flags], [OrgApacheLuceneIndexMultiPostingsEnum class]);
  [mappingDocsAndPositionsEnum resetWithOrgApacheLuceneIndexMultiPostingsEnum:docsAndPositionsEnum];
  return mappingDocsAndPositionsEnum;
}

- (void)dealloc {
  RELEASE_(mergeState_);
  RELEASE_(field_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:withOrgApacheLuceneIndexMergeState:withOrgApacheLuceneIndexMultiTermsEnum:", "MappedMultiTermsEnum", NULL, 0x1, NULL, NULL },
    { "docFreq", NULL, "I", 0x1, "Ljava.io.IOException;", NULL },
    { "totalTermFreq", NULL, "J", 0x1, "Ljava.io.IOException;", NULL },
    { "postingsWithOrgApacheLuceneIndexPostingsEnum:withInt:", "postings", "Lorg.apache.lucene.index.PostingsEnum;", 0x1, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "mergeState_", NULL, 0x10, "Lorg.apache.lucene.index.MergeState;", NULL, NULL, .constantValue.asLong = 0 },
    { "field_", NULL, 0x10, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexMappedMultiFields_MappedMultiTermsEnum = { 2, "MappedMultiTermsEnum", "org.apache.lucene.index", "MappedMultiFields", 0xa, 4, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneIndexMappedMultiFields_MappedMultiTermsEnum;
}

@end

void OrgApacheLuceneIndexMappedMultiFields_MappedMultiTermsEnum_initWithNSString_withOrgApacheLuceneIndexMergeState_withOrgApacheLuceneIndexMultiTermsEnum_(OrgApacheLuceneIndexMappedMultiFields_MappedMultiTermsEnum *self, NSString *field, OrgApacheLuceneIndexMergeState *mergeState, OrgApacheLuceneIndexMultiTermsEnum *multiTermsEnum) {
  OrgApacheLuceneIndexFilterLeafReader_FilterTermsEnum_initWithOrgApacheLuceneIndexTermsEnum_(self, multiTermsEnum);
  JreStrongAssign(&self->field_, field);
  JreStrongAssign(&self->mergeState_, mergeState);
}

OrgApacheLuceneIndexMappedMultiFields_MappedMultiTermsEnum *new_OrgApacheLuceneIndexMappedMultiFields_MappedMultiTermsEnum_initWithNSString_withOrgApacheLuceneIndexMergeState_withOrgApacheLuceneIndexMultiTermsEnum_(NSString *field, OrgApacheLuceneIndexMergeState *mergeState, OrgApacheLuceneIndexMultiTermsEnum *multiTermsEnum) {
  OrgApacheLuceneIndexMappedMultiFields_MappedMultiTermsEnum *self = [OrgApacheLuceneIndexMappedMultiFields_MappedMultiTermsEnum alloc];
  OrgApacheLuceneIndexMappedMultiFields_MappedMultiTermsEnum_initWithNSString_withOrgApacheLuceneIndexMergeState_withOrgApacheLuceneIndexMultiTermsEnum_(self, field, mergeState, multiTermsEnum);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexMappedMultiFields_MappedMultiTermsEnum)