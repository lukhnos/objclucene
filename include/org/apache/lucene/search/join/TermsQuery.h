//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./join/src/java/org/apache/lucene/search/join/TermsQuery.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneSearchJoinTermsQuery_INCLUDE_ALL")
#if OrgApacheLuceneSearchJoinTermsQuery_RESTRICT
#define OrgApacheLuceneSearchJoinTermsQuery_INCLUDE_ALL 0
#else
#define OrgApacheLuceneSearchJoinTermsQuery_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneSearchJoinTermsQuery_RESTRICT

#if !defined (_OrgApacheLuceneSearchJoinTermsQuery_) && (OrgApacheLuceneSearchJoinTermsQuery_INCLUDE_ALL || OrgApacheLuceneSearchJoinTermsQuery_INCLUDE)
#define _OrgApacheLuceneSearchJoinTermsQuery_

#define OrgApacheLuceneSearchMultiTermQuery_RESTRICT 1
#define OrgApacheLuceneSearchMultiTermQuery_INCLUDE 1
#include "org/apache/lucene/search/MultiTermQuery.h"

@interface OrgApacheLuceneSearchJoinTermsQuery : OrgApacheLuceneSearchMultiTermQuery

#pragma mark Package-Private

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchJoinTermsQuery)

FOUNDATION_EXPORT void OrgApacheLuceneSearchJoinTermsQuery_init(OrgApacheLuceneSearchJoinTermsQuery *self);

FOUNDATION_EXPORT OrgApacheLuceneSearchJoinTermsQuery *new_OrgApacheLuceneSearchJoinTermsQuery_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchJoinTermsQuery)

#endif

#if !defined (_OrgApacheLuceneSearchJoinTermsQuery_SeekingTermSetTermsEnum_) && (OrgApacheLuceneSearchJoinTermsQuery_INCLUDE_ALL || OrgApacheLuceneSearchJoinTermsQuery_SeekingTermSetTermsEnum_INCLUDE)
#define _OrgApacheLuceneSearchJoinTermsQuery_SeekingTermSetTermsEnum_

#define OrgApacheLuceneIndexFilteredTermsEnum_RESTRICT 1
#define OrgApacheLuceneIndexFilteredTermsEnum_INCLUDE 1
#include "org/apache/lucene/index/FilteredTermsEnum.h"

@interface OrgApacheLuceneSearchJoinTermsQuery_SeekingTermSetTermsEnum : OrgApacheLuceneIndexFilteredTermsEnum

#pragma mark Package-Private

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchJoinTermsQuery_SeekingTermSetTermsEnum)

FOUNDATION_EXPORT void OrgApacheLuceneSearchJoinTermsQuery_SeekingTermSetTermsEnum_init(OrgApacheLuceneSearchJoinTermsQuery_SeekingTermSetTermsEnum *self);

FOUNDATION_EXPORT OrgApacheLuceneSearchJoinTermsQuery_SeekingTermSetTermsEnum *new_OrgApacheLuceneSearchJoinTermsQuery_SeekingTermSetTermsEnum_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchJoinTermsQuery_SeekingTermSetTermsEnum)

#endif

#pragma pop_macro("OrgApacheLuceneSearchJoinTermsQuery_INCLUDE_ALL")
