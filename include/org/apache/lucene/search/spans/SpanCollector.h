//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/spans/SpanCollector.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneSearchSpansSpanCollector_INCLUDE_ALL")
#if OrgApacheLuceneSearchSpansSpanCollector_RESTRICT
#define OrgApacheLuceneSearchSpansSpanCollector_INCLUDE_ALL 0
#else
#define OrgApacheLuceneSearchSpansSpanCollector_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneSearchSpansSpanCollector_RESTRICT

#if !defined (_OrgApacheLuceneSearchSpansSpanCollector_) && (OrgApacheLuceneSearchSpansSpanCollector_INCLUDE_ALL || OrgApacheLuceneSearchSpansSpanCollector_INCLUDE)
#define _OrgApacheLuceneSearchSpansSpanCollector_

@class OrgApacheLuceneIndexPostingsEnum;
@class OrgApacheLuceneIndexTerm;

@protocol OrgApacheLuceneSearchSpansSpanCollector < NSObject, JavaObject >

- (void)collectLeafWithOrgApacheLuceneIndexPostingsEnum:(OrgApacheLuceneIndexPostingsEnum *)postings
                                                withInt:(jint)position
                           withOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term;

- (void)reset;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSpansSpanCollector)

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSpansSpanCollector)

#endif

#pragma pop_macro("OrgApacheLuceneSearchSpansSpanCollector_INCLUDE_ALL")
