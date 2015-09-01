//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/TermsEnum.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneIndexTermsEnum_INCLUDE_ALL")
#if OrgApacheLuceneIndexTermsEnum_RESTRICT
#define OrgApacheLuceneIndexTermsEnum_INCLUDE_ALL 0
#else
#define OrgApacheLuceneIndexTermsEnum_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneIndexTermsEnum_RESTRICT

#if !defined (_OrgApacheLuceneIndexTermsEnum_) && (OrgApacheLuceneIndexTermsEnum_INCLUDE_ALL || OrgApacheLuceneIndexTermsEnum_INCLUDE)
#define _OrgApacheLuceneIndexTermsEnum_

#define OrgApacheLuceneUtilBytesRefIterator_RESTRICT 1
#define OrgApacheLuceneUtilBytesRefIterator_INCLUDE 1
#include "org/apache/lucene/util/BytesRefIterator.h"

@class OrgApacheLuceneIndexPostingsEnum;
@class OrgApacheLuceneIndexTermState;
@class OrgApacheLuceneIndexTermsEnum_SeekStatusEnum;
@class OrgApacheLuceneUtilAttributeSource;
@class OrgApacheLuceneUtilBytesRef;

@interface OrgApacheLuceneIndexTermsEnum : NSObject < OrgApacheLuceneUtilBytesRefIterator >

#pragma mark Public

- (OrgApacheLuceneUtilAttributeSource *)attributes;

- (jint)docFreq;

- (jlong)ord;

- (OrgApacheLuceneIndexPostingsEnum *)postingsWithOrgApacheLuceneIndexPostingsEnum:(OrgApacheLuceneIndexPostingsEnum *)reuse
                                                                           withInt:(jint)flags;

- (OrgApacheLuceneIndexTermsEnum_SeekStatusEnum *)seekCeilWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)text;

- (jboolean)seekExactWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)text;

- (void)seekExactWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)term
               withOrgApacheLuceneIndexTermState:(OrgApacheLuceneIndexTermState *)state;

- (OrgApacheLuceneUtilBytesRef *)term;

- (OrgApacheLuceneIndexTermState *)termState;

- (jlong)totalTermFreq;

#pragma mark Protected

- (instancetype)init;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneIndexTermsEnum)

FOUNDATION_EXPORT OrgApacheLuceneIndexTermsEnum *OrgApacheLuceneIndexTermsEnum_EMPTY_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneIndexTermsEnum, EMPTY_, OrgApacheLuceneIndexTermsEnum *)

FOUNDATION_EXPORT void OrgApacheLuceneIndexTermsEnum_init(OrgApacheLuceneIndexTermsEnum *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexTermsEnum)

#endif

#if !defined (_OrgApacheLuceneIndexTermsEnum_SeekStatusEnum_) && (OrgApacheLuceneIndexTermsEnum_INCLUDE_ALL || OrgApacheLuceneIndexTermsEnum_SeekStatusEnum_INCLUDE)
#define _OrgApacheLuceneIndexTermsEnum_SeekStatusEnum_

#define JavaLangEnum_RESTRICT 1
#define JavaLangEnum_INCLUDE 1
#include "java/lang/Enum.h"

typedef NS_ENUM(NSUInteger, OrgApacheLuceneIndexTermsEnum_SeekStatus) {
  OrgApacheLuceneIndexTermsEnum_SeekStatus_END = 0,
  OrgApacheLuceneIndexTermsEnum_SeekStatus_FOUND = 1,
  OrgApacheLuceneIndexTermsEnum_SeekStatus_NOT_FOUND = 2,
};

@interface OrgApacheLuceneIndexTermsEnum_SeekStatusEnum : JavaLangEnum < NSCopying >

#pragma mark Package-Private

+ (IOSObjectArray *)values;
FOUNDATION_EXPORT IOSObjectArray *OrgApacheLuceneIndexTermsEnum_SeekStatusEnum_values();

+ (OrgApacheLuceneIndexTermsEnum_SeekStatusEnum *)valueOfWithNSString:(NSString *)name;
FOUNDATION_EXPORT OrgApacheLuceneIndexTermsEnum_SeekStatusEnum *OrgApacheLuceneIndexTermsEnum_SeekStatusEnum_valueOfWithNSString_(NSString *name);

- (id)copyWithZone:(NSZone *)zone;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneIndexTermsEnum_SeekStatusEnum)

FOUNDATION_EXPORT OrgApacheLuceneIndexTermsEnum_SeekStatusEnum *OrgApacheLuceneIndexTermsEnum_SeekStatusEnum_values_[];

#define OrgApacheLuceneIndexTermsEnum_SeekStatusEnum_END OrgApacheLuceneIndexTermsEnum_SeekStatusEnum_values_[OrgApacheLuceneIndexTermsEnum_SeekStatus_END]
J2OBJC_ENUM_CONSTANT_GETTER(OrgApacheLuceneIndexTermsEnum_SeekStatusEnum, END)

#define OrgApacheLuceneIndexTermsEnum_SeekStatusEnum_FOUND OrgApacheLuceneIndexTermsEnum_SeekStatusEnum_values_[OrgApacheLuceneIndexTermsEnum_SeekStatus_FOUND]
J2OBJC_ENUM_CONSTANT_GETTER(OrgApacheLuceneIndexTermsEnum_SeekStatusEnum, FOUND)

#define OrgApacheLuceneIndexTermsEnum_SeekStatusEnum_NOT_FOUND OrgApacheLuceneIndexTermsEnum_SeekStatusEnum_values_[OrgApacheLuceneIndexTermsEnum_SeekStatus_NOT_FOUND]
J2OBJC_ENUM_CONSTANT_GETTER(OrgApacheLuceneIndexTermsEnum_SeekStatusEnum, NOT_FOUND)

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexTermsEnum_SeekStatusEnum)

#endif

#pragma pop_macro("OrgApacheLuceneIndexTermsEnum_INCLUDE_ALL")
