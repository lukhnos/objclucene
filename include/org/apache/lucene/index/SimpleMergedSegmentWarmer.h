//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/SimpleMergedSegmentWarmer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneIndexSimpleMergedSegmentWarmer_INCLUDE_ALL")
#if OrgApacheLuceneIndexSimpleMergedSegmentWarmer_RESTRICT
#define OrgApacheLuceneIndexSimpleMergedSegmentWarmer_INCLUDE_ALL 0
#else
#define OrgApacheLuceneIndexSimpleMergedSegmentWarmer_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneIndexSimpleMergedSegmentWarmer_RESTRICT

#if !defined (_OrgApacheLuceneIndexSimpleMergedSegmentWarmer_) && (OrgApacheLuceneIndexSimpleMergedSegmentWarmer_INCLUDE_ALL || OrgApacheLuceneIndexSimpleMergedSegmentWarmer_INCLUDE)
#define _OrgApacheLuceneIndexSimpleMergedSegmentWarmer_

#define OrgApacheLuceneIndexIndexWriter_RESTRICT 1
#define OrgApacheLuceneIndexIndexWriter_IndexReaderWarmer_INCLUDE 1
#include "org/apache/lucene/index/IndexWriter.h"

@interface OrgApacheLuceneIndexSimpleMergedSegmentWarmer : OrgApacheLuceneIndexIndexWriter_IndexReaderWarmer

#pragma mark Public

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexSimpleMergedSegmentWarmer)

FOUNDATION_EXPORT void OrgApacheLuceneIndexSimpleMergedSegmentWarmer_init(OrgApacheLuceneIndexSimpleMergedSegmentWarmer *self);

FOUNDATION_EXPORT OrgApacheLuceneIndexSimpleMergedSegmentWarmer *new_OrgApacheLuceneIndexSimpleMergedSegmentWarmer_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexSimpleMergedSegmentWarmer)

#endif

#pragma pop_macro("OrgApacheLuceneIndexSimpleMergedSegmentWarmer_INCLUDE_ALL")
