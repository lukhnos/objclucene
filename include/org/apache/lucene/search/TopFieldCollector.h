//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/TopFieldCollector.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneSearchTopFieldCollector_INCLUDE_ALL")
#if OrgApacheLuceneSearchTopFieldCollector_RESTRICT
#define OrgApacheLuceneSearchTopFieldCollector_INCLUDE_ALL 0
#else
#define OrgApacheLuceneSearchTopFieldCollector_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneSearchTopFieldCollector_RESTRICT

#if !defined (_OrgApacheLuceneSearchTopFieldCollector_) && (OrgApacheLuceneSearchTopFieldCollector_INCLUDE_ALL || OrgApacheLuceneSearchTopFieldCollector_INCLUDE)
#define _OrgApacheLuceneSearchTopFieldCollector_

#define OrgApacheLuceneSearchTopDocsCollector_RESTRICT 1
#define OrgApacheLuceneSearchTopDocsCollector_INCLUDE 1
#include "org/apache/lucene/search/TopDocsCollector.h"

@class IOSObjectArray;
@class OrgApacheLuceneSearchFieldDoc;
@class OrgApacheLuceneSearchFieldValueHitQueue_Entry;
@class OrgApacheLuceneSearchSort;
@class OrgApacheLuceneSearchTopDocs;
@class OrgApacheLuceneSearchTopFieldDocs;

@interface OrgApacheLuceneSearchTopFieldCollector : OrgApacheLuceneSearchTopDocsCollector {
 @public
  jfloat maxScore_;
  jint numHits_;
  OrgApacheLuceneSearchFieldValueHitQueue_Entry *bottom_;
  jboolean queueFull_;
  jint docBase_;
  jboolean needsScores_;
}

#pragma mark Public

+ (OrgApacheLuceneSearchTopFieldCollector *)createWithOrgApacheLuceneSearchSort:(OrgApacheLuceneSearchSort *)sort
                                                                        withInt:(jint)numHits
                                                                    withBoolean:(jboolean)fillFields
                                                                    withBoolean:(jboolean)trackDocScores
                                                                    withBoolean:(jboolean)trackMaxScore;

+ (OrgApacheLuceneSearchTopFieldCollector *)createWithOrgApacheLuceneSearchSort:(OrgApacheLuceneSearchSort *)sort
                                                                        withInt:(jint)numHits
                                              withOrgApacheLuceneSearchFieldDoc:(OrgApacheLuceneSearchFieldDoc *)after
                                                                    withBoolean:(jboolean)fillFields
                                                                    withBoolean:(jboolean)trackDocScores
                                                                    withBoolean:(jboolean)trackMaxScore;

- (jboolean)needsScores;

- (OrgApacheLuceneSearchTopFieldDocs *)topDocs;

#pragma mark Protected

- (OrgApacheLuceneSearchTopDocs *)newTopDocsWithOrgApacheLuceneSearchScoreDocArray:(IOSObjectArray *)results
                                                                           withInt:(jint)start OBJC_METHOD_FAMILY_NONE;

- (void)populateResultsWithOrgApacheLuceneSearchScoreDocArray:(IOSObjectArray *)results
                                                      withInt:(jint)howMany;

#pragma mark Package-Private

- (void)addWithInt:(jint)slot
           withInt:(jint)doc
         withFloat:(jfloat)score;

- (void)updateBottomWithInt:(jint)doc;

- (void)updateBottomWithInt:(jint)doc
                  withFloat:(jfloat)score;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneSearchTopFieldCollector)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchTopFieldCollector, bottom_, OrgApacheLuceneSearchFieldValueHitQueue_Entry *)

FOUNDATION_EXPORT OrgApacheLuceneSearchTopFieldCollector *OrgApacheLuceneSearchTopFieldCollector_createWithOrgApacheLuceneSearchSort_withInt_withBoolean_withBoolean_withBoolean_(OrgApacheLuceneSearchSort *sort, jint numHits, jboolean fillFields, jboolean trackDocScores, jboolean trackMaxScore);

FOUNDATION_EXPORT OrgApacheLuceneSearchTopFieldCollector *OrgApacheLuceneSearchTopFieldCollector_createWithOrgApacheLuceneSearchSort_withInt_withOrgApacheLuceneSearchFieldDoc_withBoolean_withBoolean_withBoolean_(OrgApacheLuceneSearchSort *sort, jint numHits, OrgApacheLuceneSearchFieldDoc *after, jboolean fillFields, jboolean trackDocScores, jboolean trackMaxScore);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchTopFieldCollector)

#endif

#pragma pop_macro("OrgApacheLuceneSearchTopFieldCollector_INCLUDE_ALL")
