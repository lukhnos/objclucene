//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/LongsRef.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneUtilLongsRef_INCLUDE_ALL")
#if OrgApacheLuceneUtilLongsRef_RESTRICT
#define OrgApacheLuceneUtilLongsRef_INCLUDE_ALL 0
#else
#define OrgApacheLuceneUtilLongsRef_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneUtilLongsRef_RESTRICT

#if !defined (_OrgApacheLuceneUtilLongsRef_) && (OrgApacheLuceneUtilLongsRef_INCLUDE_ALL || OrgApacheLuceneUtilLongsRef_INCLUDE)
#define _OrgApacheLuceneUtilLongsRef_

#define JavaLangComparable_RESTRICT 1
#define JavaLangComparable_INCLUDE 1
#include "java/lang/Comparable.h"

@class IOSLongArray;

@interface OrgApacheLuceneUtilLongsRef : NSObject < JavaLangComparable, NSCopying > {
 @public
  IOSLongArray *longs_;
  jint offset_;
  jint length_;
}

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithInt:(jint)capacity;

- (instancetype)initWithLongArray:(IOSLongArray *)longs
                          withInt:(jint)offset
                          withInt:(jint)length;

- (OrgApacheLuceneUtilLongsRef *)clone;

- (jint)compareToWithId:(OrgApacheLuceneUtilLongsRef *)other;

- (jboolean)isEqual:(id)other;

- (NSUInteger)hash;

- (jboolean)isValid;

- (jboolean)longsEqualsWithOrgApacheLuceneUtilLongsRef:(OrgApacheLuceneUtilLongsRef *)other;

- (NSString *)description;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneUtilLongsRef)

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilLongsRef, longs_, IOSLongArray *)

FOUNDATION_EXPORT IOSLongArray *OrgApacheLuceneUtilLongsRef_EMPTY_LONGS_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneUtilLongsRef, EMPTY_LONGS_, IOSLongArray *)

FOUNDATION_EXPORT void OrgApacheLuceneUtilLongsRef_init(OrgApacheLuceneUtilLongsRef *self);

FOUNDATION_EXPORT OrgApacheLuceneUtilLongsRef *new_OrgApacheLuceneUtilLongsRef_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneUtilLongsRef_initWithInt_(OrgApacheLuceneUtilLongsRef *self, jint capacity);

FOUNDATION_EXPORT OrgApacheLuceneUtilLongsRef *new_OrgApacheLuceneUtilLongsRef_initWithInt_(jint capacity) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneUtilLongsRef_initWithLongArray_withInt_withInt_(OrgApacheLuceneUtilLongsRef *self, IOSLongArray *longs, jint offset, jint length);

FOUNDATION_EXPORT OrgApacheLuceneUtilLongsRef *new_OrgApacheLuceneUtilLongsRef_initWithLongArray_withInt_withInt_(IOSLongArray *longs, jint offset, jint length) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilLongsRef)

#endif

#pragma pop_macro("OrgApacheLuceneUtilLongsRef_INCLUDE_ALL")
