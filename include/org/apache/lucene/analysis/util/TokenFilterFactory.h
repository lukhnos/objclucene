//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/util/TokenFilterFactory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneAnalysisUtilTokenFilterFactory_INCLUDE_ALL")
#if OrgApacheLuceneAnalysisUtilTokenFilterFactory_RESTRICT
#define OrgApacheLuceneAnalysisUtilTokenFilterFactory_INCLUDE_ALL 0
#else
#define OrgApacheLuceneAnalysisUtilTokenFilterFactory_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneAnalysisUtilTokenFilterFactory_RESTRICT

#if !defined (_OrgApacheLuceneAnalysisUtilTokenFilterFactory_) && (OrgApacheLuceneAnalysisUtilTokenFilterFactory_INCLUDE_ALL || OrgApacheLuceneAnalysisUtilTokenFilterFactory_INCLUDE)
#define _OrgApacheLuceneAnalysisUtilTokenFilterFactory_

#define OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory_RESTRICT 1
#define OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory_INCLUDE 1
#include "org/apache/lucene/analysis/util/AbstractAnalysisFactory.h"

@class IOSClass;
@class JavaLangClassLoader;
@class OrgApacheLuceneAnalysisTokenStream;
@protocol JavaUtilMap;
@protocol JavaUtilSet;

@interface OrgApacheLuceneAnalysisUtilTokenFilterFactory : OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory

#pragma mark Public

+ (id<JavaUtilSet>)availableTokenFilters;

- (OrgApacheLuceneAnalysisTokenStream *)createWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input;

+ (OrgApacheLuceneAnalysisUtilTokenFilterFactory *)forNameWithNSString:(NSString *)name
                                                       withJavaUtilMap:(id<JavaUtilMap>)args;

+ (IOSClass *)lookupClassWithNSString:(NSString *)name;

+ (void)reloadTokenFiltersWithJavaLangClassLoader:(JavaLangClassLoader *)classloader;

#pragma mark Protected

- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)args;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneAnalysisUtilTokenFilterFactory)

FOUNDATION_EXPORT OrgApacheLuceneAnalysisUtilTokenFilterFactory *OrgApacheLuceneAnalysisUtilTokenFilterFactory_forNameWithNSString_withJavaUtilMap_(NSString *name, id<JavaUtilMap> args);

FOUNDATION_EXPORT IOSClass *OrgApacheLuceneAnalysisUtilTokenFilterFactory_lookupClassWithNSString_(NSString *name);

FOUNDATION_EXPORT id<JavaUtilSet> OrgApacheLuceneAnalysisUtilTokenFilterFactory_availableTokenFilters();

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisUtilTokenFilterFactory_reloadTokenFiltersWithJavaLangClassLoader_(JavaLangClassLoader *classloader);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisUtilTokenFilterFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisUtilTokenFilterFactory *self, id<JavaUtilMap> args);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisUtilTokenFilterFactory)

#endif

#pragma pop_macro("OrgApacheLuceneAnalysisUtilTokenFilterFactory_INCLUDE_ALL")
