//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/charfilter/MappingCharFilterFactory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneAnalysisCharfilterMappingCharFilterFactory_INCLUDE_ALL")
#if OrgApacheLuceneAnalysisCharfilterMappingCharFilterFactory_RESTRICT
#define OrgApacheLuceneAnalysisCharfilterMappingCharFilterFactory_INCLUDE_ALL 0
#else
#define OrgApacheLuceneAnalysisCharfilterMappingCharFilterFactory_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneAnalysisCharfilterMappingCharFilterFactory_RESTRICT

#if !defined (_OrgApacheLuceneAnalysisCharfilterMappingCharFilterFactory_) && (OrgApacheLuceneAnalysisCharfilterMappingCharFilterFactory_INCLUDE_ALL || OrgApacheLuceneAnalysisCharfilterMappingCharFilterFactory_INCLUDE)
#define _OrgApacheLuceneAnalysisCharfilterMappingCharFilterFactory_

#define OrgApacheLuceneAnalysisUtilCharFilterFactory_RESTRICT 1
#define OrgApacheLuceneAnalysisUtilCharFilterFactory_INCLUDE 1
#include "org/apache/lucene/analysis/util/CharFilterFactory.h"

#define OrgApacheLuceneAnalysisUtilResourceLoaderAware_RESTRICT 1
#define OrgApacheLuceneAnalysisUtilResourceLoaderAware_INCLUDE 1
#include "org/apache/lucene/analysis/util/ResourceLoaderAware.h"

#define OrgApacheLuceneAnalysisUtilMultiTermAwareComponent_RESTRICT 1
#define OrgApacheLuceneAnalysisUtilMultiTermAwareComponent_INCLUDE 1
#include "org/apache/lucene/analysis/util/MultiTermAwareComponent.h"

@class IOSCharArray;
@class JavaIoReader;
@class JavaUtilRegexPattern;
@class OrgApacheLuceneAnalysisCharfilterNormalizeCharMap;
@class OrgApacheLuceneAnalysisCharfilterNormalizeCharMap_Builder;
@class OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory;
@protocol JavaUtilList;
@protocol JavaUtilMap;
@protocol OrgApacheLuceneAnalysisUtilResourceLoader;

@interface OrgApacheLuceneAnalysisCharfilterMappingCharFilterFactory : OrgApacheLuceneAnalysisUtilCharFilterFactory < OrgApacheLuceneAnalysisUtilResourceLoaderAware, OrgApacheLuceneAnalysisUtilMultiTermAwareComponent > {
 @public
  OrgApacheLuceneAnalysisCharfilterNormalizeCharMap *normMap_;
  IOSCharArray *out_;
}

#pragma mark Public

- (instancetype)initWithJavaUtilMap:(id<JavaUtilMap>)args;

- (JavaIoReader *)createWithJavaIoReader:(JavaIoReader *)input;

- (OrgApacheLuceneAnalysisUtilAbstractAnalysisFactory *)getMultiTermComponent;

- (void)informWithOrgApacheLuceneAnalysisUtilResourceLoader:(id<OrgApacheLuceneAnalysisUtilResourceLoader>)loader;

#pragma mark Protected

- (void)parseRulesWithJavaUtilList:(id<JavaUtilList>)rules
withOrgApacheLuceneAnalysisCharfilterNormalizeCharMap_Builder:(OrgApacheLuceneAnalysisCharfilterNormalizeCharMap_Builder *)builder;

- (NSString *)parseStringWithNSString:(NSString *)s;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneAnalysisCharfilterMappingCharFilterFactory)

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisCharfilterMappingCharFilterFactory, normMap_, OrgApacheLuceneAnalysisCharfilterNormalizeCharMap *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisCharfilterMappingCharFilterFactory, out_, IOSCharArray *)

FOUNDATION_EXPORT JavaUtilRegexPattern *OrgApacheLuceneAnalysisCharfilterMappingCharFilterFactory_p_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisCharfilterMappingCharFilterFactory, p_, JavaUtilRegexPattern *)
J2OBJC_STATIC_FIELD_SETTER(OrgApacheLuceneAnalysisCharfilterMappingCharFilterFactory, p_, JavaUtilRegexPattern *)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisCharfilterMappingCharFilterFactory_initWithJavaUtilMap_(OrgApacheLuceneAnalysisCharfilterMappingCharFilterFactory *self, id<JavaUtilMap> args);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisCharfilterMappingCharFilterFactory *new_OrgApacheLuceneAnalysisCharfilterMappingCharFilterFactory_initWithJavaUtilMap_(id<JavaUtilMap> args) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisCharfilterMappingCharFilterFactory)

#endif

#pragma pop_macro("OrgApacheLuceneAnalysisCharfilterMappingCharFilterFactory_INCLUDE_ALL")