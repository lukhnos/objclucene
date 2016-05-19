//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/core/KeywordTokenizerFactory.java
//

#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/util/Map.h"
#include "org/apache/lucene/analysis/core/KeywordTokenizer.h"
#include "org/apache/lucene/analysis/core/KeywordTokenizerFactory.h"
#include "org/apache/lucene/analysis/util/TokenizerFactory.h"
#include "org/apache/lucene/util/AttributeFactory.h"

@implementation OrgApacheLuceneAnalysisCoreKeywordTokenizerFactory

- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)args {
  OrgApacheLuceneAnalysisCoreKeywordTokenizerFactory_initWithJavaUtilMap_(self, args);
  return self;
}

- (OrgApacheLuceneAnalysisCoreKeywordTokenizer *)createWithOrgApacheLuceneUtilAttributeFactory:(OrgApacheLuceneUtilAttributeFactory *)factory {
  return create_OrgApacheLuceneAnalysisCoreKeywordTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_withInt_(factory, OrgApacheLuceneAnalysisCoreKeywordTokenizer_DEFAULT_BUFFER_SIZE);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithJavaUtilMap:", "KeywordTokenizerFactory", NULL, 0x1, NULL, "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;)V" },
    { "createWithOrgApacheLuceneUtilAttributeFactory:", "create", "Lorg.apache.lucene.analysis.core.KeywordTokenizer;", 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisCoreKeywordTokenizerFactory = { 2, "KeywordTokenizerFactory", "org.apache.lucene.analysis.core", NULL, 0x1, 2, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisCoreKeywordTokenizerFactory;
}

@end

void OrgApacheLuceneAnalysisCoreKeywordTokenizerFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisCoreKeywordTokenizerFactory *self, id<JavaUtilMap> args) {
  OrgApacheLuceneAnalysisUtilTokenizerFactory_initWithJavaUtilMap_(self, args);
  if (![((id<JavaUtilMap>) nil_chk(args)) isEmpty]) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$@", @"Unknown parameters: ", args));
  }
}

OrgApacheLuceneAnalysisCoreKeywordTokenizerFactory *new_OrgApacheLuceneAnalysisCoreKeywordTokenizerFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisCoreKeywordTokenizerFactory, initWithJavaUtilMap_, args)
}

OrgApacheLuceneAnalysisCoreKeywordTokenizerFactory *create_OrgApacheLuceneAnalysisCoreKeywordTokenizerFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisCoreKeywordTokenizerFactory, initWithJavaUtilMap_, args)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisCoreKeywordTokenizerFactory)
