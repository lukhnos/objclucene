//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/core/TypeTokenFilter.java
//

#include "J2ObjC_source.h"
#include "java/util/Set.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/core/TypeTokenFilter.h"
#include "org/apache/lucene/analysis/tokenattributes/TypeAttribute.h"
#include "org/apache/lucene/analysis/util/FilteringTokenFilter.h"
#include "org/apache/lucene/util/AttributeSource.h"

@interface OrgApacheLuceneAnalysisCoreTypeTokenFilter () {
 @public
  id<JavaUtilSet> stopTypes_;
  id<OrgApacheLuceneAnalysisTokenattributesTypeAttribute> typeAttribute_;
  jboolean useWhiteList_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisCoreTypeTokenFilter, stopTypes_, id<JavaUtilSet>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisCoreTypeTokenFilter, typeAttribute_, id<OrgApacheLuceneAnalysisTokenattributesTypeAttribute>)

@implementation OrgApacheLuceneAnalysisCoreTypeTokenFilter

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input
                                           withJavaUtilSet:(id<JavaUtilSet>)stopTypes
                                               withBoolean:(jboolean)useWhiteList {
  OrgApacheLuceneAnalysisCoreTypeTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_withJavaUtilSet_withBoolean_(self, input, stopTypes, useWhiteList);
  return self;
}

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input
                                           withJavaUtilSet:(id<JavaUtilSet>)stopTypes {
  OrgApacheLuceneAnalysisCoreTypeTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_withJavaUtilSet_(self, input, stopTypes);
  return self;
}

- (jboolean)accept {
  return useWhiteList_ == [((id<JavaUtilSet>) nil_chk(stopTypes_)) containsWithId:[((id<OrgApacheLuceneAnalysisTokenattributesTypeAttribute>) nil_chk(typeAttribute_)) type]];
}

- (void)dealloc {
  RELEASE_(stopTypes_);
  RELEASE_(typeAttribute_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneAnalysisTokenStream:withJavaUtilSet:withBoolean:", "TypeTokenFilter", NULL, 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneAnalysisTokenStream:withJavaUtilSet:", "TypeTokenFilter", NULL, 0x1, NULL, NULL },
    { "accept", NULL, "Z", 0x4, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "stopTypes_", NULL, 0x12, "Ljava.util.Set;", NULL, "Ljava/util/Set<Ljava/lang/String;>;", .constantValue.asLong = 0 },
    { "typeAttribute_", NULL, 0x12, "Lorg.apache.lucene.analysis.tokenattributes.TypeAttribute;", NULL, NULL, .constantValue.asLong = 0 },
    { "useWhiteList_", NULL, 0x12, "Z", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisCoreTypeTokenFilter = { 2, "TypeTokenFilter", "org.apache.lucene.analysis.core", NULL, 0x11, 3, methods, 3, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisCoreTypeTokenFilter;
}

@end

void OrgApacheLuceneAnalysisCoreTypeTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_withJavaUtilSet_withBoolean_(OrgApacheLuceneAnalysisCoreTypeTokenFilter *self, OrgApacheLuceneAnalysisTokenStream *input, id<JavaUtilSet> stopTypes, jboolean useWhiteList) {
  OrgApacheLuceneAnalysisUtilFilteringTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_(self, input);
  JreStrongAssign(&self->typeAttribute_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesTypeAttribute_class_()]);
  JreStrongAssign(&self->stopTypes_, stopTypes);
  self->useWhiteList_ = useWhiteList;
}

OrgApacheLuceneAnalysisCoreTypeTokenFilter *new_OrgApacheLuceneAnalysisCoreTypeTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_withJavaUtilSet_withBoolean_(OrgApacheLuceneAnalysisTokenStream *input, id<JavaUtilSet> stopTypes, jboolean useWhiteList) {
  OrgApacheLuceneAnalysisCoreTypeTokenFilter *self = [OrgApacheLuceneAnalysisCoreTypeTokenFilter alloc];
  OrgApacheLuceneAnalysisCoreTypeTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_withJavaUtilSet_withBoolean_(self, input, stopTypes, useWhiteList);
  return self;
}

void OrgApacheLuceneAnalysisCoreTypeTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_withJavaUtilSet_(OrgApacheLuceneAnalysisCoreTypeTokenFilter *self, OrgApacheLuceneAnalysisTokenStream *input, id<JavaUtilSet> stopTypes) {
  OrgApacheLuceneAnalysisCoreTypeTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_withJavaUtilSet_withBoolean_(self, input, stopTypes, NO);
}

OrgApacheLuceneAnalysisCoreTypeTokenFilter *new_OrgApacheLuceneAnalysisCoreTypeTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_withJavaUtilSet_(OrgApacheLuceneAnalysisTokenStream *input, id<JavaUtilSet> stopTypes) {
  OrgApacheLuceneAnalysisCoreTypeTokenFilter *self = [OrgApacheLuceneAnalysisCoreTypeTokenFilter alloc];
  OrgApacheLuceneAnalysisCoreTypeTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_withJavaUtilSet_(self, input, stopTypes);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisCoreTypeTokenFilter)
