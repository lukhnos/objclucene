//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./misc/src/java/org/apache/lucene/uninverting/DocTermOrds.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneUninvertingDocTermOrds_INCLUDE_ALL")
#if OrgApacheLuceneUninvertingDocTermOrds_RESTRICT
#define OrgApacheLuceneUninvertingDocTermOrds_INCLUDE_ALL 0
#else
#define OrgApacheLuceneUninvertingDocTermOrds_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneUninvertingDocTermOrds_RESTRICT

#if !defined (_OrgApacheLuceneUninvertingDocTermOrds_) && (OrgApacheLuceneUninvertingDocTermOrds_INCLUDE_ALL || OrgApacheLuceneUninvertingDocTermOrds_INCLUDE)
#define _OrgApacheLuceneUninvertingDocTermOrds_

#define OrgApacheLuceneUtilAccountable_RESTRICT 1
#define OrgApacheLuceneUtilAccountable_INCLUDE 1
#include "org/apache/lucene/util/Accountable.h"

@class IOSIntArray;
@class IOSObjectArray;
@class OrgApacheLuceneIndexLeafReader;
@class OrgApacheLuceneIndexPostingsEnum;
@class OrgApacheLuceneIndexSortedSetDocValues;
@class OrgApacheLuceneIndexTermsEnum;
@class OrgApacheLuceneUtilBytesRef;
@protocol JavaUtilCollection;
@protocol OrgApacheLuceneUtilBits;

#define OrgApacheLuceneUninvertingDocTermOrds_DEFAULT_INDEX_INTERVAL_BITS 7

@interface OrgApacheLuceneUninvertingDocTermOrds : NSObject < OrgApacheLuceneUtilAccountable > {
 @public
  jint maxTermDocFreq_;
  NSString *field_;
  jint numTermsInField_;
  jlong termInstances_;
  jint total_time_;
  jint phase1_time_;
  IOSIntArray *index_;
  IOSObjectArray *tnums_;
  jlong sizeOfIndexedStrings_;
  IOSObjectArray *indexedTermsArray_;
  OrgApacheLuceneUtilBytesRef *prefix_;
  jint ordBase_;
  OrgApacheLuceneIndexPostingsEnum *postingsEnum_;
}

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneIndexLeafReader:(OrgApacheLuceneIndexLeafReader *)reader
                           withOrgApacheLuceneUtilBits:(id<OrgApacheLuceneUtilBits>)liveDocs
                                          withNSString:(NSString *)field;

- (instancetype)initWithOrgApacheLuceneIndexLeafReader:(OrgApacheLuceneIndexLeafReader *)reader
                           withOrgApacheLuceneUtilBits:(id<OrgApacheLuceneUtilBits>)liveDocs
                                          withNSString:(NSString *)field
                       withOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)termPrefix;

- (instancetype)initWithOrgApacheLuceneIndexLeafReader:(OrgApacheLuceneIndexLeafReader *)reader
                           withOrgApacheLuceneUtilBits:(id<OrgApacheLuceneUtilBits>)liveDocs
                                          withNSString:(NSString *)field
                       withOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)termPrefix
                                               withInt:(jint)maxTermDocFreq;

- (instancetype)initWithOrgApacheLuceneIndexLeafReader:(OrgApacheLuceneIndexLeafReader *)reader
                           withOrgApacheLuceneUtilBits:(id<OrgApacheLuceneUtilBits>)liveDocs
                                          withNSString:(NSString *)field
                       withOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)termPrefix
                                               withInt:(jint)maxTermDocFreq
                                               withInt:(jint)indexIntervalBits;

- (id<JavaUtilCollection>)getChildResources;

- (OrgApacheLuceneIndexTermsEnum *)getOrdTermsEnumWithOrgApacheLuceneIndexLeafReader:(OrgApacheLuceneIndexLeafReader *)reader;

- (jboolean)isEmpty;

- (OrgApacheLuceneIndexSortedSetDocValues *)iteratorWithOrgApacheLuceneIndexLeafReader:(OrgApacheLuceneIndexLeafReader *)reader;

- (OrgApacheLuceneUtilBytesRef *)lookupTermWithOrgApacheLuceneIndexTermsEnum:(OrgApacheLuceneIndexTermsEnum *)termsEnum
                                                                     withInt:(jint)ord;

- (jint)numTerms;

- (jlong)ramBytesUsed;

#pragma mark Protected

- (instancetype)initWithNSString:(NSString *)field
                         withInt:(jint)maxTermDocFreq
                         withInt:(jint)indexIntervalBits;

- (void)setActualDocFreqWithInt:(jint)termNum
                        withInt:(jint)df;

- (void)uninvertWithOrgApacheLuceneIndexLeafReader:(OrgApacheLuceneIndexLeafReader *)reader
                       withOrgApacheLuceneUtilBits:(id<OrgApacheLuceneUtilBits>)liveDocs
                   withOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)termPrefix;

- (void)visitTermWithOrgApacheLuceneIndexTermsEnum:(OrgApacheLuceneIndexTermsEnum *)te
                                           withInt:(jint)termNum;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUninvertingDocTermOrds)

J2OBJC_FIELD_SETTER(OrgApacheLuceneUninvertingDocTermOrds, field_, NSString *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUninvertingDocTermOrds, index_, IOSIntArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUninvertingDocTermOrds, tnums_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUninvertingDocTermOrds, indexedTermsArray_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUninvertingDocTermOrds, prefix_, OrgApacheLuceneUtilBytesRef *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUninvertingDocTermOrds, postingsEnum_, OrgApacheLuceneIndexPostingsEnum *)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneUninvertingDocTermOrds, DEFAULT_INDEX_INTERVAL_BITS, jint)

FOUNDATION_EXPORT void OrgApacheLuceneUninvertingDocTermOrds_initWithOrgApacheLuceneIndexLeafReader_withOrgApacheLuceneUtilBits_withNSString_(OrgApacheLuceneUninvertingDocTermOrds *self, OrgApacheLuceneIndexLeafReader *reader, id<OrgApacheLuceneUtilBits> liveDocs, NSString *field);

FOUNDATION_EXPORT OrgApacheLuceneUninvertingDocTermOrds *new_OrgApacheLuceneUninvertingDocTermOrds_initWithOrgApacheLuceneIndexLeafReader_withOrgApacheLuceneUtilBits_withNSString_(OrgApacheLuceneIndexLeafReader *reader, id<OrgApacheLuceneUtilBits> liveDocs, NSString *field) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneUninvertingDocTermOrds_initWithOrgApacheLuceneIndexLeafReader_withOrgApacheLuceneUtilBits_withNSString_withOrgApacheLuceneUtilBytesRef_(OrgApacheLuceneUninvertingDocTermOrds *self, OrgApacheLuceneIndexLeafReader *reader, id<OrgApacheLuceneUtilBits> liveDocs, NSString *field, OrgApacheLuceneUtilBytesRef *termPrefix);

FOUNDATION_EXPORT OrgApacheLuceneUninvertingDocTermOrds *new_OrgApacheLuceneUninvertingDocTermOrds_initWithOrgApacheLuceneIndexLeafReader_withOrgApacheLuceneUtilBits_withNSString_withOrgApacheLuceneUtilBytesRef_(OrgApacheLuceneIndexLeafReader *reader, id<OrgApacheLuceneUtilBits> liveDocs, NSString *field, OrgApacheLuceneUtilBytesRef *termPrefix) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneUninvertingDocTermOrds_initWithOrgApacheLuceneIndexLeafReader_withOrgApacheLuceneUtilBits_withNSString_withOrgApacheLuceneUtilBytesRef_withInt_(OrgApacheLuceneUninvertingDocTermOrds *self, OrgApacheLuceneIndexLeafReader *reader, id<OrgApacheLuceneUtilBits> liveDocs, NSString *field, OrgApacheLuceneUtilBytesRef *termPrefix, jint maxTermDocFreq);

FOUNDATION_EXPORT OrgApacheLuceneUninvertingDocTermOrds *new_OrgApacheLuceneUninvertingDocTermOrds_initWithOrgApacheLuceneIndexLeafReader_withOrgApacheLuceneUtilBits_withNSString_withOrgApacheLuceneUtilBytesRef_withInt_(OrgApacheLuceneIndexLeafReader *reader, id<OrgApacheLuceneUtilBits> liveDocs, NSString *field, OrgApacheLuceneUtilBytesRef *termPrefix, jint maxTermDocFreq) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneUninvertingDocTermOrds_initWithOrgApacheLuceneIndexLeafReader_withOrgApacheLuceneUtilBits_withNSString_withOrgApacheLuceneUtilBytesRef_withInt_withInt_(OrgApacheLuceneUninvertingDocTermOrds *self, OrgApacheLuceneIndexLeafReader *reader, id<OrgApacheLuceneUtilBits> liveDocs, NSString *field, OrgApacheLuceneUtilBytesRef *termPrefix, jint maxTermDocFreq, jint indexIntervalBits);

FOUNDATION_EXPORT OrgApacheLuceneUninvertingDocTermOrds *new_OrgApacheLuceneUninvertingDocTermOrds_initWithOrgApacheLuceneIndexLeafReader_withOrgApacheLuceneUtilBits_withNSString_withOrgApacheLuceneUtilBytesRef_withInt_withInt_(OrgApacheLuceneIndexLeafReader *reader, id<OrgApacheLuceneUtilBits> liveDocs, NSString *field, OrgApacheLuceneUtilBytesRef *termPrefix, jint maxTermDocFreq, jint indexIntervalBits) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneUninvertingDocTermOrds_initWithNSString_withInt_withInt_(OrgApacheLuceneUninvertingDocTermOrds *self, NSString *field, jint maxTermDocFreq, jint indexIntervalBits);

FOUNDATION_EXPORT OrgApacheLuceneUninvertingDocTermOrds *new_OrgApacheLuceneUninvertingDocTermOrds_initWithNSString_withInt_withInt_(NSString *field, jint maxTermDocFreq, jint indexIntervalBits) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUninvertingDocTermOrds)

#endif

#pragma pop_macro("OrgApacheLuceneUninvertingDocTermOrds_INCLUDE_ALL")
