//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/gl/GalicianStemFilterFactory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneAnalysisGlGalicianStemFilterFactory_INCLUDE_ALL")
#if OrgApacheLuceneAnalysisGlGalicianStemFilterFactory_RESTRICT
#define OrgApacheLuceneAnalysisGlGalicianStemFilterFactory_INCLUDE_ALL 0
#else
#define OrgApacheLuceneAnalysisGlGalicianStemFilterFactory_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneAnalysisGlGalicianStemFilterFactory_RESTRICT

#if !defined (_OrgApacheLuceneAnalysisGlGalicianStemFilterFactory_) && (OrgApacheLuceneAnalysisGlGalicianStemFilterFactory_INCLUDE_ALL || OrgApacheLuceneAnalysisGlGalicianStemFilterFactory_INCLUDE)
#define _OrgApacheLuceneAnalysisGlGalicianStemFilterFactory_

#define OrgApacheLuceneAnalysisUtilTokenFilterFactory_RESTRICT 1
#define OrgApacheLuceneAnalysisUtilTokenFilterFactory_INCLUDE 1
#include "org/apache/lucene/analysis/util/TokenFilterFactory.h"

@class OrgApacheLuceneAnalysisTokenStream;
@protocol JavaUtilMap;

@interface OrgApacheLuceneAnalysisGlGalicianStemFilterFactory : OrgApacheLuceneAnalysisUtilTokenFilterFactory

#pragma mark Public

- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)args;

- (OrgApacheLuceneAnalysisTokenStream *)createWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisGlGalicianStemFilterFactory)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisGlGalicianStemFilterFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisGlGalicianStemFilterFactory *self, id<JavaUtilMap> args);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisGlGalicianStemFilterFactory *new_OrgApacheLuceneAnalysisGlGalicianStemFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisGlGalicianStemFilterFactory)

#endif

#pragma pop_macro("OrgApacheLuceneAnalysisGlGalicianStemFilterFactory_INCLUDE_ALL")
