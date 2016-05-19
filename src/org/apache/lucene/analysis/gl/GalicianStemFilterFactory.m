//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/gl/GalicianStemFilterFactory.java
//

#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/util/Map.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/gl/GalicianStemFilter.h"
#include "org/apache/lucene/analysis/gl/GalicianStemFilterFactory.h"
#include "org/apache/lucene/analysis/util/TokenFilterFactory.h"

@implementation OrgApacheLuceneAnalysisGlGalicianStemFilterFactory

- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)args {
  OrgApacheLuceneAnalysisGlGalicianStemFilterFactory_initWithJavaUtilMap_(self, args);
  return self;
}

- (OrgApacheLuceneAnalysisTokenStream *)createWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input {
  return create_OrgApacheLuceneAnalysisGlGalicianStemFilter_initWithOrgApacheLuceneAnalysisTokenStream_(input);
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithJavaUtilMap:", "GalicianStemFilterFactory", NULL, 0x1, NULL, "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;)V" },
    { "createWithOrgApacheLuceneAnalysisTokenStream:", "create", "Lorg.apache.lucene.analysis.TokenStream;", 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisGlGalicianStemFilterFactory = { 2, "GalicianStemFilterFactory", "org.apache.lucene.analysis.gl", NULL, 0x1, 2, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisGlGalicianStemFilterFactory;
}

@end

void OrgApacheLuceneAnalysisGlGalicianStemFilterFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisGlGalicianStemFilterFactory *self, id<JavaUtilMap> args) {
  OrgApacheLuceneAnalysisUtilTokenFilterFactory_initWithJavaUtilMap_(self, args);
  if (![((id<JavaUtilMap>) nil_chk(args)) isEmpty]) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$@", @"Unknown parameters: ", args));
  }
}

OrgApacheLuceneAnalysisGlGalicianStemFilterFactory *new_OrgApacheLuceneAnalysisGlGalicianStemFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisGlGalicianStemFilterFactory, initWithJavaUtilMap_, args)
}

OrgApacheLuceneAnalysisGlGalicianStemFilterFactory *create_OrgApacheLuceneAnalysisGlGalicianStemFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisGlGalicianStemFilterFactory, initWithJavaUtilMap_, args)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisGlGalicianStemFilterFactory)
