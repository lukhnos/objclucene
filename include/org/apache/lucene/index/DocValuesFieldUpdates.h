//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/DocValuesFieldUpdates.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneIndexDocValuesFieldUpdates_INCLUDE_ALL")
#if OrgApacheLuceneIndexDocValuesFieldUpdates_RESTRICT
#define OrgApacheLuceneIndexDocValuesFieldUpdates_INCLUDE_ALL 0
#else
#define OrgApacheLuceneIndexDocValuesFieldUpdates_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneIndexDocValuesFieldUpdates_RESTRICT

#if !defined (_OrgApacheLuceneIndexDocValuesFieldUpdates_) && (OrgApacheLuceneIndexDocValuesFieldUpdates_INCLUDE_ALL || OrgApacheLuceneIndexDocValuesFieldUpdates_INCLUDE)
#define _OrgApacheLuceneIndexDocValuesFieldUpdates_

@class OrgApacheLuceneIndexDocValuesFieldUpdates_Iterator;
@class OrgApacheLuceneIndexDocValuesTypeEnum;

#define OrgApacheLuceneIndexDocValuesFieldUpdates_PAGE_SIZE 1024

@interface OrgApacheLuceneIndexDocValuesFieldUpdates : NSObject {
 @public
  NSString *field_;
  OrgApacheLuceneIndexDocValuesTypeEnum *type_;
}

#pragma mark Public

- (void)addWithInt:(jint)doc
            withId:(id)value;

- (OrgApacheLuceneIndexDocValuesFieldUpdates_Iterator *)iterator;

- (void)mergeWithOrgApacheLuceneIndexDocValuesFieldUpdates:(OrgApacheLuceneIndexDocValuesFieldUpdates *)other;

#pragma mark Protected

- (instancetype)initWithNSString:(NSString *)field
withOrgApacheLuceneIndexDocValuesTypeEnum:(OrgApacheLuceneIndexDocValuesTypeEnum *)type;

+ (jint)estimateCapacityWithInt:(jint)size;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexDocValuesFieldUpdates)

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexDocValuesFieldUpdates, field_, NSString *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexDocValuesFieldUpdates, type_, OrgApacheLuceneIndexDocValuesTypeEnum *)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneIndexDocValuesFieldUpdates, PAGE_SIZE, jint)

FOUNDATION_EXPORT void OrgApacheLuceneIndexDocValuesFieldUpdates_initWithNSString_withOrgApacheLuceneIndexDocValuesTypeEnum_(OrgApacheLuceneIndexDocValuesFieldUpdates *self, NSString *field, OrgApacheLuceneIndexDocValuesTypeEnum *type);

FOUNDATION_EXPORT jint OrgApacheLuceneIndexDocValuesFieldUpdates_estimateCapacityWithInt_(jint size);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexDocValuesFieldUpdates)

#endif

#if !defined (_OrgApacheLuceneIndexDocValuesFieldUpdates_Iterator_) && (OrgApacheLuceneIndexDocValuesFieldUpdates_INCLUDE_ALL || OrgApacheLuceneIndexDocValuesFieldUpdates_Iterator_INCLUDE)
#define _OrgApacheLuceneIndexDocValuesFieldUpdates_Iterator_

@interface OrgApacheLuceneIndexDocValuesFieldUpdates_Iterator : NSObject

#pragma mark Package-Private

- (instancetype)init;

- (jint)doc;

- (jint)nextDoc;

- (void)reset;

- (id)value;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexDocValuesFieldUpdates_Iterator)

FOUNDATION_EXPORT void OrgApacheLuceneIndexDocValuesFieldUpdates_Iterator_init(OrgApacheLuceneIndexDocValuesFieldUpdates_Iterator *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexDocValuesFieldUpdates_Iterator)

#endif

#if !defined (_OrgApacheLuceneIndexDocValuesFieldUpdates_Container_) && (OrgApacheLuceneIndexDocValuesFieldUpdates_INCLUDE_ALL || OrgApacheLuceneIndexDocValuesFieldUpdates_Container_INCLUDE)
#define _OrgApacheLuceneIndexDocValuesFieldUpdates_Container_

@class OrgApacheLuceneIndexDocValuesFieldUpdates;
@class OrgApacheLuceneIndexDocValuesTypeEnum;
@protocol JavaUtilMap;

@interface OrgApacheLuceneIndexDocValuesFieldUpdates_Container : NSObject {
 @public
  id<JavaUtilMap> numericDVUpdates_;
  id<JavaUtilMap> binaryDVUpdates_;
}

#pragma mark Public

- (NSString *)description;

#pragma mark Package-Private

- (instancetype)init;

- (jboolean)any;

- (OrgApacheLuceneIndexDocValuesFieldUpdates *)getUpdatesWithNSString:(NSString *)field
                            withOrgApacheLuceneIndexDocValuesTypeEnum:(OrgApacheLuceneIndexDocValuesTypeEnum *)type;

- (OrgApacheLuceneIndexDocValuesFieldUpdates *)newUpdatesWithNSString:(NSString *)field
                            withOrgApacheLuceneIndexDocValuesTypeEnum:(OrgApacheLuceneIndexDocValuesTypeEnum *)type
                                                              withInt:(jint)maxDoc OBJC_METHOD_FAMILY_NONE;

- (jint)size;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexDocValuesFieldUpdates_Container)

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexDocValuesFieldUpdates_Container, numericDVUpdates_, id<JavaUtilMap>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexDocValuesFieldUpdates_Container, binaryDVUpdates_, id<JavaUtilMap>)

FOUNDATION_EXPORT void OrgApacheLuceneIndexDocValuesFieldUpdates_Container_init(OrgApacheLuceneIndexDocValuesFieldUpdates_Container *self);

FOUNDATION_EXPORT OrgApacheLuceneIndexDocValuesFieldUpdates_Container *new_OrgApacheLuceneIndexDocValuesFieldUpdates_Container_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexDocValuesFieldUpdates_Container)

#endif

#pragma pop_macro("OrgApacheLuceneIndexDocValuesFieldUpdates_INCLUDE_ALL")
