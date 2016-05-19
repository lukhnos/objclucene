//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/DocTermOrdsRewriteMethod.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchDocTermOrdsRewriteMethod")
#ifdef RESTRICT_OrgApacheLuceneSearchDocTermOrdsRewriteMethod
#define INCLUDE_ALL_OrgApacheLuceneSearchDocTermOrdsRewriteMethod 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchDocTermOrdsRewriteMethod 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchDocTermOrdsRewriteMethod

#if !defined (OrgApacheLuceneSearchDocTermOrdsRewriteMethod_) && (INCLUDE_ALL_OrgApacheLuceneSearchDocTermOrdsRewriteMethod || defined(INCLUDE_OrgApacheLuceneSearchDocTermOrdsRewriteMethod))
#define OrgApacheLuceneSearchDocTermOrdsRewriteMethod_

#define RESTRICT_OrgApacheLuceneSearchMultiTermQuery 1
#define INCLUDE_OrgApacheLuceneSearchMultiTermQuery_RewriteMethod 1
#include "org/apache/lucene/search/MultiTermQuery.h"

@class IOSObjectArray;
@class OrgApacheLuceneIndexIndexReader;
@class OrgApacheLuceneSearchMultiTermQuery;
@class OrgApacheLuceneSearchQuery;

/*!
 @brief Rewrites MultiTermQueries into a filter, using DocTermOrds for term enumeration.
 <p>
 This can be used to perform these queries against an unindexed docvalues field.
 */
@interface OrgApacheLuceneSearchDocTermOrdsRewriteMethod : OrgApacheLuceneSearchMultiTermQuery_RewriteMethod

#pragma mark Public

- (instancetype)init;

- (jboolean)isEqual:(id)obj;

- (NSUInteger)hash;

- (OrgApacheLuceneSearchQuery *)rewriteWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                   withOrgApacheLuceneSearchMultiTermQuery:(OrgApacheLuceneSearchMultiTermQuery *)query;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchDocTermOrdsRewriteMethod)

FOUNDATION_EXPORT void OrgApacheLuceneSearchDocTermOrdsRewriteMethod_init(OrgApacheLuceneSearchDocTermOrdsRewriteMethod *self);

FOUNDATION_EXPORT OrgApacheLuceneSearchDocTermOrdsRewriteMethod *new_OrgApacheLuceneSearchDocTermOrdsRewriteMethod_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchDocTermOrdsRewriteMethod *create_OrgApacheLuceneSearchDocTermOrdsRewriteMethod_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchDocTermOrdsRewriteMethod)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchDocTermOrdsRewriteMethod")
