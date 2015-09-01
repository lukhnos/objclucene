//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/MultiBits.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneIndexMultiBits_INCLUDE_ALL")
#if OrgApacheLuceneIndexMultiBits_RESTRICT
#define OrgApacheLuceneIndexMultiBits_INCLUDE_ALL 0
#else
#define OrgApacheLuceneIndexMultiBits_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneIndexMultiBits_RESTRICT

#if !defined (_OrgApacheLuceneIndexMultiBits_) && (OrgApacheLuceneIndexMultiBits_INCLUDE_ALL || OrgApacheLuceneIndexMultiBits_INCLUDE)
#define _OrgApacheLuceneIndexMultiBits_

#define OrgApacheLuceneUtilBits_RESTRICT 1
#define OrgApacheLuceneUtilBits_INCLUDE 1
#include "org/apache/lucene/util/Bits.h"

@class IOSIntArray;
@class IOSObjectArray;

@interface OrgApacheLuceneIndexMultiBits : NSObject < OrgApacheLuceneUtilBits >

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneUtilBitsArray:(IOSObjectArray *)subs
                                        withIntArray:(IOSIntArray *)starts
                                         withBoolean:(jboolean)defaultValue;

- (jboolean)getWithInt:(jint)doc;

- (jint)length;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexMultiBits)

FOUNDATION_EXPORT void OrgApacheLuceneIndexMultiBits_initWithOrgApacheLuceneUtilBitsArray_withIntArray_withBoolean_(OrgApacheLuceneIndexMultiBits *self, IOSObjectArray *subs, IOSIntArray *starts, jboolean defaultValue);

FOUNDATION_EXPORT OrgApacheLuceneIndexMultiBits *new_OrgApacheLuceneIndexMultiBits_initWithOrgApacheLuceneUtilBitsArray_withIntArray_withBoolean_(IOSObjectArray *subs, IOSIntArray *starts, jboolean defaultValue) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexMultiBits)

#endif

#if !defined (_OrgApacheLuceneIndexMultiBits_SubResult_) && (OrgApacheLuceneIndexMultiBits_INCLUDE_ALL || OrgApacheLuceneIndexMultiBits_SubResult_INCLUDE)
#define _OrgApacheLuceneIndexMultiBits_SubResult_

@interface OrgApacheLuceneIndexMultiBits_SubResult : NSObject

#pragma mark Public

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexMultiBits_SubResult)

FOUNDATION_EXPORT void OrgApacheLuceneIndexMultiBits_SubResult_init(OrgApacheLuceneIndexMultiBits_SubResult *self);

FOUNDATION_EXPORT OrgApacheLuceneIndexMultiBits_SubResult *new_OrgApacheLuceneIndexMultiBits_SubResult_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexMultiBits_SubResult)

#endif

#pragma pop_macro("OrgApacheLuceneIndexMultiBits_INCLUDE_ALL")
