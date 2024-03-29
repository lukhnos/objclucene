//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/core/config/QueryConfigHandler.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler")
#ifdef RESTRICT_OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler
#define INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler 1
#endif
#undef RESTRICT_OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler_) && (INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler || defined(INCLUDE_OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler))
#define OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler_

#define RESTRICT_OrgApacheLuceneQueryparserFlexibleCoreConfigAbstractQueryConfig 1
#define INCLUDE_OrgApacheLuceneQueryparserFlexibleCoreConfigAbstractQueryConfig 1
#include "org/apache/lucene/queryparser/flexible/core/config/AbstractQueryConfig.h"

@class OrgApacheLuceneQueryparserFlexibleCoreConfigFieldConfig;
@protocol OrgApacheLuceneQueryparserFlexibleCoreConfigFieldConfigListener;

/*!
 @brief This class can be used to hold any query configuration and no field
  configuration.For field configuration, it creates an empty 
 <code>FieldConfig</code> object and delegate it to field config listeners, 
  these are responsible for setting up all the field configuration.
 <code>QueryConfigHandler</code> should be extended by classes that intends to
  provide configuration to <code>QueryNodeProcessor</code> objects. 
  The class that extends <code>QueryConfigHandler</code> should also provide 
 <code>FieldConfig</code> objects for each collection field.
 - seealso: FieldConfig
 - seealso: FieldConfigListener
 - seealso: QueryConfigHandler
 */
@interface OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler : OrgApacheLuceneQueryparserFlexibleCoreConfigAbstractQueryConfig

#pragma mark Public

- (instancetype __nonnull)init;

/*!
 @brief Adds a listener.The added listeners are called in the order they are
  added.
 @param listener the listener to be added
 */
- (void)addFieldConfigListenerWithOrgApacheLuceneQueryparserFlexibleCoreConfigFieldConfigListener:(id<OrgApacheLuceneQueryparserFlexibleCoreConfigFieldConfigListener>)listener;

/*!
 @brief Returns an implementation of 
 <code>FieldConfig</code> for a specific field name.If the implemented 
 <code>QueryConfigHandler</code> does not know a specific field name, it may
  return <code>null</code>, indicating there is no configuration for that
  field.
 @param fieldName the field name
 @return a <code>FieldConfig</code> object containing the field name
          configuration or <code>null</code>, if the implemented
          <code>QueryConfigHandler</code> has no configuration for that field
 */
- (OrgApacheLuceneQueryparserFlexibleCoreConfigFieldConfig *)getFieldConfigWithNSString:(NSString *)fieldName;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler_init(OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler")
