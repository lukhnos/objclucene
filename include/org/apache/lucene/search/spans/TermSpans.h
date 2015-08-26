//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/spans/TermSpans.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneSearchSpansTermSpans_INCLUDE_ALL")
#if OrgApacheLuceneSearchSpansTermSpans_RESTRICT
#define OrgApacheLuceneSearchSpansTermSpans_INCLUDE_ALL 0
#else
#define OrgApacheLuceneSearchSpansTermSpans_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneSearchSpansTermSpans_RESTRICT

#if !defined (_OrgApacheLuceneSearchSpansTermSpans_) && (OrgApacheLuceneSearchSpansTermSpans_INCLUDE_ALL || OrgApacheLuceneSearchSpansTermSpans_INCLUDE)
#define _OrgApacheLuceneSearchSpansTermSpans_

#define OrgApacheLuceneSearchSpansSpans_RESTRICT 1
#define OrgApacheLuceneSearchSpansSpans_INCLUDE 1
#include "org/apache/lucene/search/spans/Spans.h"

@class OrgApacheLuceneIndexPostingsEnum;
@class OrgApacheLuceneIndexTerm;
@protocol OrgApacheLuceneSearchSpansSpanCollector;

@interface OrgApacheLuceneSearchSpansTermSpans : OrgApacheLuceneSearchSpansSpans {
 @public
  OrgApacheLuceneIndexPostingsEnum *postings_;
  OrgApacheLuceneIndexTerm *term_;
  jint doc_;
  jint freq_;
  jint count_;
  jint position_;
  jboolean readPayload_;
}

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneIndexPostingsEnum:(OrgApacheLuceneIndexPostingsEnum *)postings
                            withOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term;

- (jint)advanceWithInt:(jint)target;

- (void)collectWithOrgApacheLuceneSearchSpansSpanCollector:(id<OrgApacheLuceneSearchSpansSpanCollector>)collector;

- (jlong)cost;

- (jint)docID;

- (jint)endPosition;

- (OrgApacheLuceneIndexPostingsEnum *)getPostings;

- (jint)nextDoc;

- (jint)nextStartPosition;

- (jint)startPosition;

- (NSString *)description;

- (jint)width;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSpansTermSpans)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSpansTermSpans, postings_, OrgApacheLuceneIndexPostingsEnum *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSpansTermSpans, term_, OrgApacheLuceneIndexTerm *)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSpansTermSpans_initWithOrgApacheLuceneIndexPostingsEnum_withOrgApacheLuceneIndexTerm_(OrgApacheLuceneSearchSpansTermSpans *self, OrgApacheLuceneIndexPostingsEnum *postings, OrgApacheLuceneIndexTerm *term);

FOUNDATION_EXPORT OrgApacheLuceneSearchSpansTermSpans *new_OrgApacheLuceneSearchSpansTermSpans_initWithOrgApacheLuceneIndexPostingsEnum_withOrgApacheLuceneIndexTerm_(OrgApacheLuceneIndexPostingsEnum *postings, OrgApacheLuceneIndexTerm *term) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSpansTermSpans)

#endif

#pragma pop_macro("OrgApacheLuceneSearchSpansTermSpans_INCLUDE_ALL")
