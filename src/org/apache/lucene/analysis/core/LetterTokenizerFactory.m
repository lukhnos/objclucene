//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/core/LetterTokenizerFactory.java
//

#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/util/Map.h"
#include "org/apache/lucene/analysis/core/LetterTokenizer.h"
#include "org/apache/lucene/analysis/core/LetterTokenizerFactory.h"
#include "org/apache/lucene/analysis/util/TokenizerFactory.h"
#include "org/apache/lucene/util/AttributeFactory.h"

@implementation OrgApacheLuceneAnalysisCoreLetterTokenizerFactory

- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)args {
  OrgApacheLuceneAnalysisCoreLetterTokenizerFactory_initWithJavaUtilMap_(self, args);
  return self;
}

- (OrgApacheLuceneAnalysisCoreLetterTokenizer *)createWithOrgApacheLuceneUtilAttributeFactory:(OrgApacheLuceneUtilAttributeFactory *)factory {
  return [new_OrgApacheLuceneAnalysisCoreLetterTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_(factory) autorelease];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithJavaUtilMap:", "LetterTokenizerFactory", NULL, 0x1, NULL, NULL },
    { "createWithOrgApacheLuceneUtilAttributeFactory:", "create", "Lorg.apache.lucene.analysis.core.LetterTokenizer;", 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisCoreLetterTokenizerFactory = { 2, "LetterTokenizerFactory", "org.apache.lucene.analysis.core", NULL, 0x1, 2, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisCoreLetterTokenizerFactory;
}

@end

void OrgApacheLuceneAnalysisCoreLetterTokenizerFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisCoreLetterTokenizerFactory *self, id<JavaUtilMap> args) {
  OrgApacheLuceneAnalysisUtilTokenizerFactory_initWithJavaUtilMap_(self, args);
  if (![((id<JavaUtilMap>) nil_chk(args)) isEmpty]) {
    @throw [new_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$@", @"Unknown parameters: ", args)) autorelease];
  }
}

OrgApacheLuceneAnalysisCoreLetterTokenizerFactory *new_OrgApacheLuceneAnalysisCoreLetterTokenizerFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) {
  OrgApacheLuceneAnalysisCoreLetterTokenizerFactory *self = [OrgApacheLuceneAnalysisCoreLetterTokenizerFactory alloc];
  OrgApacheLuceneAnalysisCoreLetterTokenizerFactory_initWithJavaUtilMap_(self, args);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisCoreLetterTokenizerFactory)
