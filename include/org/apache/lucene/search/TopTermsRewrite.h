//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/TopTermsRewrite.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneSearchTopTermsRewrite_INCLUDE_ALL")
#if OrgApacheLuceneSearchTopTermsRewrite_RESTRICT
#define OrgApacheLuceneSearchTopTermsRewrite_INCLUDE_ALL 0
#else
#define OrgApacheLuceneSearchTopTermsRewrite_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneSearchTopTermsRewrite_RESTRICT

#if !defined (_OrgApacheLuceneSearchTopTermsRewrite_) && (OrgApacheLuceneSearchTopTermsRewrite_INCLUDE_ALL || OrgApacheLuceneSearchTopTermsRewrite_INCLUDE)
#define _OrgApacheLuceneSearchTopTermsRewrite_

#define OrgApacheLuceneSearchTermCollectingRewrite_RESTRICT 1
#define OrgApacheLuceneSearchTermCollectingRewrite_INCLUDE 1
#include "org/apache/lucene/search/TermCollectingRewrite.h"

@class OrgApacheLuceneIndexIndexReader;
@class OrgApacheLuceneSearchMultiTermQuery;
@class OrgApacheLuceneSearchQuery;

@interface OrgApacheLuceneSearchTopTermsRewrite : OrgApacheLuceneSearchTermCollectingRewrite

#pragma mark Public

- (instancetype)initWithInt:(jint)size;

- (jboolean)isEqual:(id)obj;

- (NSUInteger)hash;

- (OrgApacheLuceneSearchQuery *)rewriteWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                   withOrgApacheLuceneSearchMultiTermQuery:(OrgApacheLuceneSearchMultiTermQuery *)query;

#pragma mark Protected

- (jint)getMaxSize;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneSearchTopTermsRewrite)

FOUNDATION_EXPORT void OrgApacheLuceneSearchTopTermsRewrite_initWithInt_(OrgApacheLuceneSearchTopTermsRewrite *self, jint size);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchTopTermsRewrite)

#endif

#if !defined (_OrgApacheLuceneSearchTopTermsRewrite_ScoreTerm_) && (OrgApacheLuceneSearchTopTermsRewrite_INCLUDE_ALL || OrgApacheLuceneSearchTopTermsRewrite_ScoreTerm_INCLUDE)
#define _OrgApacheLuceneSearchTopTermsRewrite_ScoreTerm_

#define JavaLangComparable_RESTRICT 1
#define JavaLangComparable_INCLUDE 1
#include "java/lang/Comparable.h"

@class OrgApacheLuceneIndexTermContext;
@class OrgApacheLuceneUtilBytesRefBuilder;

@interface OrgApacheLuceneSearchTopTermsRewrite_ScoreTerm : NSObject < JavaLangComparable > {
 @public
  OrgApacheLuceneUtilBytesRefBuilder *bytes_;
  jfloat boost_;
  OrgApacheLuceneIndexTermContext *termState_;
}

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneIndexTermContext:(OrgApacheLuceneIndexTermContext *)termState;

- (jint)compareToWithId:(OrgApacheLuceneSearchTopTermsRewrite_ScoreTerm *)other;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchTopTermsRewrite_ScoreTerm)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchTopTermsRewrite_ScoreTerm, bytes_, OrgApacheLuceneUtilBytesRefBuilder *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchTopTermsRewrite_ScoreTerm, termState_, OrgApacheLuceneIndexTermContext *)

FOUNDATION_EXPORT void OrgApacheLuceneSearchTopTermsRewrite_ScoreTerm_initWithOrgApacheLuceneIndexTermContext_(OrgApacheLuceneSearchTopTermsRewrite_ScoreTerm *self, OrgApacheLuceneIndexTermContext *termState);

FOUNDATION_EXPORT OrgApacheLuceneSearchTopTermsRewrite_ScoreTerm *new_OrgApacheLuceneSearchTopTermsRewrite_ScoreTerm_initWithOrgApacheLuceneIndexTermContext_(OrgApacheLuceneIndexTermContext *termState) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchTopTermsRewrite_ScoreTerm)

#endif

#pragma pop_macro("OrgApacheLuceneSearchTopTermsRewrite_INCLUDE_ALL")
