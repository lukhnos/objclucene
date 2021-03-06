//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/payloads/TypeAsPayloadTokenFilterFactory.java
//

#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/util/Map.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/payloads/TypeAsPayloadTokenFilter.h"
#include "org/apache/lucene/analysis/payloads/TypeAsPayloadTokenFilterFactory.h"
#include "org/apache/lucene/analysis/util/TokenFilterFactory.h"

@implementation OrgApacheLuceneAnalysisPayloadsTypeAsPayloadTokenFilterFactory

- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)args {
  OrgApacheLuceneAnalysisPayloadsTypeAsPayloadTokenFilterFactory_initWithJavaUtilMap_(self, args);
  return self;
}

- (OrgApacheLuceneAnalysisPayloadsTypeAsPayloadTokenFilter *)createWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input {
  return create_OrgApacheLuceneAnalysisPayloadsTypeAsPayloadTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_(input);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithJavaUtilMap:", "TypeAsPayloadTokenFilterFactory", NULL, 0x1, NULL, "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;)V" },
    { "createWithOrgApacheLuceneAnalysisTokenStream:", "create", "Lorg.apache.lucene.analysis.payloads.TypeAsPayloadTokenFilter;", 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisPayloadsTypeAsPayloadTokenFilterFactory = { 2, "TypeAsPayloadTokenFilterFactory", "org.apache.lucene.analysis.payloads", NULL, 0x1, 2, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisPayloadsTypeAsPayloadTokenFilterFactory;
}

@end

void OrgApacheLuceneAnalysisPayloadsTypeAsPayloadTokenFilterFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisPayloadsTypeAsPayloadTokenFilterFactory *self, id<JavaUtilMap> args) {
  OrgApacheLuceneAnalysisUtilTokenFilterFactory_initWithJavaUtilMap_(self, args);
  if (![((id<JavaUtilMap>) nil_chk(args)) isEmpty]) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$@", @"Unknown parameters: ", args));
  }
}

OrgApacheLuceneAnalysisPayloadsTypeAsPayloadTokenFilterFactory *new_OrgApacheLuceneAnalysisPayloadsTypeAsPayloadTokenFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisPayloadsTypeAsPayloadTokenFilterFactory, initWithJavaUtilMap_, args)
}

OrgApacheLuceneAnalysisPayloadsTypeAsPayloadTokenFilterFactory *create_OrgApacheLuceneAnalysisPayloadsTypeAsPayloadTokenFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisPayloadsTypeAsPayloadTokenFilterFactory, initWithJavaUtilMap_, args)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisPayloadsTypeAsPayloadTokenFilterFactory)
