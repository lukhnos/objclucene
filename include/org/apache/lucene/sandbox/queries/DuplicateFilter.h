//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./sandbox/src/java/org/apache/lucene/sandbox/queries/DuplicateFilter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneSandboxQueriesDuplicateFilter_INCLUDE_ALL")
#if OrgApacheLuceneSandboxQueriesDuplicateFilter_RESTRICT
#define OrgApacheLuceneSandboxQueriesDuplicateFilter_INCLUDE_ALL 0
#else
#define OrgApacheLuceneSandboxQueriesDuplicateFilter_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneSandboxQueriesDuplicateFilter_RESTRICT

#if !defined (_OrgApacheLuceneSandboxQueriesDuplicateFilter_) && (OrgApacheLuceneSandboxQueriesDuplicateFilter_INCLUDE_ALL || OrgApacheLuceneSandboxQueriesDuplicateFilter_INCLUDE)
#define _OrgApacheLuceneSandboxQueriesDuplicateFilter_

#define OrgApacheLuceneSearchFilter_RESTRICT 1
#define OrgApacheLuceneSearchFilter_INCLUDE 1
#include "org/apache/lucene/search/Filter.h"

@class OrgApacheLuceneIndexLeafReaderContext;
@class OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepModeEnum;
@class OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingModeEnum;
@class OrgApacheLuceneSearchDocIdSet;
@protocol OrgApacheLuceneUtilBits;

@interface OrgApacheLuceneSandboxQueriesDuplicateFilter : OrgApacheLuceneSearchFilter

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)fieldName;

- (instancetype)initWithNSString:(NSString *)fieldName
withOrgApacheLuceneSandboxQueriesDuplicateFilter_KeepModeEnum:(OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepModeEnum *)keepMode
withOrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingModeEnum:(OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingModeEnum *)processingMode;

- (jboolean)isEqual:(id)obj;

- (OrgApacheLuceneSearchDocIdSet *)getDocIdSetWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context
                                                            withOrgApacheLuceneUtilBits:(id<OrgApacheLuceneUtilBits>)acceptDocs;

- (NSString *)getFieldName;

- (OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepModeEnum *)getKeepMode;

- (OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingModeEnum *)getProcessingMode;

- (NSUInteger)hash;

- (void)setFieldNameWithNSString:(NSString *)fieldName;

- (void)setKeepModeWithOrgApacheLuceneSandboxQueriesDuplicateFilter_KeepModeEnum:(OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepModeEnum *)keepMode;

- (void)setProcessingModeWithOrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingModeEnum:(OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingModeEnum *)processingMode;

- (NSString *)toStringWithNSString:(NSString *)field;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSandboxQueriesDuplicateFilter)

FOUNDATION_EXPORT void OrgApacheLuceneSandboxQueriesDuplicateFilter_initWithNSString_(OrgApacheLuceneSandboxQueriesDuplicateFilter *self, NSString *fieldName);

FOUNDATION_EXPORT OrgApacheLuceneSandboxQueriesDuplicateFilter *new_OrgApacheLuceneSandboxQueriesDuplicateFilter_initWithNSString_(NSString *fieldName) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneSandboxQueriesDuplicateFilter_initWithNSString_withOrgApacheLuceneSandboxQueriesDuplicateFilter_KeepModeEnum_withOrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingModeEnum_(OrgApacheLuceneSandboxQueriesDuplicateFilter *self, NSString *fieldName, OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepModeEnum *keepMode, OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingModeEnum *processingMode);

FOUNDATION_EXPORT OrgApacheLuceneSandboxQueriesDuplicateFilter *new_OrgApacheLuceneSandboxQueriesDuplicateFilter_initWithNSString_withOrgApacheLuceneSandboxQueriesDuplicateFilter_KeepModeEnum_withOrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingModeEnum_(NSString *fieldName, OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepModeEnum *keepMode, OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingModeEnum *processingMode) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSandboxQueriesDuplicateFilter)

#endif

#if !defined (_OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepModeEnum_) && (OrgApacheLuceneSandboxQueriesDuplicateFilter_INCLUDE_ALL || OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepModeEnum_INCLUDE)
#define _OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepModeEnum_

#define JavaLangEnum_RESTRICT 1
#define JavaLangEnum_INCLUDE 1
#include "java/lang/Enum.h"

typedef NS_ENUM(NSUInteger, OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode) {
  OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode_KM_USE_FIRST_OCCURRENCE = 0,
  OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode_KM_USE_LAST_OCCURRENCE = 1,
};

@interface OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepModeEnum : JavaLangEnum < NSCopying >

#pragma mark Package-Private

+ (IOSObjectArray *)values;
FOUNDATION_EXPORT IOSObjectArray *OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepModeEnum_values();

+ (OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepModeEnum *)valueOfWithNSString:(NSString *)name;
FOUNDATION_EXPORT OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepModeEnum *OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepModeEnum_valueOfWithNSString_(NSString *name);

- (id)copyWithZone:(NSZone *)zone;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepModeEnum)

FOUNDATION_EXPORT OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepModeEnum *OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepModeEnum_values_[];

#define OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepModeEnum_KM_USE_FIRST_OCCURRENCE OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepModeEnum_values_[OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode_KM_USE_FIRST_OCCURRENCE]
J2OBJC_ENUM_CONSTANT_GETTER(OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepModeEnum, KM_USE_FIRST_OCCURRENCE)

#define OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepModeEnum_KM_USE_LAST_OCCURRENCE OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepModeEnum_values_[OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepMode_KM_USE_LAST_OCCURRENCE]
J2OBJC_ENUM_CONSTANT_GETTER(OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepModeEnum, KM_USE_LAST_OCCURRENCE)

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSandboxQueriesDuplicateFilter_KeepModeEnum)

#endif

#if !defined (_OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingModeEnum_) && (OrgApacheLuceneSandboxQueriesDuplicateFilter_INCLUDE_ALL || OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingModeEnum_INCLUDE)
#define _OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingModeEnum_

#define JavaLangEnum_RESTRICT 1
#define JavaLangEnum_INCLUDE 1
#include "java/lang/Enum.h"

typedef NS_ENUM(NSUInteger, OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode) {
  OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode_PM_FULL_VALIDATION = 0,
  OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode_PM_FAST_INVALIDATION = 1,
};

@interface OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingModeEnum : JavaLangEnum < NSCopying >

#pragma mark Package-Private

+ (IOSObjectArray *)values;
FOUNDATION_EXPORT IOSObjectArray *OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingModeEnum_values();

+ (OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingModeEnum *)valueOfWithNSString:(NSString *)name;
FOUNDATION_EXPORT OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingModeEnum *OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingModeEnum_valueOfWithNSString_(NSString *name);

- (id)copyWithZone:(NSZone *)zone;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingModeEnum)

FOUNDATION_EXPORT OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingModeEnum *OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingModeEnum_values_[];

#define OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingModeEnum_PM_FULL_VALIDATION OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingModeEnum_values_[OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode_PM_FULL_VALIDATION]
J2OBJC_ENUM_CONSTANT_GETTER(OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingModeEnum, PM_FULL_VALIDATION)

#define OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingModeEnum_PM_FAST_INVALIDATION OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingModeEnum_values_[OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingMode_PM_FAST_INVALIDATION]
J2OBJC_ENUM_CONSTANT_GETTER(OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingModeEnum, PM_FAST_INVALIDATION)

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSandboxQueriesDuplicateFilter_ProcessingModeEnum)

#endif

#pragma pop_macro("OrgApacheLuceneSandboxQueriesDuplicateFilter_INCLUDE_ALL")
