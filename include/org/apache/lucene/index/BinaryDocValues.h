//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/BinaryDocValues.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneIndexBinaryDocValues_INCLUDE_ALL")
#if OrgApacheLuceneIndexBinaryDocValues_RESTRICT
#define OrgApacheLuceneIndexBinaryDocValues_INCLUDE_ALL 0
#else
#define OrgApacheLuceneIndexBinaryDocValues_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneIndexBinaryDocValues_RESTRICT

#if !defined (_OrgApacheLuceneIndexBinaryDocValues_) && (OrgApacheLuceneIndexBinaryDocValues_INCLUDE_ALL || OrgApacheLuceneIndexBinaryDocValues_INCLUDE)
#define _OrgApacheLuceneIndexBinaryDocValues_

@class OrgApacheLuceneUtilBytesRef;

@interface OrgApacheLuceneIndexBinaryDocValues : NSObject

#pragma mark Public

- (OrgApacheLuceneUtilBytesRef *)getWithInt:(jint)docID;

#pragma mark Protected

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexBinaryDocValues)

FOUNDATION_EXPORT void OrgApacheLuceneIndexBinaryDocValues_init(OrgApacheLuceneIndexBinaryDocValues *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexBinaryDocValues)

#endif

#pragma pop_macro("OrgApacheLuceneIndexBinaryDocValues_INCLUDE_ALL")