//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/FieldTermIterator.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneIndexFieldTermIterator_INCLUDE_ALL")
#if OrgApacheLuceneIndexFieldTermIterator_RESTRICT
#define OrgApacheLuceneIndexFieldTermIterator_INCLUDE_ALL 0
#else
#define OrgApacheLuceneIndexFieldTermIterator_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneIndexFieldTermIterator_RESTRICT

#if !defined (_OrgApacheLuceneIndexFieldTermIterator_) && (OrgApacheLuceneIndexFieldTermIterator_INCLUDE_ALL || OrgApacheLuceneIndexFieldTermIterator_INCLUDE)
#define _OrgApacheLuceneIndexFieldTermIterator_

#define OrgApacheLuceneUtilBytesRefIterator_RESTRICT 1
#define OrgApacheLuceneUtilBytesRefIterator_INCLUDE 1
#include "org/apache/lucene/util/BytesRefIterator.h"

@interface OrgApacheLuceneIndexFieldTermIterator : NSObject < OrgApacheLuceneUtilBytesRefIterator >

#pragma mark Package-Private

- (instancetype)init;

- (jlong)delGen;

- (NSString *)field;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexFieldTermIterator)

FOUNDATION_EXPORT void OrgApacheLuceneIndexFieldTermIterator_init(OrgApacheLuceneIndexFieldTermIterator *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexFieldTermIterator)

#endif

#pragma pop_macro("OrgApacheLuceneIndexFieldTermIterator_INCLUDE_ALL")
