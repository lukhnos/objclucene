//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/miscellaneous/KeywordRepeatFilterFactory.java
//

#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/util/Map.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/miscellaneous/KeywordRepeatFilter.h"
#include "org/apache/lucene/analysis/miscellaneous/KeywordRepeatFilterFactory.h"
#include "org/apache/lucene/analysis/util/TokenFilterFactory.h"

@implementation OrgApacheLuceneAnalysisMiscellaneousKeywordRepeatFilterFactory

- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)args {
  OrgApacheLuceneAnalysisMiscellaneousKeywordRepeatFilterFactory_initWithJavaUtilMap_(self, args);
  return self;
}

- (OrgApacheLuceneAnalysisTokenStream *)createWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input {
  return [new_OrgApacheLuceneAnalysisMiscellaneousKeywordRepeatFilter_initWithOrgApacheLuceneAnalysisTokenStream_(input) autorelease];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithJavaUtilMap:", "KeywordRepeatFilterFactory", NULL, 0x1, NULL, NULL },
    { "createWithOrgApacheLuceneAnalysisTokenStream:", "create", "Lorg.apache.lucene.analysis.TokenStream;", 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisMiscellaneousKeywordRepeatFilterFactory = { 2, "KeywordRepeatFilterFactory", "org.apache.lucene.analysis.miscellaneous", NULL, 0x11, 2, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisMiscellaneousKeywordRepeatFilterFactory;
}

@end

void OrgApacheLuceneAnalysisMiscellaneousKeywordRepeatFilterFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisMiscellaneousKeywordRepeatFilterFactory *self, id<JavaUtilMap> args) {
  OrgApacheLuceneAnalysisUtilTokenFilterFactory_initWithJavaUtilMap_(self, args);
  if (![((id<JavaUtilMap>) nil_chk(args)) isEmpty]) {
    @throw [new_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$@", @"Unknown parameters: ", args)) autorelease];
  }
}

OrgApacheLuceneAnalysisMiscellaneousKeywordRepeatFilterFactory *new_OrgApacheLuceneAnalysisMiscellaneousKeywordRepeatFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) {
  OrgApacheLuceneAnalysisMiscellaneousKeywordRepeatFilterFactory *self = [OrgApacheLuceneAnalysisMiscellaneousKeywordRepeatFilterFactory alloc];
  OrgApacheLuceneAnalysisMiscellaneousKeywordRepeatFilterFactory_initWithJavaUtilMap_(self, args);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisMiscellaneousKeywordRepeatFilterFactory)
