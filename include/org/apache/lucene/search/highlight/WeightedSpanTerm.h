//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./highlighter/src/java/org/apache/lucene/search/highlight/WeightedSpanTerm.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneSearchHighlightWeightedSpanTerm_INCLUDE_ALL")
#if OrgApacheLuceneSearchHighlightWeightedSpanTerm_RESTRICT
#define OrgApacheLuceneSearchHighlightWeightedSpanTerm_INCLUDE_ALL 0
#else
#define OrgApacheLuceneSearchHighlightWeightedSpanTerm_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneSearchHighlightWeightedSpanTerm_RESTRICT

#if !defined (_OrgApacheLuceneSearchHighlightWeightedSpanTerm_) && (OrgApacheLuceneSearchHighlightWeightedSpanTerm_INCLUDE_ALL || OrgApacheLuceneSearchHighlightWeightedSpanTerm_INCLUDE)
#define _OrgApacheLuceneSearchHighlightWeightedSpanTerm_

#define OrgApacheLuceneSearchHighlightWeightedTerm_RESTRICT 1
#define OrgApacheLuceneSearchHighlightWeightedTerm_INCLUDE 1
#include "org/apache/lucene/search/highlight/WeightedTerm.h"

@protocol JavaUtilList;

@interface OrgApacheLuceneSearchHighlightWeightedSpanTerm : OrgApacheLuceneSearchHighlightWeightedTerm {
 @public
  jboolean positionSensitive_;
}

#pragma mark Public

- (instancetype)initWithFloat:(jfloat)weight
                 withNSString:(NSString *)term;

- (void)addPositionSpansWithJavaUtilList:(id<JavaUtilList>)positionSpans;

- (jboolean)checkPositionWithInt:(jint)position;

- (id<JavaUtilList>)getPositionSpans;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchHighlightWeightedSpanTerm)

FOUNDATION_EXPORT void OrgApacheLuceneSearchHighlightWeightedSpanTerm_initWithFloat_withNSString_(OrgApacheLuceneSearchHighlightWeightedSpanTerm *self, jfloat weight, NSString *term);

FOUNDATION_EXPORT OrgApacheLuceneSearchHighlightWeightedSpanTerm *new_OrgApacheLuceneSearchHighlightWeightedSpanTerm_initWithFloat_withNSString_(jfloat weight, NSString *term) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchHighlightWeightedSpanTerm)

#endif

#pragma pop_macro("OrgApacheLuceneSearchHighlightWeightedSpanTerm_INCLUDE_ALL")
