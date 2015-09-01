//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/TermCollectingRewrite.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneSearchTermCollectingRewrite_INCLUDE_ALL")
#if OrgApacheLuceneSearchTermCollectingRewrite_RESTRICT
#define OrgApacheLuceneSearchTermCollectingRewrite_INCLUDE_ALL 0
#else
#define OrgApacheLuceneSearchTermCollectingRewrite_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneSearchTermCollectingRewrite_RESTRICT

#if !defined (_OrgApacheLuceneSearchTermCollectingRewrite_) && (OrgApacheLuceneSearchTermCollectingRewrite_INCLUDE_ALL || OrgApacheLuceneSearchTermCollectingRewrite_INCLUDE)
#define _OrgApacheLuceneSearchTermCollectingRewrite_

#define OrgApacheLuceneSearchMultiTermQuery_RESTRICT 1
#define OrgApacheLuceneSearchMultiTermQuery_RewriteMethod_INCLUDE 1
#include "org/apache/lucene/search/MultiTermQuery.h"

@class OrgApacheLuceneIndexIndexReader;
@class OrgApacheLuceneIndexTerm;
@class OrgApacheLuceneIndexTermContext;
@class OrgApacheLuceneSearchMultiTermQuery;
@class OrgApacheLuceneSearchQuery;
@class OrgApacheLuceneSearchTermCollectingRewrite_TermCollector;

@interface OrgApacheLuceneSearchTermCollectingRewrite : OrgApacheLuceneSearchMultiTermQuery_RewriteMethod

#pragma mark Protected

- (void)addClauseWithId:(id)topLevel
withOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term
                withInt:(jint)docCount
              withFloat:(jfloat)boost
withOrgApacheLuceneIndexTermContext:(OrgApacheLuceneIndexTermContext *)states;

- (OrgApacheLuceneSearchQuery *)buildWithId:(id)builder;

- (id)getTopLevelBuilder;

#pragma mark Package-Private

- (instancetype)init;

- (void)collectTermsWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                withOrgApacheLuceneSearchMultiTermQuery:(OrgApacheLuceneSearchMultiTermQuery *)query
withOrgApacheLuceneSearchTermCollectingRewrite_TermCollector:(OrgApacheLuceneSearchTermCollectingRewrite_TermCollector *)collector;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchTermCollectingRewrite)

FOUNDATION_EXPORT void OrgApacheLuceneSearchTermCollectingRewrite_init(OrgApacheLuceneSearchTermCollectingRewrite *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchTermCollectingRewrite)

#endif

#if !defined (_OrgApacheLuceneSearchTermCollectingRewrite_TermCollector_) && (OrgApacheLuceneSearchTermCollectingRewrite_INCLUDE_ALL || OrgApacheLuceneSearchTermCollectingRewrite_TermCollector_INCLUDE)
#define _OrgApacheLuceneSearchTermCollectingRewrite_TermCollector_

@class OrgApacheLuceneIndexIndexReaderContext;
@class OrgApacheLuceneIndexLeafReaderContext;
@class OrgApacheLuceneIndexTermsEnum;
@class OrgApacheLuceneUtilAttributeSource;
@class OrgApacheLuceneUtilBytesRef;

@interface OrgApacheLuceneSearchTermCollectingRewrite_TermCollector : NSObject {
 @public
  OrgApacheLuceneIndexLeafReaderContext *readerContext_;
  OrgApacheLuceneIndexIndexReaderContext *topReaderContext_;
  OrgApacheLuceneUtilAttributeSource *attributes_;
}

#pragma mark Public

- (jboolean)collectWithOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)bytes;

- (void)setNextEnumWithOrgApacheLuceneIndexTermsEnum:(OrgApacheLuceneIndexTermsEnum *)termsEnum;

- (void)setReaderContextWithOrgApacheLuceneIndexIndexReaderContext:(OrgApacheLuceneIndexIndexReaderContext *)topReaderContext
                         withOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)readerContext;

#pragma mark Package-Private

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchTermCollectingRewrite_TermCollector)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchTermCollectingRewrite_TermCollector, readerContext_, OrgApacheLuceneIndexLeafReaderContext *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchTermCollectingRewrite_TermCollector, topReaderContext_, OrgApacheLuceneIndexIndexReaderContext *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchTermCollectingRewrite_TermCollector, attributes_, OrgApacheLuceneUtilAttributeSource *)

FOUNDATION_EXPORT void OrgApacheLuceneSearchTermCollectingRewrite_TermCollector_init(OrgApacheLuceneSearchTermCollectingRewrite_TermCollector *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchTermCollectingRewrite_TermCollector)

#endif

#pragma pop_macro("OrgApacheLuceneSearchTermCollectingRewrite_INCLUDE_ALL")
