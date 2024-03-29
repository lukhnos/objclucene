//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/TopFieldDocs.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchTopFieldDocs")
#ifdef RESTRICT_OrgApacheLuceneSearchTopFieldDocs
#define INCLUDE_ALL_OrgApacheLuceneSearchTopFieldDocs 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchTopFieldDocs 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchTopFieldDocs

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneSearchTopFieldDocs_) && (INCLUDE_ALL_OrgApacheLuceneSearchTopFieldDocs || defined(INCLUDE_OrgApacheLuceneSearchTopFieldDocs))
#define OrgApacheLuceneSearchTopFieldDocs_

#define RESTRICT_OrgApacheLuceneSearchTopDocs 1
#define INCLUDE_OrgApacheLuceneSearchTopDocs 1
#include "org/apache/lucene/search/TopDocs.h"

@class IOSObjectArray;

/*!
 @brief Represents hits returned by <code>IndexSearcher.search(Query,int,Sort)</code>
 .
 */
@interface OrgApacheLuceneSearchTopFieldDocs : OrgApacheLuceneSearchTopDocs {
 @public
  /*!
   @brief The fields which were used to sort results by.
   */
  IOSObjectArray *fields_;
}

#pragma mark Public

/*!
 @brief Creates one of these objects.
 @param totalHits Total number of hits for the query.
 @param scoreDocs The top hits for the query.
 @param fields The sort criteria used to find the top hits.
 @param maxScore The maximum score encountered.
 */
- (instancetype __nonnull)initWithInt:(jint)totalHits
withOrgApacheLuceneSearchScoreDocArray:(IOSObjectArray *)scoreDocs
withOrgApacheLuceneSearchSortFieldArray:(IOSObjectArray *)fields
                            withFloat:(jfloat)maxScore;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initWithInt:(jint)arg0
withOrgApacheLuceneSearchScoreDocArray:(IOSObjectArray *)arg1 NS_UNAVAILABLE;

- (instancetype __nonnull)initWithInt:(jint)arg0
withOrgApacheLuceneSearchScoreDocArray:(IOSObjectArray *)arg1
                            withFloat:(jfloat)arg2 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchTopFieldDocs)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchTopFieldDocs, fields_, IOSObjectArray *)

FOUNDATION_EXPORT void OrgApacheLuceneSearchTopFieldDocs_initWithInt_withOrgApacheLuceneSearchScoreDocArray_withOrgApacheLuceneSearchSortFieldArray_withFloat_(OrgApacheLuceneSearchTopFieldDocs *self, jint totalHits, IOSObjectArray *scoreDocs, IOSObjectArray *fields, jfloat maxScore);

FOUNDATION_EXPORT OrgApacheLuceneSearchTopFieldDocs *new_OrgApacheLuceneSearchTopFieldDocs_initWithInt_withOrgApacheLuceneSearchScoreDocArray_withOrgApacheLuceneSearchSortFieldArray_withFloat_(jint totalHits, IOSObjectArray *scoreDocs, IOSObjectArray *fields, jfloat maxScore) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchTopFieldDocs *create_OrgApacheLuceneSearchTopFieldDocs_initWithInt_withOrgApacheLuceneSearchScoreDocArray_withOrgApacheLuceneSearchSortFieldArray_withFloat_(jint totalHits, IOSObjectArray *scoreDocs, IOSObjectArray *fields, jfloat maxScore);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchTopFieldDocs)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchTopFieldDocs")
