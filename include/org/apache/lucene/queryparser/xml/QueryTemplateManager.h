//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/xml/QueryTemplateManager.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserXmlQueryTemplateManager")
#ifdef RESTRICT_OrgApacheLuceneQueryparserXmlQueryTemplateManager
#define INCLUDE_ALL_OrgApacheLuceneQueryparserXmlQueryTemplateManager 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueryparserXmlQueryTemplateManager 1
#endif
#undef RESTRICT_OrgApacheLuceneQueryparserXmlQueryTemplateManager

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneQueryparserXmlQueryTemplateManager_) && (INCLUDE_ALL_OrgApacheLuceneQueryparserXmlQueryTemplateManager || defined(INCLUDE_OrgApacheLuceneQueryparserXmlQueryTemplateManager))
#define OrgApacheLuceneQueryparserXmlQueryTemplateManager_

@class JavaIoInputStream;
@class JavaUtilHashMap;
@class JavaUtilProperties;
@class JavaxXmlParsersDocumentBuilderFactory;
@class JavaxXmlTransformTransformer;
@class JavaxXmlTransformTransformerFactory;
@protocol JavaxXmlTransformResult;
@protocol JavaxXmlTransformTemplates;
@protocol OrgW3cDomDocument;

/*!
 @brief Provides utilities for turning query form input (such as from a web page or Swing gui) into
  Lucene XML queries by using XSL templates.This approach offers a convenient way of externalizing
  and changing how user input is turned into Lucene queries.
 Database applications often adopt similar practices by externalizing SQL in template files that can
  be easily changed/optimized by a DBA.
  The static methods can be used on their own or by creating an instance of this class you can store and
  re-use compiled stylesheets for fast use (e.g. in a server environment)
 */
@interface OrgApacheLuceneQueryparserXmlQueryTemplateManager : NSObject {
 @public
  JavaUtilHashMap *compiledTemplatesCache_;
  id<JavaxXmlTransformTemplates> defaultCompiledTemplates_;
}
@property (readonly, class, strong) JavaxXmlParsersDocumentBuilderFactory *dbf NS_SWIFT_NAME(dbf);
@property (readonly, class, strong) JavaxXmlTransformTransformerFactory *tFactory NS_SWIFT_NAME(tFactory);

#pragma mark Public

- (instancetype __nonnull)init;

- (instancetype __nonnull)initWithJavaIoInputStream:(JavaIoInputStream *)xslIs;

- (void)addDefaultQueryTemplateWithJavaIoInputStream:(JavaIoInputStream *)xslIs;

- (void)addQueryTemplateWithNSString:(NSString *)name
               withJavaIoInputStream:(JavaIoInputStream *)xslIs;

- (id<OrgW3cDomDocument>)getQueryAsDOMWithJavaUtilProperties:(JavaUtilProperties *)formProperties;

/*!
 @brief Slow means of constructing query - parses stylesheet from input stream
 */
+ (id<OrgW3cDomDocument>)getQueryAsDOMWithJavaUtilProperties:(JavaUtilProperties *)formProperties
                                       withJavaIoInputStream:(JavaIoInputStream *)xslIs;

- (id<OrgW3cDomDocument>)getQueryAsDOMWithJavaUtilProperties:(JavaUtilProperties *)formProperties
                                                withNSString:(NSString *)queryTemplateName;

/*!
 @brief Fast means of constructing query using a cached,precompiled stylesheet
 */
+ (id<OrgW3cDomDocument>)getQueryAsDOMWithJavaUtilProperties:(JavaUtilProperties *)formProperties
                              withJavaxXmlTransformTemplates:(id<JavaxXmlTransformTemplates>)template_;

- (NSString *)getQueryAsXmlStringWithJavaUtilProperties:(JavaUtilProperties *)formProperties;

/*!
 @brief Slow means of constructing query parsing a stylesheet from an input stream
 */
+ (NSString *)getQueryAsXmlStringWithJavaUtilProperties:(JavaUtilProperties *)formProperties
                                  withJavaIoInputStream:(JavaIoInputStream *)xslIs;

- (NSString *)getQueryAsXmlStringWithJavaUtilProperties:(JavaUtilProperties *)formProperties
                                           withNSString:(NSString *)queryTemplateName;

/*!
 @brief Fast means of constructing query using a precompiled stylesheet
 */
+ (NSString *)getQueryAsXmlStringWithJavaUtilProperties:(JavaUtilProperties *)formProperties
                         withJavaxXmlTransformTemplates:(id<JavaxXmlTransformTemplates>)template_;

/*!
 @brief Parses a query stylesheet for repeated use
 */
+ (id<JavaxXmlTransformTemplates>)getTemplatesWithJavaIoInputStream:(JavaIoInputStream *)xslIs;

/*!
 @brief Slower transformation using an uncompiled stylesheet (suitable for development environment)
 */
+ (void)transformCriteriaWithJavaUtilProperties:(JavaUtilProperties *)formProperties
                          withJavaIoInputStream:(JavaIoInputStream *)xslIs
                    withJavaxXmlTransformResult:(id<JavaxXmlTransformResult>)result;

/*!
 @brief Fast transformation using a pre-compiled stylesheet (suitable for production environments)
 */
+ (void)transformCriteriaWithJavaUtilProperties:(JavaUtilProperties *)formProperties
                 withJavaxXmlTransformTemplates:(id<JavaxXmlTransformTemplates>)template_
                    withJavaxXmlTransformResult:(id<JavaxXmlTransformResult>)result;

+ (void)transformCriteriaWithJavaUtilProperties:(JavaUtilProperties *)formProperties
               withJavaxXmlTransformTransformer:(JavaxXmlTransformTransformer *)transformer
                    withJavaxXmlTransformResult:(id<JavaxXmlTransformResult>)result;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneQueryparserXmlQueryTemplateManager)

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserXmlQueryTemplateManager, compiledTemplatesCache_, JavaUtilHashMap *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserXmlQueryTemplateManager, defaultCompiledTemplates_, id<JavaxXmlTransformTemplates>)

inline JavaxXmlParsersDocumentBuilderFactory *OrgApacheLuceneQueryparserXmlQueryTemplateManager_get_dbf(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT JavaxXmlParsersDocumentBuilderFactory *OrgApacheLuceneQueryparserXmlQueryTemplateManager_dbf;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneQueryparserXmlQueryTemplateManager, dbf, JavaxXmlParsersDocumentBuilderFactory *)

inline JavaxXmlTransformTransformerFactory *OrgApacheLuceneQueryparserXmlQueryTemplateManager_get_tFactory(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT JavaxXmlTransformTransformerFactory *OrgApacheLuceneQueryparserXmlQueryTemplateManager_tFactory;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneQueryparserXmlQueryTemplateManager, tFactory, JavaxXmlTransformTransformerFactory *)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserXmlQueryTemplateManager_init(OrgApacheLuceneQueryparserXmlQueryTemplateManager *self);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserXmlQueryTemplateManager *new_OrgApacheLuceneQueryparserXmlQueryTemplateManager_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueryparserXmlQueryTemplateManager *create_OrgApacheLuceneQueryparserXmlQueryTemplateManager_init(void);

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserXmlQueryTemplateManager_initWithJavaIoInputStream_(OrgApacheLuceneQueryparserXmlQueryTemplateManager *self, JavaIoInputStream *xslIs);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserXmlQueryTemplateManager *new_OrgApacheLuceneQueryparserXmlQueryTemplateManager_initWithJavaIoInputStream_(JavaIoInputStream *xslIs) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueryparserXmlQueryTemplateManager *create_OrgApacheLuceneQueryparserXmlQueryTemplateManager_initWithJavaIoInputStream_(JavaIoInputStream *xslIs);

FOUNDATION_EXPORT NSString *OrgApacheLuceneQueryparserXmlQueryTemplateManager_getQueryAsXmlStringWithJavaUtilProperties_withJavaxXmlTransformTemplates_(JavaUtilProperties *formProperties, id<JavaxXmlTransformTemplates> template_);

FOUNDATION_EXPORT NSString *OrgApacheLuceneQueryparserXmlQueryTemplateManager_getQueryAsXmlStringWithJavaUtilProperties_withJavaIoInputStream_(JavaUtilProperties *formProperties, JavaIoInputStream *xslIs);

FOUNDATION_EXPORT id<OrgW3cDomDocument> OrgApacheLuceneQueryparserXmlQueryTemplateManager_getQueryAsDOMWithJavaUtilProperties_withJavaxXmlTransformTemplates_(JavaUtilProperties *formProperties, id<JavaxXmlTransformTemplates> template_);

FOUNDATION_EXPORT id<OrgW3cDomDocument> OrgApacheLuceneQueryparserXmlQueryTemplateManager_getQueryAsDOMWithJavaUtilProperties_withJavaIoInputStream_(JavaUtilProperties *formProperties, JavaIoInputStream *xslIs);

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserXmlQueryTemplateManager_transformCriteriaWithJavaUtilProperties_withJavaIoInputStream_withJavaxXmlTransformResult_(JavaUtilProperties *formProperties, JavaIoInputStream *xslIs, id<JavaxXmlTransformResult> result);

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserXmlQueryTemplateManager_transformCriteriaWithJavaUtilProperties_withJavaxXmlTransformTemplates_withJavaxXmlTransformResult_(JavaUtilProperties *formProperties, id<JavaxXmlTransformTemplates> template_, id<JavaxXmlTransformResult> result);

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserXmlQueryTemplateManager_transformCriteriaWithJavaUtilProperties_withJavaxXmlTransformTransformer_withJavaxXmlTransformResult_(JavaUtilProperties *formProperties, JavaxXmlTransformTransformer *transformer, id<JavaxXmlTransformResult> result);

FOUNDATION_EXPORT id<JavaxXmlTransformTemplates> OrgApacheLuceneQueryparserXmlQueryTemplateManager_getTemplatesWithJavaIoInputStream_(JavaIoInputStream *xslIs);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserXmlQueryTemplateManager)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserXmlQueryTemplateManager")
