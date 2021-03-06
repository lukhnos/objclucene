//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/miscellaneous/ASCIIFoldingFilterFactory.java
//

#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/util/Map.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/miscellaneous/ASCIIFoldingFilter.h"
#include "org/apache/lucene/analysis/miscellaneous/ASCIIFoldingFilterFactory.h"
#include "org/apache/lucene/analysis/util/AbstractAnalysisFactory.h"
#include "org/apache/lucene/analysis/util/TokenFilterFactory.h"

@interface OrgApacheLuceneAnalysisMiscellaneousASCIIFoldingFilterFactory () {
 @public
  jboolean preserveOriginal_;
}

@end

@implementation OrgApacheLuceneAnalysisMiscellaneousASCIIFoldingFilterFactory

- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)args {
  OrgApacheLuceneAnalysisMiscellaneousASCIIFoldingFilterFactory_initWithJavaUtilMap_(self, args);
  return self;
}

- (OrgApacheLuceneAnalysisMiscellaneousASCIIFoldingFilter *)createWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input {
  return create_OrgApacheLuceneAnalysisMiscellaneousASCIIFoldingFilter_initWithOrgApacheLuceneAnalysisTokenStream_withBoolean_(input, preserveOriginal_);
}

- (OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory *)getMultiTermComponent {
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithJavaUtilMap:", "ASCIIFoldingFilterFactory", NULL, 0x1, NULL, "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;)V" },
    { "createWithOrgApacheLuceneAnalysisTokenStream:", "create", "Lorg.apache.lucene.analysis.miscellaneous.ASCIIFoldingFilter;", 0x1, NULL, NULL },
    { "getMultiTermComponent", NULL, "Lorg.apache.lucene.analysis.util.AbstractAnalysisFactory;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "preserveOriginal_", NULL, 0x12, "Z", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisMiscellaneousASCIIFoldingFilterFactory = { 2, "ASCIIFoldingFilterFactory", "org.apache.lucene.analysis.miscellaneous", NULL, 0x1, 3, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisMiscellaneousASCIIFoldingFilterFactory;
}

@end

void OrgApacheLuceneAnalysisMiscellaneousASCIIFoldingFilterFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisMiscellaneousASCIIFoldingFilterFactory *self, id<JavaUtilMap> args) {
  OrgApacheLuceneAnalysisUtilTokenFilterFactory_initWithJavaUtilMap_(self, args);
  self->preserveOriginal_ = [self getBooleanWithJavaUtilMap:args withNSString:@"preserveOriginal" withBoolean:false];
  if (![((id<JavaUtilMap>) nil_chk(args)) isEmpty]) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$@", @"Unknown parameters: ", args));
  }
}

OrgApacheLuceneAnalysisMiscellaneousASCIIFoldingFilterFactory *new_OrgApacheLuceneAnalysisMiscellaneousASCIIFoldingFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisMiscellaneousASCIIFoldingFilterFactory, initWithJavaUtilMap_, args)
}

OrgApacheLuceneAnalysisMiscellaneousASCIIFoldingFilterFactory *create_OrgApacheLuceneAnalysisMiscellaneousASCIIFoldingFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisMiscellaneousASCIIFoldingFilterFactory, initWithJavaUtilMap_, args)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisMiscellaneousASCIIFoldingFilterFactory)
