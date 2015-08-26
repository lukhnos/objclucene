//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/ConstantScoreWeight.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneSearchConstantScoreWeight_INCLUDE_ALL")
#if OrgApacheLuceneSearchConstantScoreWeight_RESTRICT
#define OrgApacheLuceneSearchConstantScoreWeight_INCLUDE_ALL 0
#else
#define OrgApacheLuceneSearchConstantScoreWeight_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneSearchConstantScoreWeight_RESTRICT

#if !defined (_OrgApacheLuceneSearchConstantScoreWeight_) && (OrgApacheLuceneSearchConstantScoreWeight_INCLUDE_ALL || OrgApacheLuceneSearchConstantScoreWeight_INCLUDE)
#define _OrgApacheLuceneSearchConstantScoreWeight_

#define OrgApacheLuceneSearchWeight_RESTRICT 1
#define OrgApacheLuceneSearchWeight_INCLUDE 1
#include "org/apache/lucene/search/Weight.h"

@class OrgApacheLuceneIndexLeafReaderContext;
@class OrgApacheLuceneSearchExplanation;
@class OrgApacheLuceneSearchQuery;
@protocol JavaUtilSet;

@interface OrgApacheLuceneSearchConstantScoreWeight : OrgApacheLuceneSearchWeight

#pragma mark Public

- (OrgApacheLuceneSearchExplanation *)explainWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context
                                                                               withInt:(jint)doc;

- (void)extractTermsWithJavaUtilSet:(id<JavaUtilSet>)terms;

- (jfloat)getValueForNormalization;

- (void)normalizeWithFloat:(jfloat)norm
                 withFloat:(jfloat)topLevelBoost;

#pragma mark Protected

- (instancetype)initWithOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)query;

- (jfloat)score;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchConstantScoreWeight)

FOUNDATION_EXPORT void OrgApacheLuceneSearchConstantScoreWeight_initWithOrgApacheLuceneSearchQuery_(OrgApacheLuceneSearchConstantScoreWeight *self, OrgApacheLuceneSearchQuery *query);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchConstantScoreWeight)

#endif

#pragma pop_macro("OrgApacheLuceneSearchConstantScoreWeight_INCLUDE_ALL")
