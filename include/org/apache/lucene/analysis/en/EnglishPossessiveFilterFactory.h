//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/en/EnglishPossessiveFilterFactory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneAnalysisEnEnglishPossessiveFilterFactory_INCLUDE_ALL")
#if OrgApacheLuceneAnalysisEnEnglishPossessiveFilterFactory_RESTRICT
#define OrgApacheLuceneAnalysisEnEnglishPossessiveFilterFactory_INCLUDE_ALL 0
#else
#define OrgApacheLuceneAnalysisEnEnglishPossessiveFilterFactory_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneAnalysisEnEnglishPossessiveFilterFactory_RESTRICT

#if !defined (_OrgApacheLuceneAnalysisEnEnglishPossessiveFilterFactory_) && (OrgApacheLuceneAnalysisEnEnglishPossessiveFilterFactory_INCLUDE_ALL || OrgApacheLuceneAnalysisEnEnglishPossessiveFilterFactory_INCLUDE)
#define _OrgApacheLuceneAnalysisEnEnglishPossessiveFilterFactory_

#define OrgApacheLuceneAnalysisUtilTokenFilterFactory_RESTRICT 1
#define OrgApacheLuceneAnalysisUtilTokenFilterFactory_INCLUDE 1
#include "org/apache/lucene/analysis/util/TokenFilterFactory.h"

@class OrgApacheLuceneAnalysisTokenStream;
@protocol JavaUtilMap;

@interface OrgApacheLuceneAnalysisEnEnglishPossessiveFilterFactory : OrgApacheLuceneAnalysisUtilTokenFilterFactory

#pragma mark Public

- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)args;

- (OrgApacheLuceneAnalysisTokenStream *)createWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisEnEnglishPossessiveFilterFactory)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisEnEnglishPossessiveFilterFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisEnEnglishPossessiveFilterFactory *self, id<JavaUtilMap> args);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisEnEnglishPossessiveFilterFactory *new_OrgApacheLuceneAnalysisEnEnglishPossessiveFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisEnEnglishPossessiveFilterFactory)

#endif

#pragma pop_macro("OrgApacheLuceneAnalysisEnEnglishPossessiveFilterFactory_INCLUDE_ALL")
