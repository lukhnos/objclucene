//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/Filter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchFilter")
#ifdef RESTRICT_OrgApacheLuceneSearchFilter
#define INCLUDE_ALL_OrgApacheLuceneSearchFilter 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchFilter 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchFilter

#if !defined (OrgApacheLuceneSearchFilter_) && (INCLUDE_ALL_OrgApacheLuceneSearchFilter || defined(INCLUDE_OrgApacheLuceneSearchFilter))
#define OrgApacheLuceneSearchFilter_

#define RESTRICT_OrgApacheLuceneSearchQuery 1
#define INCLUDE_OrgApacheLuceneSearchQuery 1
#include "org/apache/lucene/search/Query.h"

@class OrgApacheLuceneIndexIndexReader;
@class OrgApacheLuceneIndexLeafReaderContext;
@class OrgApacheLuceneSearchDocIdSet;
@protocol OrgApacheLuceneUtilBits;

/*!
 @brief Convenient base class for building queries that only perform matching, but
 no scoring.
 The scorer produced by such queries always returns 0 as score.
 */
@interface OrgApacheLuceneSearchFilter : OrgApacheLuceneSearchQuery

#pragma mark Public

- (instancetype)init;

/*!
 @brief Creates a <code>DocIdSet</code> enumerating the documents that should be
 permitted in search results.
 <b>NOTE:</b> null can be
 returned if no documents are accepted by this Filter.
 <p>
 Note: This method will be called once per segment in
 the index during searching.  The returned <code>DocIdSet</code>
 must refer to document IDs for that segment, not for
 the top-level reader.
 @param context a <code>org.apache.lucene.index.LeafReaderContext</code> instance opened on the index currently
 searched on. Note, it is likely that the provided reader info does not
 represent the whole underlying index i.e. if the index has more than
 one segment the given reader only represents a single segment.
 The provided context is always an atomic context, so you can call
 <code>org.apache.lucene.index.LeafReader.fields()</code>
 on the context's reader, for example.
 @param acceptDocs
 Bits that represent the allowable docs to match (typically deleted docs
 but possibly filtering other documents)
 @return a DocIdSet that provides the documents which should be permitted or
 prohibited in search results. <b>NOTE:</b> <code>null</code> should be returned if
 the filter doesn't accept any documents otherwise internal optimization might not apply
 in the case an <i>empty</i> <code>DocIdSet</code> is returned.
 */
- (OrgApacheLuceneSearchDocIdSet *)getDocIdSetWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context
                                                            withOrgApacheLuceneUtilBits:(id<OrgApacheLuceneUtilBits>)acceptDocs;

- (OrgApacheLuceneSearchQuery *)rewriteWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchFilter)

FOUNDATION_EXPORT void OrgApacheLuceneSearchFilter_init(OrgApacheLuceneSearchFilter *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchFilter)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchFilter")
