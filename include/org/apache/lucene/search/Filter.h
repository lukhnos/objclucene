//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/Filter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneSearchFilter_INCLUDE_ALL")
#if OrgApacheLuceneSearchFilter_RESTRICT
#define OrgApacheLuceneSearchFilter_INCLUDE_ALL 0
#else
#define OrgApacheLuceneSearchFilter_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneSearchFilter_RESTRICT

#if !defined (_OrgApacheLuceneSearchFilter_) && (OrgApacheLuceneSearchFilter_INCLUDE_ALL || OrgApacheLuceneSearchFilter_INCLUDE)
#define _OrgApacheLuceneSearchFilter_

#define OrgApacheLuceneSearchQuery_RESTRICT 1
#define OrgApacheLuceneSearchQuery_INCLUDE 1
#include "org/apache/lucene/search/Query.h"

@class OrgApacheLuceneIndexIndexReader;
@class OrgApacheLuceneIndexLeafReaderContext;
@class OrgApacheLuceneSearchDocIdSet;
@protocol OrgApacheLuceneUtilBits;

@interface OrgApacheLuceneSearchFilter : OrgApacheLuceneSearchQuery

#pragma mark Public

- (instancetype)init;

- (OrgApacheLuceneSearchDocIdSet *)getDocIdSetWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context
                                                            withOrgApacheLuceneUtilBits:(id<OrgApacheLuceneUtilBits>)acceptDocs;

- (OrgApacheLuceneSearchQuery *)rewriteWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchFilter)

FOUNDATION_EXPORT void OrgApacheLuceneSearchFilter_init(OrgApacheLuceneSearchFilter *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchFilter)

#endif

#pragma pop_macro("OrgApacheLuceneSearchFilter_INCLUDE_ALL")
