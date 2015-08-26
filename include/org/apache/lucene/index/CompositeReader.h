//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/CompositeReader.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneIndexCompositeReader_INCLUDE_ALL")
#if OrgApacheLuceneIndexCompositeReader_RESTRICT
#define OrgApacheLuceneIndexCompositeReader_INCLUDE_ALL 0
#else
#define OrgApacheLuceneIndexCompositeReader_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneIndexCompositeReader_RESTRICT

#if !defined (_OrgApacheLuceneIndexCompositeReader_) && (OrgApacheLuceneIndexCompositeReader_INCLUDE_ALL || OrgApacheLuceneIndexCompositeReader_INCLUDE)
#define _OrgApacheLuceneIndexCompositeReader_

#define OrgApacheLuceneIndexIndexReader_RESTRICT 1
#define OrgApacheLuceneIndexIndexReader_INCLUDE 1
#include "org/apache/lucene/index/IndexReader.h"

@class OrgApacheLuceneIndexCompositeReaderContext;
@protocol JavaUtilList;

@interface OrgApacheLuceneIndexCompositeReader : OrgApacheLuceneIndexIndexReader

#pragma mark Public

- (OrgApacheLuceneIndexCompositeReaderContext *)getContext;

- (NSString *)description;

#pragma mark Protected

- (instancetype)init;

- (id<JavaUtilList>)getSequentialSubReaders;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexCompositeReader)

FOUNDATION_EXPORT void OrgApacheLuceneIndexCompositeReader_init(OrgApacheLuceneIndexCompositeReader *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexCompositeReader)

#endif

#pragma pop_macro("OrgApacheLuceneIndexCompositeReader_INCLUDE_ALL")
