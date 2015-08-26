//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/RollingBuffer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneUtilRollingBuffer_INCLUDE_ALL")
#if OrgApacheLuceneUtilRollingBuffer_RESTRICT
#define OrgApacheLuceneUtilRollingBuffer_INCLUDE_ALL 0
#else
#define OrgApacheLuceneUtilRollingBuffer_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneUtilRollingBuffer_RESTRICT

#if !defined (_OrgApacheLuceneUtilRollingBuffer_) && (OrgApacheLuceneUtilRollingBuffer_INCLUDE_ALL || OrgApacheLuceneUtilRollingBuffer_INCLUDE)
#define _OrgApacheLuceneUtilRollingBuffer_

@protocol OrgApacheLuceneUtilRollingBuffer_Resettable;

@interface OrgApacheLuceneUtilRollingBuffer : NSObject

#pragma mark Public

- (instancetype)init;

- (void)freeBeforeWithInt:(jint)pos;

- (id)getWithInt:(jint)pos;

- (jint)getMaxPos;

- (void)reset;

#pragma mark Protected

- (id)newInstance OBJC_METHOD_FAMILY_NONE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilRollingBuffer)

FOUNDATION_EXPORT void OrgApacheLuceneUtilRollingBuffer_init(OrgApacheLuceneUtilRollingBuffer *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilRollingBuffer)

#endif

#if !defined (_OrgApacheLuceneUtilRollingBuffer_Resettable_) && (OrgApacheLuceneUtilRollingBuffer_INCLUDE_ALL || OrgApacheLuceneUtilRollingBuffer_Resettable_INCLUDE)
#define _OrgApacheLuceneUtilRollingBuffer_Resettable_

@protocol OrgApacheLuceneUtilRollingBuffer_Resettable < NSObject, JavaObject >

- (void)reset;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilRollingBuffer_Resettable)

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilRollingBuffer_Resettable)

#endif

#pragma pop_macro("OrgApacheLuceneUtilRollingBuffer_INCLUDE_ALL")
