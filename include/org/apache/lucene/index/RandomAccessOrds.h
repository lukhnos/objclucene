//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/RandomAccessOrds.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneIndexRandomAccessOrds_INCLUDE_ALL")
#if OrgApacheLuceneIndexRandomAccessOrds_RESTRICT
#define OrgApacheLuceneIndexRandomAccessOrds_INCLUDE_ALL 0
#else
#define OrgApacheLuceneIndexRandomAccessOrds_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneIndexRandomAccessOrds_RESTRICT

#if !defined (_OrgApacheLuceneIndexRandomAccessOrds_) && (OrgApacheLuceneIndexRandomAccessOrds_INCLUDE_ALL || OrgApacheLuceneIndexRandomAccessOrds_INCLUDE)
#define _OrgApacheLuceneIndexRandomAccessOrds_

#define OrgApacheLuceneIndexSortedSetDocValues_RESTRICT 1
#define OrgApacheLuceneIndexSortedSetDocValues_INCLUDE 1
#include "org/apache/lucene/index/SortedSetDocValues.h"

@interface OrgApacheLuceneIndexRandomAccessOrds : OrgApacheLuceneIndexSortedSetDocValues

#pragma mark Public

- (jint)cardinality;

- (jlong)ordAtWithInt:(jint)index;

#pragma mark Protected

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexRandomAccessOrds)

FOUNDATION_EXPORT void OrgApacheLuceneIndexRandomAccessOrds_init(OrgApacheLuceneIndexRandomAccessOrds *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexRandomAccessOrds)

#endif

#pragma pop_macro("OrgApacheLuceneIndexRandomAccessOrds_INCLUDE_ALL")
