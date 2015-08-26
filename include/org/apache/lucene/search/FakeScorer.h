//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/FakeScorer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneSearchFakeScorer_INCLUDE_ALL")
#if OrgApacheLuceneSearchFakeScorer_RESTRICT
#define OrgApacheLuceneSearchFakeScorer_INCLUDE_ALL 0
#else
#define OrgApacheLuceneSearchFakeScorer_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneSearchFakeScorer_RESTRICT

#if !defined (_OrgApacheLuceneSearchFakeScorer_) && (OrgApacheLuceneSearchFakeScorer_INCLUDE_ALL || OrgApacheLuceneSearchFakeScorer_INCLUDE)
#define _OrgApacheLuceneSearchFakeScorer_

#define OrgApacheLuceneSearchScorer_RESTRICT 1
#define OrgApacheLuceneSearchScorer_INCLUDE 1
#include "org/apache/lucene/search/Scorer.h"

@class OrgApacheLuceneSearchWeight;
@protocol JavaUtilCollection;

@interface OrgApacheLuceneSearchFakeScorer : OrgApacheLuceneSearchScorer {
 @public
  jfloat score_;
  jint doc_;
  jint freq_;
}

#pragma mark Public

- (instancetype)init;

- (jint)advanceWithInt:(jint)target;

- (jlong)cost;

- (jint)docID;

- (jint)freq;

- (id<JavaUtilCollection>)getChildren;

- (OrgApacheLuceneSearchWeight *)getWeight;

- (jint)nextDoc;

- (jfloat)score;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchFakeScorer)

FOUNDATION_EXPORT void OrgApacheLuceneSearchFakeScorer_init(OrgApacheLuceneSearchFakeScorer *self);

FOUNDATION_EXPORT OrgApacheLuceneSearchFakeScorer *new_OrgApacheLuceneSearchFakeScorer_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchFakeScorer)

#endif

#pragma pop_macro("OrgApacheLuceneSearchFakeScorer_INCLUDE_ALL")
