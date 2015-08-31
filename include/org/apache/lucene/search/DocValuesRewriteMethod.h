//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/DocValuesRewriteMethod.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneSearchDocValuesRewriteMethod_INCLUDE_ALL")
#if OrgApacheLuceneSearchDocValuesRewriteMethod_RESTRICT
#define OrgApacheLuceneSearchDocValuesRewriteMethod_INCLUDE_ALL 0
#else
#define OrgApacheLuceneSearchDocValuesRewriteMethod_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneSearchDocValuesRewriteMethod_RESTRICT

#if !defined (_OrgApacheLuceneSearchDocValuesRewriteMethod_) && (OrgApacheLuceneSearchDocValuesRewriteMethod_INCLUDE_ALL || OrgApacheLuceneSearchDocValuesRewriteMethod_INCLUDE)
#define _OrgApacheLuceneSearchDocValuesRewriteMethod_

#define OrgApacheLuceneSearchMultiTermQuery_RESTRICT 1
#define OrgApacheLuceneSearchMultiTermQuery_RewriteMethod_INCLUDE 1
#include "org/apache/lucene/search/MultiTermQuery.h"

@class OrgApacheLuceneIndexIndexReader;
@class OrgApacheLuceneSearchMultiTermQuery;
@class OrgApacheLuceneSearchQuery;

@interface OrgApacheLuceneSearchDocValuesRewriteMethod : OrgApacheLuceneSearchMultiTermQuery_RewriteMethod

#pragma mark Public

- (instancetype)init;

- (jboolean)isEqual:(id)obj;

- (NSUInteger)hash;

- (OrgApacheLuceneSearchQuery *)rewriteWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                   withOrgApacheLuceneSearchMultiTermQuery:(OrgApacheLuceneSearchMultiTermQuery *)query;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchDocValuesRewriteMethod)

FOUNDATION_EXPORT void OrgApacheLuceneSearchDocValuesRewriteMethod_init(OrgApacheLuceneSearchDocValuesRewriteMethod *self);

FOUNDATION_EXPORT OrgApacheLuceneSearchDocValuesRewriteMethod *new_OrgApacheLuceneSearchDocValuesRewriteMethod_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchDocValuesRewriteMethod)

#endif

#if !defined (_OrgApacheLuceneSearchDocValuesRewriteMethod_MultiTermQueryDocValuesWrapper_) && (OrgApacheLuceneSearchDocValuesRewriteMethod_INCLUDE_ALL || OrgApacheLuceneSearchDocValuesRewriteMethod_MultiTermQueryDocValuesWrapper_INCLUDE)
#define _OrgApacheLuceneSearchDocValuesRewriteMethod_MultiTermQueryDocValuesWrapper_

#define OrgApacheLuceneSearchQuery_RESTRICT 1
#define OrgApacheLuceneSearchQuery_INCLUDE 1
#include "org/apache/lucene/search/Query.h"

@class OrgApacheLuceneSearchIndexSearcher;
@class OrgApacheLuceneSearchMultiTermQuery;
@class OrgApacheLuceneSearchWeight;

@interface OrgApacheLuceneSearchDocValuesRewriteMethod_MultiTermQueryDocValuesWrapper : OrgApacheLuceneSearchQuery {
 @public
  OrgApacheLuceneSearchMultiTermQuery *query_;
}

#pragma mark Public

- (OrgApacheLuceneSearchWeight *)createWeightWithOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher
                                                                        withBoolean:(jboolean)needsScores;

- (jboolean)isEqual:(id)o;

- (NSString *)getField;

- (NSUInteger)hash;

- (NSString *)toStringWithNSString:(NSString *)field;

#pragma mark Protected

- (instancetype)initWithOrgApacheLuceneSearchMultiTermQuery:(OrgApacheLuceneSearchMultiTermQuery *)query;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchDocValuesRewriteMethod_MultiTermQueryDocValuesWrapper)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchDocValuesRewriteMethod_MultiTermQueryDocValuesWrapper, query_, OrgApacheLuceneSearchMultiTermQuery *)

FOUNDATION_EXPORT void OrgApacheLuceneSearchDocValuesRewriteMethod_MultiTermQueryDocValuesWrapper_initWithOrgApacheLuceneSearchMultiTermQuery_(OrgApacheLuceneSearchDocValuesRewriteMethod_MultiTermQueryDocValuesWrapper *self, OrgApacheLuceneSearchMultiTermQuery *query);

FOUNDATION_EXPORT OrgApacheLuceneSearchDocValuesRewriteMethod_MultiTermQueryDocValuesWrapper *new_OrgApacheLuceneSearchDocValuesRewriteMethod_MultiTermQueryDocValuesWrapper_initWithOrgApacheLuceneSearchMultiTermQuery_(OrgApacheLuceneSearchMultiTermQuery *query) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchDocValuesRewriteMethod_MultiTermQueryDocValuesWrapper)

#endif

#pragma pop_macro("OrgApacheLuceneSearchDocValuesRewriteMethod_INCLUDE_ALL")