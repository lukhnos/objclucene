//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/standard/ClassicTokenizerFactory.java
//

#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/util/Map.h"
#include "org/apache/lucene/analysis/standard/ClassicTokenizer.h"
#include "org/apache/lucene/analysis/standard/ClassicTokenizerFactory.h"
#include "org/apache/lucene/analysis/standard/StandardAnalyzer.h"
#include "org/apache/lucene/analysis/util/AbstractAnalysisFactory.h"
#include "org/apache/lucene/analysis/util/TokenizerFactory.h"
#include "org/apache/lucene/util/AttributeFactory.h"

@interface OrgApacheLuceneAnalysisStandardClassicTokenizerFactory () {
 @public
  jint maxTokenLength_;
}

@end

@implementation OrgApacheLuceneAnalysisStandardClassicTokenizerFactory

- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)args {
  OrgApacheLuceneAnalysisStandardClassicTokenizerFactory_initWithJavaUtilMap_(self, args);
  return self;
}

- (OrgApacheLuceneAnalysisStandardClassicTokenizer *)createWithOrgApacheLuceneUtilAttributeFactory:(OrgApacheLuceneUtilAttributeFactory *)factory {
  OrgApacheLuceneAnalysisStandardClassicTokenizer *tokenizer = create_OrgApacheLuceneAnalysisStandardClassicTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_(factory);
  [tokenizer setMaxTokenLengthWithInt:maxTokenLength_];
  return tokenizer;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithJavaUtilMap:", "ClassicTokenizerFactory", NULL, 0x1, NULL, "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;)V" },
    { "createWithOrgApacheLuceneUtilAttributeFactory:", "create", "Lorg.apache.lucene.analysis.standard.ClassicTokenizer;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "maxTokenLength_", NULL, 0x12, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisStandardClassicTokenizerFactory = { 2, "ClassicTokenizerFactory", "org.apache.lucene.analysis.standard", NULL, 0x1, 2, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisStandardClassicTokenizerFactory;
}

@end

void OrgApacheLuceneAnalysisStandardClassicTokenizerFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisStandardClassicTokenizerFactory *self, id<JavaUtilMap> args) {
  OrgApacheLuceneAnalysisUtilTokenizerFactory_initWithJavaUtilMap_(self, args);
  self->maxTokenLength_ = [self getIntWithJavaUtilMap:args withNSString:@"maxTokenLength" withInt:OrgApacheLuceneAnalysisStandardStandardAnalyzer_DEFAULT_MAX_TOKEN_LENGTH];
  if (![((id<JavaUtilMap>) nil_chk(args)) isEmpty]) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$@", @"Unknown parameters: ", args));
  }
}

OrgApacheLuceneAnalysisStandardClassicTokenizerFactory *new_OrgApacheLuceneAnalysisStandardClassicTokenizerFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisStandardClassicTokenizerFactory, initWithJavaUtilMap_, args)
}

OrgApacheLuceneAnalysisStandardClassicTokenizerFactory *create_OrgApacheLuceneAnalysisStandardClassicTokenizerFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisStandardClassicTokenizerFactory, initWithJavaUtilMap_, args)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisStandardClassicTokenizerFactory)
