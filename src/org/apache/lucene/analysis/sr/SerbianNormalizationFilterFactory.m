//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/sr/SerbianNormalizationFilterFactory.java
//

#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/util/Map.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/sr/SerbianNormalizationFilter.h"
#include "org/apache/lucene/analysis/sr/SerbianNormalizationFilterFactory.h"
#include "org/apache/lucene/analysis/util/AbstractAnalysisFactory.h"
#include "org/apache/lucene/analysis/util/TokenFilterFactory.h"

@implementation OrgApacheLuceneAnalysisSrSerbianNormalizationFilterFactory

- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)args {
  OrgApacheLuceneAnalysisSrSerbianNormalizationFilterFactory_initWithJavaUtilMap_(self, args);
  return self;
}

- (OrgApacheLuceneAnalysisTokenStream *)createWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input {
  return [new_OrgApacheLuceneAnalysisSrSerbianNormalizationFilter_initWithOrgApacheLuceneAnalysisTokenStream_(input) autorelease];
}

- (OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory *)getMultiTermComponent {
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithJavaUtilMap:", "SerbianNormalizationFilterFactory", NULL, 0x1, NULL, NULL },
    { "createWithOrgApacheLuceneAnalysisTokenStream:", "create", "Lorg.apache.lucene.analysis.TokenStream;", 0x1, NULL, NULL },
    { "getMultiTermComponent", NULL, "Lorg.apache.lucene.analysis.util.AbstractAnalysisFactory;", 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisSrSerbianNormalizationFilterFactory = { 2, "SerbianNormalizationFilterFactory", "org.apache.lucene.analysis.sr", NULL, 0x1, 3, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisSrSerbianNormalizationFilterFactory;
}

@end

void OrgApacheLuceneAnalysisSrSerbianNormalizationFilterFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisSrSerbianNormalizationFilterFactory *self, id<JavaUtilMap> args) {
  OrgApacheLuceneAnalysisUtilTokenFilterFactory_initWithJavaUtilMap_(self, args);
  if (![((id<JavaUtilMap>) nil_chk(args)) isEmpty]) {
    @throw [new_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$@", @"Unknown parameters: ", args)) autorelease];
  }
}

OrgApacheLuceneAnalysisSrSerbianNormalizationFilterFactory *new_OrgApacheLuceneAnalysisSrSerbianNormalizationFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) {
  OrgApacheLuceneAnalysisSrSerbianNormalizationFilterFactory *self = [OrgApacheLuceneAnalysisSrSerbianNormalizationFilterFactory alloc];
  OrgApacheLuceneAnalysisSrSerbianNormalizationFilterFactory_initWithJavaUtilMap_(self, args);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisSrSerbianNormalizationFilterFactory)
