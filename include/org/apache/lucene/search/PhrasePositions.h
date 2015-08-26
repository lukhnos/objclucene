//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/PhrasePositions.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneSearchPhrasePositions_INCLUDE_ALL")
#if OrgApacheLuceneSearchPhrasePositions_RESTRICT
#define OrgApacheLuceneSearchPhrasePositions_INCLUDE_ALL 0
#else
#define OrgApacheLuceneSearchPhrasePositions_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneSearchPhrasePositions_RESTRICT

#if !defined (_OrgApacheLuceneSearchPhrasePositions_) && (OrgApacheLuceneSearchPhrasePositions_INCLUDE_ALL || OrgApacheLuceneSearchPhrasePositions_INCLUDE)
#define _OrgApacheLuceneSearchPhrasePositions_

@class IOSObjectArray;
@class OrgApacheLuceneIndexPostingsEnum;

@interface OrgApacheLuceneSearchPhrasePositions : NSObject {
 @public
  jint position_;
  jint count_;
  jint offset_;
  jint ord_;
  OrgApacheLuceneIndexPostingsEnum *postings_;
  OrgApacheLuceneSearchPhrasePositions *next_;
  jint rptGroup_;
  jint rptInd_;
  IOSObjectArray *terms_;
}

#pragma mark Public

- (NSString *)description;

#pragma mark Package-Private

- (instancetype)initWithOrgApacheLuceneIndexPostingsEnum:(OrgApacheLuceneIndexPostingsEnum *)postings
                                                 withInt:(jint)o
                                                 withInt:(jint)ord
                       withOrgApacheLuceneIndexTermArray:(IOSObjectArray *)terms;

- (void)firstPosition;

- (jboolean)nextPosition;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchPhrasePositions)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchPhrasePositions, postings_, OrgApacheLuceneIndexPostingsEnum *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchPhrasePositions, next_, OrgApacheLuceneSearchPhrasePositions *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchPhrasePositions, terms_, IOSObjectArray *)

FOUNDATION_EXPORT void OrgApacheLuceneSearchPhrasePositions_initWithOrgApacheLuceneIndexPostingsEnum_withInt_withInt_withOrgApacheLuceneIndexTermArray_(OrgApacheLuceneSearchPhrasePositions *self, OrgApacheLuceneIndexPostingsEnum *postings, jint o, jint ord, IOSObjectArray *terms);

FOUNDATION_EXPORT OrgApacheLuceneSearchPhrasePositions *new_OrgApacheLuceneSearchPhrasePositions_initWithOrgApacheLuceneIndexPostingsEnum_withInt_withInt_withOrgApacheLuceneIndexTermArray_(OrgApacheLuceneIndexPostingsEnum *postings, jint o, jint ord, IOSObjectArray *terms) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchPhrasePositions)

#endif

#pragma pop_macro("OrgApacheLuceneSearchPhrasePositions_INCLUDE_ALL")
