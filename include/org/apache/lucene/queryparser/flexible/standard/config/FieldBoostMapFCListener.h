//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/flexible/standard/config/FieldBoostMapFCListener.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardConfigFieldBoostMapFCListener")
#ifdef RESTRICT_OrgApacheLuceneQueryparserFlexibleStandardConfigFieldBoostMapFCListener
#define INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardConfigFieldBoostMapFCListener 0
#else
#define INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardConfigFieldBoostMapFCListener 1
#endif
#undef RESTRICT_OrgApacheLuceneQueryparserFlexibleStandardConfigFieldBoostMapFCListener

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneQueryparserFlexibleStandardConfigFieldBoostMapFCListener_) && (INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardConfigFieldBoostMapFCListener || defined(INCLUDE_OrgApacheLuceneQueryparserFlexibleStandardConfigFieldBoostMapFCListener))
#define OrgApacheLuceneQueryparserFlexibleStandardConfigFieldBoostMapFCListener_

#define RESTRICT_OrgApacheLuceneQueryparserFlexibleCoreConfigFieldConfigListener 1
#define INCLUDE_OrgApacheLuceneQueryparserFlexibleCoreConfigFieldConfigListener 1
#include "org/apache/lucene/queryparser/flexible/core/config/FieldConfigListener.h"

@class OrgApacheLuceneQueryparserFlexibleCoreConfigFieldConfig;
@class OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler;

/*!
 @brief This listener listens for every field configuration request and assign a 
 <code>ConfigurationKeys.BOOST</code> to the
  equivalent <code>FieldConfig</code> based on a defined map: fieldName -&gt; boostValue stored in 
 <code>ConfigurationKeys.FIELD_BOOST_MAP</code>.
 - seealso: ConfigurationKeys#FIELD_BOOST_MAP
 - seealso: ConfigurationKeys#BOOST
 - seealso: FieldConfig
 - seealso: FieldConfigListener
 */
@interface OrgApacheLuceneQueryparserFlexibleStandardConfigFieldBoostMapFCListener : NSObject < OrgApacheLuceneQueryparserFlexibleCoreConfigFieldConfigListener >

#pragma mark Public

- (instancetype __nonnull)initWithOrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler:(OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *)config;

- (void)buildFieldConfigWithOrgApacheLuceneQueryparserFlexibleCoreConfigFieldConfig:(OrgApacheLuceneQueryparserFlexibleCoreConfigFieldConfig *)fieldConfig;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserFlexibleStandardConfigFieldBoostMapFCListener)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserFlexibleStandardConfigFieldBoostMapFCListener_initWithOrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler_(OrgApacheLuceneQueryparserFlexibleStandardConfigFieldBoostMapFCListener *self, OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *config);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleStandardConfigFieldBoostMapFCListener *new_OrgApacheLuceneQueryparserFlexibleStandardConfigFieldBoostMapFCListener_initWithOrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler_(OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *config) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneQueryparserFlexibleStandardConfigFieldBoostMapFCListener *create_OrgApacheLuceneQueryparserFlexibleStandardConfigFieldBoostMapFCListener_initWithOrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler_(OrgApacheLuceneQueryparserFlexibleCoreConfigQueryConfigHandler *config);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserFlexibleStandardConfigFieldBoostMapFCListener)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneQueryparserFlexibleStandardConfigFieldBoostMapFCListener")
