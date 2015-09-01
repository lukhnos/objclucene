//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/SortField.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneSearchSortField_INCLUDE_ALL")
#if OrgApacheLuceneSearchSortField_RESTRICT
#define OrgApacheLuceneSearchSortField_INCLUDE_ALL 0
#else
#define OrgApacheLuceneSearchSortField_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneSearchSortField_RESTRICT

#if !defined (_OrgApacheLuceneSearchSortField_) && (OrgApacheLuceneSearchSortField_INCLUDE_ALL || OrgApacheLuceneSearchSortField_INCLUDE)
#define _OrgApacheLuceneSearchSortField_

@class OrgApacheLuceneSearchFieldComparator;
@class OrgApacheLuceneSearchSortField_TypeEnum;

@interface OrgApacheLuceneSearchSortField : NSObject {
 @public
  jboolean reverse_;
  id missingValue_;
}

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)field
withOrgApacheLuceneSearchSortField_TypeEnum:(OrgApacheLuceneSearchSortField_TypeEnum *)type;

- (instancetype)initWithNSString:(NSString *)field
withOrgApacheLuceneSearchSortField_TypeEnum:(OrgApacheLuceneSearchSortField_TypeEnum *)type
                     withBoolean:(jboolean)reverse;

- (jboolean)isEqual:(id)o;

- (OrgApacheLuceneSearchFieldComparator *)getComparatorWithInt:(jint)numHits
                                                       withInt:(jint)sortPos;

- (jboolean)getReverse;

- (NSUInteger)hash;

- (jboolean)needsScores;

- (NSString *)description;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneSearchSortField)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSortField, missingValue_, id)

FOUNDATION_EXPORT OrgApacheLuceneSearchSortField *OrgApacheLuceneSearchSortField_FIELD_SCORE_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneSearchSortField, FIELD_SCORE_, OrgApacheLuceneSearchSortField *)

FOUNDATION_EXPORT OrgApacheLuceneSearchSortField *OrgApacheLuceneSearchSortField_FIELD_DOC_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneSearchSortField, FIELD_DOC_, OrgApacheLuceneSearchSortField *)

FOUNDATION_EXPORT id OrgApacheLuceneSearchSortField_STRING_FIRST_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneSearchSortField, STRING_FIRST_, id)

FOUNDATION_EXPORT id OrgApacheLuceneSearchSortField_STRING_LAST_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneSearchSortField, STRING_LAST_, id)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSortField_initWithNSString_withOrgApacheLuceneSearchSortField_TypeEnum_(OrgApacheLuceneSearchSortField *self, NSString *field, OrgApacheLuceneSearchSortField_TypeEnum *type);

FOUNDATION_EXPORT OrgApacheLuceneSearchSortField *new_OrgApacheLuceneSearchSortField_initWithNSString_withOrgApacheLuceneSearchSortField_TypeEnum_(NSString *field, OrgApacheLuceneSearchSortField_TypeEnum *type) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneSearchSortField_initWithNSString_withOrgApacheLuceneSearchSortField_TypeEnum_withBoolean_(OrgApacheLuceneSearchSortField *self, NSString *field, OrgApacheLuceneSearchSortField_TypeEnum *type, jboolean reverse);

FOUNDATION_EXPORT OrgApacheLuceneSearchSortField *new_OrgApacheLuceneSearchSortField_initWithNSString_withOrgApacheLuceneSearchSortField_TypeEnum_withBoolean_(NSString *field, OrgApacheLuceneSearchSortField_TypeEnum *type, jboolean reverse) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSortField)

#endif

#if !defined (_OrgApacheLuceneSearchSortField_TypeEnum_) && (OrgApacheLuceneSearchSortField_INCLUDE_ALL || OrgApacheLuceneSearchSortField_TypeEnum_INCLUDE)
#define _OrgApacheLuceneSearchSortField_TypeEnum_

#define JavaLangEnum_RESTRICT 1
#define JavaLangEnum_INCLUDE 1
#include "java/lang/Enum.h"

typedef NS_ENUM(NSUInteger, OrgApacheLuceneSearchSortField_Type) {
  OrgApacheLuceneSearchSortField_Type_SCORE = 0,
  OrgApacheLuceneSearchSortField_Type_DOC = 1,
  OrgApacheLuceneSearchSortField_Type_STRING = 2,
  OrgApacheLuceneSearchSortField_Type_INT = 3,
  OrgApacheLuceneSearchSortField_Type_FLOAT = 4,
  OrgApacheLuceneSearchSortField_Type_LONG = 5,
  OrgApacheLuceneSearchSortField_Type_DOUBLE = 6,
  OrgApacheLuceneSearchSortField_Type_CUSTOM = 7,
  OrgApacheLuceneSearchSortField_Type_STRING_VAL = 8,
  OrgApacheLuceneSearchSortField_Type_BYTES = 9,
  OrgApacheLuceneSearchSortField_Type_REWRITEABLE = 10,
};

@interface OrgApacheLuceneSearchSortField_TypeEnum : JavaLangEnum < NSCopying >

#pragma mark Package-Private

+ (IOSObjectArray *)values;
FOUNDATION_EXPORT IOSObjectArray *OrgApacheLuceneSearchSortField_TypeEnum_values();

+ (OrgApacheLuceneSearchSortField_TypeEnum *)valueOfWithNSString:(NSString *)name;
FOUNDATION_EXPORT OrgApacheLuceneSearchSortField_TypeEnum *OrgApacheLuceneSearchSortField_TypeEnum_valueOfWithNSString_(NSString *name);

- (id)copyWithZone:(NSZone *)zone;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneSearchSortField_TypeEnum)

FOUNDATION_EXPORT OrgApacheLuceneSearchSortField_TypeEnum *OrgApacheLuceneSearchSortField_TypeEnum_values_[];

#define OrgApacheLuceneSearchSortField_TypeEnum_SCORE OrgApacheLuceneSearchSortField_TypeEnum_values_[OrgApacheLuceneSearchSortField_Type_SCORE]
J2OBJC_ENUM_CONSTANT_GETTER(OrgApacheLuceneSearchSortField_TypeEnum, SCORE)

#define OrgApacheLuceneSearchSortField_TypeEnum_DOC OrgApacheLuceneSearchSortField_TypeEnum_values_[OrgApacheLuceneSearchSortField_Type_DOC]
J2OBJC_ENUM_CONSTANT_GETTER(OrgApacheLuceneSearchSortField_TypeEnum, DOC)

#define OrgApacheLuceneSearchSortField_TypeEnum_STRING OrgApacheLuceneSearchSortField_TypeEnum_values_[OrgApacheLuceneSearchSortField_Type_STRING]
J2OBJC_ENUM_CONSTANT_GETTER(OrgApacheLuceneSearchSortField_TypeEnum, STRING)

#define OrgApacheLuceneSearchSortField_TypeEnum_INT OrgApacheLuceneSearchSortField_TypeEnum_values_[OrgApacheLuceneSearchSortField_Type_INT]
J2OBJC_ENUM_CONSTANT_GETTER(OrgApacheLuceneSearchSortField_TypeEnum, INT)

#define OrgApacheLuceneSearchSortField_TypeEnum_FLOAT OrgApacheLuceneSearchSortField_TypeEnum_values_[OrgApacheLuceneSearchSortField_Type_FLOAT]
J2OBJC_ENUM_CONSTANT_GETTER(OrgApacheLuceneSearchSortField_TypeEnum, FLOAT)

#define OrgApacheLuceneSearchSortField_TypeEnum_LONG OrgApacheLuceneSearchSortField_TypeEnum_values_[OrgApacheLuceneSearchSortField_Type_LONG]
J2OBJC_ENUM_CONSTANT_GETTER(OrgApacheLuceneSearchSortField_TypeEnum, LONG)

#define OrgApacheLuceneSearchSortField_TypeEnum_DOUBLE OrgApacheLuceneSearchSortField_TypeEnum_values_[OrgApacheLuceneSearchSortField_Type_DOUBLE]
J2OBJC_ENUM_CONSTANT_GETTER(OrgApacheLuceneSearchSortField_TypeEnum, DOUBLE)

#define OrgApacheLuceneSearchSortField_TypeEnum_CUSTOM OrgApacheLuceneSearchSortField_TypeEnum_values_[OrgApacheLuceneSearchSortField_Type_CUSTOM]
J2OBJC_ENUM_CONSTANT_GETTER(OrgApacheLuceneSearchSortField_TypeEnum, CUSTOM)

#define OrgApacheLuceneSearchSortField_TypeEnum_STRING_VAL OrgApacheLuceneSearchSortField_TypeEnum_values_[OrgApacheLuceneSearchSortField_Type_STRING_VAL]
J2OBJC_ENUM_CONSTANT_GETTER(OrgApacheLuceneSearchSortField_TypeEnum, STRING_VAL)

#define OrgApacheLuceneSearchSortField_TypeEnum_BYTES OrgApacheLuceneSearchSortField_TypeEnum_values_[OrgApacheLuceneSearchSortField_Type_BYTES]
J2OBJC_ENUM_CONSTANT_GETTER(OrgApacheLuceneSearchSortField_TypeEnum, BYTES)

#define OrgApacheLuceneSearchSortField_TypeEnum_REWRITEABLE OrgApacheLuceneSearchSortField_TypeEnum_values_[OrgApacheLuceneSearchSortField_Type_REWRITEABLE]
J2OBJC_ENUM_CONSTANT_GETTER(OrgApacheLuceneSearchSortField_TypeEnum, REWRITEABLE)

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSortField_TypeEnum)

#endif

#pragma pop_macro("OrgApacheLuceneSearchSortField_INCLUDE_ALL")
