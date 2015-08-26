//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/DocValuesType.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneIndexDocValuesType_INCLUDE_ALL")
#if OrgApacheLuceneIndexDocValuesType_RESTRICT
#define OrgApacheLuceneIndexDocValuesType_INCLUDE_ALL 0
#else
#define OrgApacheLuceneIndexDocValuesType_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneIndexDocValuesType_RESTRICT

#if !defined (_OrgApacheLuceneIndexDocValuesTypeEnum_) && (OrgApacheLuceneIndexDocValuesType_INCLUDE_ALL || OrgApacheLuceneIndexDocValuesTypeEnum_INCLUDE)
#define _OrgApacheLuceneIndexDocValuesTypeEnum_

#define JavaLangEnum_RESTRICT 1
#define JavaLangEnum_INCLUDE 1
#include "java/lang/Enum.h"

typedef NS_ENUM(NSUInteger, OrgApacheLuceneIndexDocValuesType) {
  OrgApacheLuceneIndexDocValuesType_NONE = 0,
  OrgApacheLuceneIndexDocValuesType_NUMERIC = 1,
  OrgApacheLuceneIndexDocValuesType_BINARY = 2,
  OrgApacheLuceneIndexDocValuesType_SORTED = 3,
  OrgApacheLuceneIndexDocValuesType_SORTED_NUMERIC = 4,
  OrgApacheLuceneIndexDocValuesType_SORTED_SET = 5,
};

@interface OrgApacheLuceneIndexDocValuesTypeEnum : JavaLangEnum < NSCopying >

#pragma mark Package-Private

+ (IOSObjectArray *)values;
FOUNDATION_EXPORT IOSObjectArray *OrgApacheLuceneIndexDocValuesTypeEnum_values();

+ (OrgApacheLuceneIndexDocValuesTypeEnum *)valueOfWithNSString:(NSString *)name;
FOUNDATION_EXPORT OrgApacheLuceneIndexDocValuesTypeEnum *OrgApacheLuceneIndexDocValuesTypeEnum_valueOfWithNSString_(NSString *name);

- (id)copyWithZone:(NSZone *)zone;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneIndexDocValuesTypeEnum)

FOUNDATION_EXPORT OrgApacheLuceneIndexDocValuesTypeEnum *OrgApacheLuceneIndexDocValuesTypeEnum_values_[];

#define OrgApacheLuceneIndexDocValuesTypeEnum_NONE OrgApacheLuceneIndexDocValuesTypeEnum_values_[OrgApacheLuceneIndexDocValuesType_NONE]
J2OBJC_ENUM_CONSTANT_GETTER(OrgApacheLuceneIndexDocValuesTypeEnum, NONE)

#define OrgApacheLuceneIndexDocValuesTypeEnum_NUMERIC OrgApacheLuceneIndexDocValuesTypeEnum_values_[OrgApacheLuceneIndexDocValuesType_NUMERIC]
J2OBJC_ENUM_CONSTANT_GETTER(OrgApacheLuceneIndexDocValuesTypeEnum, NUMERIC)

#define OrgApacheLuceneIndexDocValuesTypeEnum_BINARY OrgApacheLuceneIndexDocValuesTypeEnum_values_[OrgApacheLuceneIndexDocValuesType_BINARY]
J2OBJC_ENUM_CONSTANT_GETTER(OrgApacheLuceneIndexDocValuesTypeEnum, BINARY)

#define OrgApacheLuceneIndexDocValuesTypeEnum_SORTED OrgApacheLuceneIndexDocValuesTypeEnum_values_[OrgApacheLuceneIndexDocValuesType_SORTED]
J2OBJC_ENUM_CONSTANT_GETTER(OrgApacheLuceneIndexDocValuesTypeEnum, SORTED)

#define OrgApacheLuceneIndexDocValuesTypeEnum_SORTED_NUMERIC OrgApacheLuceneIndexDocValuesTypeEnum_values_[OrgApacheLuceneIndexDocValuesType_SORTED_NUMERIC]
J2OBJC_ENUM_CONSTANT_GETTER(OrgApacheLuceneIndexDocValuesTypeEnum, SORTED_NUMERIC)

#define OrgApacheLuceneIndexDocValuesTypeEnum_SORTED_SET OrgApacheLuceneIndexDocValuesTypeEnum_values_[OrgApacheLuceneIndexDocValuesType_SORTED_SET]
J2OBJC_ENUM_CONSTANT_GETTER(OrgApacheLuceneIndexDocValuesTypeEnum, SORTED_SET)

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexDocValuesTypeEnum)

#endif

#pragma pop_macro("OrgApacheLuceneIndexDocValuesType_INCLUDE_ALL")
