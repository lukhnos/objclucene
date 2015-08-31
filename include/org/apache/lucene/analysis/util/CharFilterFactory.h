//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/util/CharFilterFactory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneAnalysisUtilCharFilterFactory_INCLUDE_ALL")
#if OrgApacheLuceneAnalysisUtilCharFilterFactory_RESTRICT
#define OrgApacheLuceneAnalysisUtilCharFilterFactory_INCLUDE_ALL 0
#else
#define OrgApacheLuceneAnalysisUtilCharFilterFactory_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneAnalysisUtilCharFilterFactory_RESTRICT

#if !defined (_OrgApacheLuceneAnalysisUtilCharFilterFactory_) && (OrgApacheLuceneAnalysisUtilCharFilterFactory_INCLUDE_ALL || OrgApacheLuceneAnalysisUtilCharFilterFactory_INCLUDE)
#define _OrgApacheLuceneAnalysisUtilCharFilterFactory_

#define OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory_RESTRICT 1
#define OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory_INCLUDE 1
#include "org/apache/lucene/analysis/util/AbstractAnalysisFactory.h"

@class IOSClass;
@class JavaIoReader;
@class JavaLangClassLoader;
@protocol JavaUtilMap;
@protocol JavaUtilSet;

@interface OrgApacheLuceneAnalysisUtilCharFilterFactory : OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory

#pragma mark Public

+ (id<JavaUtilSet>)availableCharFilters;

- (JavaIoReader *)createWithJavaIoReader:(JavaIoReader *)input;

+ (OrgApacheLuceneAnalysisUtilCharFilterFactory *)forNameWithNSString:(NSString *)name
                                                      withJavaUtilMap:(id<JavaUtilMap>)args;

+ (IOSClass *)lookupClassWithNSString:(NSString *)name;

+ (void)reloadCharFiltersWithJavaLangClassLoader:(JavaLangClassLoader *)classloader;

#pragma mark Protected

- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)args;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneAnalysisUtilCharFilterFactory)

FOUNDATION_EXPORT OrgApacheLuceneAnalysisUtilCharFilterFactory *OrgApacheLuceneAnalysisUtilCharFilterFactory_forNameWithNSString_withJavaUtilMap_(NSString *name, id<JavaUtilMap> args);

FOUNDATION_EXPORT IOSClass *OrgApacheLuceneAnalysisUtilCharFilterFactory_lookupClassWithNSString_(NSString *name);

FOUNDATION_EXPORT id<JavaUtilSet> OrgApacheLuceneAnalysisUtilCharFilterFactory_availableCharFilters();

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisUtilCharFilterFactory_reloadCharFiltersWithJavaLangClassLoader_(JavaLangClassLoader *classloader);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisUtilCharFilterFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisUtilCharFilterFactory *self, id<JavaUtilMap> args);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisUtilCharFilterFactory)

#endif

#pragma pop_macro("OrgApacheLuceneAnalysisUtilCharFilterFactory_INCLUDE_ALL")