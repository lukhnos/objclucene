//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/TermRangeFilter.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/lang/Deprecated.h"
#include "org/apache/lucene/search/MultiTermQueryWrapperFilter.h"
#include "org/apache/lucene/search/TermRangeFilter.h"
#include "org/apache/lucene/search/TermRangeQuery.h"
#include "org/apache/lucene/util/BytesRef.h"

@implementation OrgApacheLuceneSearchTermRangeFilter

- (instancetype)initWithNSString:(NSString *)fieldName
 withOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)lowerTerm
 withOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)upperTerm
                     withBoolean:(jboolean)includeLower
                     withBoolean:(jboolean)includeUpper {
  OrgApacheLuceneSearchTermRangeFilter_initWithNSString_withOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneUtilBytesRef_withBoolean_withBoolean_(self, fieldName, lowerTerm, upperTerm, includeLower, includeUpper);
  return self;
}

+ (OrgApacheLuceneSearchTermRangeFilter *)newStringRangeWithNSString:(NSString *)field
                                                        withNSString:(NSString *)lowerTerm
                                                        withNSString:(NSString *)upperTerm
                                                         withBoolean:(jboolean)includeLower
                                                         withBoolean:(jboolean)includeUpper {
  return OrgApacheLuceneSearchTermRangeFilter_newStringRangeWithNSString_withNSString_withNSString_withBoolean_withBoolean_(field, lowerTerm, upperTerm, includeLower, includeUpper);
}

+ (OrgApacheLuceneSearchTermRangeFilter *)LessWithNSString:(NSString *)fieldName
                           withOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)upperTerm {
  return OrgApacheLuceneSearchTermRangeFilter_LessWithNSString_withOrgApacheLuceneUtilBytesRef_(fieldName, upperTerm);
}

+ (OrgApacheLuceneSearchTermRangeFilter *)MoreWithNSString:(NSString *)fieldName
                           withOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)lowerTerm {
  return OrgApacheLuceneSearchTermRangeFilter_MoreWithNSString_withOrgApacheLuceneUtilBytesRef_(fieldName, lowerTerm);
}

- (OrgApacheLuceneUtilBytesRef *)getLowerTerm {
  return [((OrgApacheLuceneSearchTermRangeQuery *) nil_chk(query_)) getLowerTerm];
}

- (OrgApacheLuceneUtilBytesRef *)getUpperTerm {
  return [((OrgApacheLuceneSearchTermRangeQuery *) nil_chk(query_)) getUpperTerm];
}

- (jboolean)includesLower {
  return [((OrgApacheLuceneSearchTermRangeQuery *) nil_chk(query_)) includesLower];
}

- (jboolean)includesUpper {
  return [((OrgApacheLuceneSearchTermRangeQuery *) nil_chk(query_)) includesUpper];
}

+ (IOSObjectArray *)__annotations {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[[JavaLangDeprecated alloc] init] autorelease] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:withOrgApacheLuceneUtilBytesRef:withOrgApacheLuceneUtilBytesRef:withBoolean:withBoolean:", "TermRangeFilter", NULL, 0x1, NULL, NULL },
    { "newStringRangeWithNSString:withNSString:withNSString:withBoolean:withBoolean:", "newStringRange", "Lorg.apache.lucene.search.TermRangeFilter;", 0x9, NULL, NULL },
    { "LessWithNSString:withOrgApacheLuceneUtilBytesRef:", "Less", "Lorg.apache.lucene.search.TermRangeFilter;", 0x9, NULL, NULL },
    { "MoreWithNSString:withOrgApacheLuceneUtilBytesRef:", "More", "Lorg.apache.lucene.search.TermRangeFilter;", 0x9, NULL, NULL },
    { "getLowerTerm", NULL, "Lorg.apache.lucene.util.BytesRef;", 0x1, NULL, NULL },
    { "getUpperTerm", NULL, "Lorg.apache.lucene.util.BytesRef;", 0x1, NULL, NULL },
    { "includesLower", NULL, "Z", 0x1, NULL, NULL },
    { "includesUpper", NULL, "Z", 0x1, NULL, NULL },
  };
  static const char *superclass_type_args[] = {"Lorg.apache.lucene.search.TermRangeQuery;"};
  static const J2ObjcClassInfo _OrgApacheLuceneSearchTermRangeFilter = { 2, "TermRangeFilter", "org.apache.lucene.search", NULL, 0x1, 8, methods, 0, NULL, 1, superclass_type_args, 0, NULL, NULL, "Lorg/apache/lucene/search/MultiTermQueryWrapperFilter<Lorg/apache/lucene/search/TermRangeQuery;>;" };
  return &_OrgApacheLuceneSearchTermRangeFilter;
}

@end

void OrgApacheLuceneSearchTermRangeFilter_initWithNSString_withOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneUtilBytesRef_withBoolean_withBoolean_(OrgApacheLuceneSearchTermRangeFilter *self, NSString *fieldName, OrgApacheLuceneUtilBytesRef *lowerTerm, OrgApacheLuceneUtilBytesRef *upperTerm, jboolean includeLower, jboolean includeUpper) {
  OrgApacheLuceneSearchMultiTermQueryWrapperFilter_initWithOrgApacheLuceneSearchMultiTermQuery_(self, [new_OrgApacheLuceneSearchTermRangeQuery_initWithNSString_withOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneUtilBytesRef_withBoolean_withBoolean_(fieldName, lowerTerm, upperTerm, includeLower, includeUpper) autorelease]);
}

OrgApacheLuceneSearchTermRangeFilter *new_OrgApacheLuceneSearchTermRangeFilter_initWithNSString_withOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneUtilBytesRef_withBoolean_withBoolean_(NSString *fieldName, OrgApacheLuceneUtilBytesRef *lowerTerm, OrgApacheLuceneUtilBytesRef *upperTerm, jboolean includeLower, jboolean includeUpper) {
  OrgApacheLuceneSearchTermRangeFilter *self = [OrgApacheLuceneSearchTermRangeFilter alloc];
  OrgApacheLuceneSearchTermRangeFilter_initWithNSString_withOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneUtilBytesRef_withBoolean_withBoolean_(self, fieldName, lowerTerm, upperTerm, includeLower, includeUpper);
  return self;
}

OrgApacheLuceneSearchTermRangeFilter *OrgApacheLuceneSearchTermRangeFilter_newStringRangeWithNSString_withNSString_withNSString_withBoolean_withBoolean_(NSString *field, NSString *lowerTerm, NSString *upperTerm, jboolean includeLower, jboolean includeUpper) {
  OrgApacheLuceneSearchTermRangeFilter_initialize();
  OrgApacheLuceneUtilBytesRef *lower = lowerTerm == nil ? nil : [new_OrgApacheLuceneUtilBytesRef_initWithJavaLangCharSequence_(lowerTerm) autorelease];
  OrgApacheLuceneUtilBytesRef *upper = upperTerm == nil ? nil : [new_OrgApacheLuceneUtilBytesRef_initWithJavaLangCharSequence_(upperTerm) autorelease];
  return [new_OrgApacheLuceneSearchTermRangeFilter_initWithNSString_withOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneUtilBytesRef_withBoolean_withBoolean_(field, lower, upper, includeLower, includeUpper) autorelease];
}

OrgApacheLuceneSearchTermRangeFilter *OrgApacheLuceneSearchTermRangeFilter_LessWithNSString_withOrgApacheLuceneUtilBytesRef_(NSString *fieldName, OrgApacheLuceneUtilBytesRef *upperTerm) {
  OrgApacheLuceneSearchTermRangeFilter_initialize();
  return [new_OrgApacheLuceneSearchTermRangeFilter_initWithNSString_withOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneUtilBytesRef_withBoolean_withBoolean_(fieldName, nil, upperTerm, NO, YES) autorelease];
}

OrgApacheLuceneSearchTermRangeFilter *OrgApacheLuceneSearchTermRangeFilter_MoreWithNSString_withOrgApacheLuceneUtilBytesRef_(NSString *fieldName, OrgApacheLuceneUtilBytesRef *lowerTerm) {
  OrgApacheLuceneSearchTermRangeFilter_initialize();
  return [new_OrgApacheLuceneSearchTermRangeFilter_initWithNSString_withOrgApacheLuceneUtilBytesRef_withOrgApacheLuceneUtilBytesRef_withBoolean_withBoolean_(fieldName, lowerTerm, nil, YES, NO) autorelease];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchTermRangeFilter)
