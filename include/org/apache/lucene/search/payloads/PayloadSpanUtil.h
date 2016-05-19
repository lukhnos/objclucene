//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/payloads/PayloadSpanUtil.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchPayloadsPayloadSpanUtil")
#ifdef RESTRICT_OrgApacheLuceneSearchPayloadsPayloadSpanUtil
#define INCLUDE_ALL_OrgApacheLuceneSearchPayloadsPayloadSpanUtil 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchPayloadsPayloadSpanUtil 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchPayloadsPayloadSpanUtil

#if !defined (OrgApacheLuceneSearchPayloadsPayloadSpanUtil_) && (INCLUDE_ALL_OrgApacheLuceneSearchPayloadsPayloadSpanUtil || defined(INCLUDE_OrgApacheLuceneSearchPayloadsPayloadSpanUtil))
#define OrgApacheLuceneSearchPayloadsPayloadSpanUtil_

@class OrgApacheLuceneIndexIndexReaderContext;
@class OrgApacheLuceneSearchQuery;
@protocol JavaUtilCollection;

/*!
 @brief Experimental class to get set of payloads for most standard Lucene queries.
 Operates like Highlighter - IndexReader should only contain doc of interest,
 best to use MemoryIndex.
 */
@interface OrgApacheLuceneSearchPayloadsPayloadSpanUtil : NSObject

#pragma mark Public

/*!
 @param context
 that contains doc with payloads to extract
 - seealso: IndexReader#getContext()
 */
- (instancetype)initWithOrgApacheLuceneIndexIndexReaderContext:(OrgApacheLuceneIndexIndexReaderContext *)context;

/*!
 @brief Query should be rewritten for wild/fuzzy support.
 @param query rewritten query
 @return payloads Collection
 @throws IOException if there is a low-level I/O error
 */
- (id<JavaUtilCollection>)getPayloadsForQueryWithOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)query;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchPayloadsPayloadSpanUtil)

FOUNDATION_EXPORT void OrgApacheLuceneSearchPayloadsPayloadSpanUtil_initWithOrgApacheLuceneIndexIndexReaderContext_(OrgApacheLuceneSearchPayloadsPayloadSpanUtil *self, OrgApacheLuceneIndexIndexReaderContext *context);

FOUNDATION_EXPORT OrgApacheLuceneSearchPayloadsPayloadSpanUtil *new_OrgApacheLuceneSearchPayloadsPayloadSpanUtil_initWithOrgApacheLuceneIndexIndexReaderContext_(OrgApacheLuceneIndexIndexReaderContext *context) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchPayloadsPayloadSpanUtil *create_OrgApacheLuceneSearchPayloadsPayloadSpanUtil_initWithOrgApacheLuceneIndexIndexReaderContext_(OrgApacheLuceneIndexIndexReaderContext *context);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchPayloadsPayloadSpanUtil)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchPayloadsPayloadSpanUtil")
