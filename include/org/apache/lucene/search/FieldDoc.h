//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/FieldDoc.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneSearchFieldDoc_INCLUDE_ALL")
#if OrgApacheLuceneSearchFieldDoc_RESTRICT
#define OrgApacheLuceneSearchFieldDoc_INCLUDE_ALL 0
#else
#define OrgApacheLuceneSearchFieldDoc_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneSearchFieldDoc_RESTRICT

#if !defined (_OrgApacheLuceneSearchFieldDoc_) && (OrgApacheLuceneSearchFieldDoc_INCLUDE_ALL || OrgApacheLuceneSearchFieldDoc_INCLUDE)
#define _OrgApacheLuceneSearchFieldDoc_

#define OrgApacheLuceneSearchScoreDoc_RESTRICT 1
#define OrgApacheLuceneSearchScoreDoc_INCLUDE 1
#include "org/apache/lucene/search/ScoreDoc.h"

@class IOSObjectArray;

@interface OrgApacheLuceneSearchFieldDoc : OrgApacheLuceneSearchScoreDoc {
 @public
  IOSObjectArray *fields_;
}

#pragma mark Public

- (instancetype)initWithInt:(jint)doc
                  withFloat:(jfloat)score;

- (instancetype)initWithInt:(jint)doc
                  withFloat:(jfloat)score
          withNSObjectArray:(IOSObjectArray *)fields;

- (instancetype)initWithInt:(jint)doc
                  withFloat:(jfloat)score
          withNSObjectArray:(IOSObjectArray *)fields
                    withInt:(jint)shardIndex;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchFieldDoc)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchFieldDoc, fields_, IOSObjectArray *)

FOUNDATION_EXPORT void OrgApacheLuceneSearchFieldDoc_initWithInt_withFloat_(OrgApacheLuceneSearchFieldDoc *self, jint doc, jfloat score);

FOUNDATION_EXPORT OrgApacheLuceneSearchFieldDoc *new_OrgApacheLuceneSearchFieldDoc_initWithInt_withFloat_(jint doc, jfloat score) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneSearchFieldDoc_initWithInt_withFloat_withNSObjectArray_(OrgApacheLuceneSearchFieldDoc *self, jint doc, jfloat score, IOSObjectArray *fields);

FOUNDATION_EXPORT OrgApacheLuceneSearchFieldDoc *new_OrgApacheLuceneSearchFieldDoc_initWithInt_withFloat_withNSObjectArray_(jint doc, jfloat score, IOSObjectArray *fields) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneSearchFieldDoc_initWithInt_withFloat_withNSObjectArray_withInt_(OrgApacheLuceneSearchFieldDoc *self, jint doc, jfloat score, IOSObjectArray *fields, jint shardIndex);

FOUNDATION_EXPORT OrgApacheLuceneSearchFieldDoc *new_OrgApacheLuceneSearchFieldDoc_initWithInt_withFloat_withNSObjectArray_withInt_(jint doc, jfloat score, IOSObjectArray *fields, jint shardIndex) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchFieldDoc)

#endif

#pragma pop_macro("OrgApacheLuceneSearchFieldDoc_INCLUDE_ALL")