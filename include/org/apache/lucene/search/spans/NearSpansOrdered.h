//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/spans/NearSpansOrdered.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneSearchSpansNearSpansOrdered_INCLUDE_ALL")
#if OrgApacheLuceneSearchSpansNearSpansOrdered_RESTRICT
#define OrgApacheLuceneSearchSpansNearSpansOrdered_INCLUDE_ALL 0
#else
#define OrgApacheLuceneSearchSpansNearSpansOrdered_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneSearchSpansNearSpansOrdered_RESTRICT

#if !defined (_OrgApacheLuceneSearchSpansNearSpansOrdered_) && (OrgApacheLuceneSearchSpansNearSpansOrdered_INCLUDE_ALL || OrgApacheLuceneSearchSpansNearSpansOrdered_INCLUDE)
#define _OrgApacheLuceneSearchSpansNearSpansOrdered_

#define OrgApacheLuceneSearchSpansNearSpans_RESTRICT 1
#define OrgApacheLuceneSearchSpansNearSpans_INCLUDE 1
#include "org/apache/lucene/search/spans/NearSpans.h"

@class OrgApacheLuceneSearchSpansSpanNearQuery;
@protocol JavaUtilList;
@protocol OrgApacheLuceneSearchSpansSpanCollector;

@interface OrgApacheLuceneSearchSpansNearSpansOrdered : OrgApacheLuceneSearchSpansNearSpans {
 @public
  jint matchStart_;
  jint matchEnd_;
  jint matchWidth_;
}

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneSearchSpansSpanNearQuery:(OrgApacheLuceneSearchSpansSpanNearQuery *)query
                                               withJavaUtilList:(id<JavaUtilList>)subSpans;

- (void)collectWithOrgApacheLuceneSearchSpansSpanCollector:(id<OrgApacheLuceneSearchSpansSpanCollector>)collector;

- (jint)endPosition;

- (jint)nextStartPosition;

- (jint)startPosition;

- (NSString *)description;

- (jint)width;

#pragma mark Package-Private

- (jboolean)twoPhaseCurrentDocMatches;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSpansNearSpansOrdered)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSpansNearSpansOrdered_initWithOrgApacheLuceneSearchSpansSpanNearQuery_withJavaUtilList_(OrgApacheLuceneSearchSpansNearSpansOrdered *self, OrgApacheLuceneSearchSpansSpanNearQuery *query, id<JavaUtilList> subSpans);

FOUNDATION_EXPORT OrgApacheLuceneSearchSpansNearSpansOrdered *new_OrgApacheLuceneSearchSpansNearSpansOrdered_initWithOrgApacheLuceneSearchSpansSpanNearQuery_withJavaUtilList_(OrgApacheLuceneSearchSpansSpanNearQuery *query, id<JavaUtilList> subSpans) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSpansNearSpansOrdered)

#endif

#pragma pop_macro("OrgApacheLuceneSearchSpansNearSpansOrdered_INCLUDE_ALL")
