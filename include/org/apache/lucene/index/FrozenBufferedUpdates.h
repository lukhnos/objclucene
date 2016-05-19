//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/FrozenBufferedUpdates.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexFrozenBufferedUpdates")
#ifdef RESTRICT_OrgApacheLuceneIndexFrozenBufferedUpdates
#define INCLUDE_ALL_OrgApacheLuceneIndexFrozenBufferedUpdates 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexFrozenBufferedUpdates 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexFrozenBufferedUpdates

#if !defined (OrgApacheLuceneIndexFrozenBufferedUpdates_) && (INCLUDE_ALL_OrgApacheLuceneIndexFrozenBufferedUpdates || defined(INCLUDE_OrgApacheLuceneIndexFrozenBufferedUpdates))
#define OrgApacheLuceneIndexFrozenBufferedUpdates_

@class IOSIntArray;
@class IOSObjectArray;
@class OrgApacheLuceneIndexBufferedUpdates;
@class OrgApacheLuceneIndexPrefixCodedTerms;
@class OrgApacheLuceneIndexPrefixCodedTerms_TermIterator;
@protocol JavaLangIterable;

/*!
 @brief Holds buffered deletes and updates by term or query, once pushed.
 Pushed
 deletes/updates are write-once, so we shift to more memory efficient data
 structure to hold them. We don't hold docIDs because these are applied on
 flush.
 */
@interface OrgApacheLuceneIndexFrozenBufferedUpdates : NSObject {
 @public
  OrgApacheLuceneIndexPrefixCodedTerms *terms_;
  IOSObjectArray *queries_;
  IOSIntArray *queryLimits_;
  IOSObjectArray *numericDVUpdates_;
  IOSObjectArray *binaryDVUpdates_;
  jint bytesUsed_;
  jint numTermDeletes_;
  jboolean isSegmentPrivate_;
}

+ (jint)BYTES_PER_DEL_QUERY;

#pragma mark Public

- (instancetype)initWithOrgApacheLuceneIndexBufferedUpdates:(OrgApacheLuceneIndexBufferedUpdates *)deletes
                                                withBoolean:(jboolean)isSegmentPrivate;

- (jlong)delGen;

- (id<JavaLangIterable>)queriesIterable;

- (void)setDelGenWithLong:(jlong)gen;

- (OrgApacheLuceneIndexPrefixCodedTerms_TermIterator *)termIterator;

- (NSString *)description;

#pragma mark Package-Private

- (jboolean)any;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneIndexFrozenBufferedUpdates)

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexFrozenBufferedUpdates, terms_, OrgApacheLuceneIndexPrefixCodedTerms *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexFrozenBufferedUpdates, queries_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexFrozenBufferedUpdates, queryLimits_, IOSIntArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexFrozenBufferedUpdates, numericDVUpdates_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexFrozenBufferedUpdates, binaryDVUpdates_, IOSObjectArray *)

inline jint OrgApacheLuceneIndexFrozenBufferedUpdates_get_BYTES_PER_DEL_QUERY();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT jint OrgApacheLuceneIndexFrozenBufferedUpdates_BYTES_PER_DEL_QUERY;
J2OBJC_STATIC_FIELD_PRIMITIVE_FINAL(OrgApacheLuceneIndexFrozenBufferedUpdates, BYTES_PER_DEL_QUERY, jint)

FOUNDATION_EXPORT void OrgApacheLuceneIndexFrozenBufferedUpdates_initWithOrgApacheLuceneIndexBufferedUpdates_withBoolean_(OrgApacheLuceneIndexFrozenBufferedUpdates *self, OrgApacheLuceneIndexBufferedUpdates *deletes, jboolean isSegmentPrivate);

FOUNDATION_EXPORT OrgApacheLuceneIndexFrozenBufferedUpdates *new_OrgApacheLuceneIndexFrozenBufferedUpdates_initWithOrgApacheLuceneIndexBufferedUpdates_withBoolean_(OrgApacheLuceneIndexBufferedUpdates *deletes, jboolean isSegmentPrivate) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexFrozenBufferedUpdates *create_OrgApacheLuceneIndexFrozenBufferedUpdates_initWithOrgApacheLuceneIndexBufferedUpdates_withBoolean_(OrgApacheLuceneIndexBufferedUpdates *deletes, jboolean isSegmentPrivate);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexFrozenBufferedUpdates)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexFrozenBufferedUpdates")
