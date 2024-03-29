//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/Sort.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchSort")
#ifdef RESTRICT_OrgApacheLuceneSearchSort
#define INCLUDE_ALL_OrgApacheLuceneSearchSort 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchSort 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchSort

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneSearchSort_) && (INCLUDE_ALL_OrgApacheLuceneSearchSort || defined(INCLUDE_OrgApacheLuceneSearchSort))
#define OrgApacheLuceneSearchSort_

@class IOSObjectArray;
@class OrgApacheLuceneSearchIndexSearcher;
@class OrgApacheLuceneSearchSortField;

/*!
 @brief Encapsulates sort criteria for returned hits.
 <p>The fields used to determine sort order must be carefully chosen.
  Documents must contain a single term in such a field,
  and the value of the term should indicate the document's relative position in
  a given sort order.  The field must be indexed, but should not be tokenized,
  and does not need to be stored (unless you happen to want it back with the
  rest of your document data).  In other words: 
 <p><code>document.add (new Field ("byNumber", Integer.toString(x), Field.Store.NO, Field.Index.NOT_ANALYZED));</code></p>
   
 <h3>Valid Types of Values</h3>
  
 <p>There are four possible kinds of term values which may be put into
  sorting fields: Integers, Longs, Floats, or Strings.  Unless 
 <code>SortField</code> objects are specified, the type of value
  in the field is determined by parsing the first term in the field. 
 <p>Integer term values should contain only digits and an optional
  preceding negative sign.  Values must be base 10 and in the range 
 <code>Integer.MIN_VALUE</code> and <code>Integer.MAX_VALUE</code> inclusive.
  Documents which should appear first in the sort
  should have low value integers, later documents high values
  (i.e. the documents should be numbered <code>1..n</code> where 
 <code>1</code> is the first and <code>n</code> the last). 
 <p>Long term values should contain only digits and an optional
  preceding negative sign.  Values must be base 10 and in the range 
 <code>Long.MIN_VALUE</code> and <code>Long.MAX_VALUE</code> inclusive.
  Documents which should appear first in the sort
  should have low value integers, later documents high values.  
 <p>Float term values should conform to values accepted by 
 <code>Float.valueOf(String)</code> (except that <code>NaN</code>
  and <code>Infinity</code> are not supported).
  Documents which should appear first in the sort
  should have low values, later documents high values. 
 <p>String term values can contain any valid String, but should
  not be tokenized.  The values are sorted according to their 
 <code>natural order</code>.  Note that using this type
  of term value has higher memory requirements than the other
  two types. 
 <h3>Object Reuse</h3>
  
 <p>One of these objects can be
  used multiple times and the sort order changed between usages. 
 <p>This class is thread safe. 
 <h3>Memory Usage</h3>
  
 <p>Sorting uses of caches of term values maintained by the
  internal HitQueue(s).  The cache is static and contains an integer
  or float array of length <code>IndexReader.maxDoc()</code> for each field
  name for which a sort is performed.  In other words, the size of the
  cache in bytes is: 
 <p><code>4 * IndexReader.maxDoc() * (# of different fields actually used to sort)</code>
  
 <p>For String fields, the cache is larger: in addition to the
  above array, the value of every term in the field is kept in memory.
  If there are many unique terms in the field, this could
  be quite large. 
 <p>Note that the size of the cache is not affected by how many
  fields are in the index and <i>might</i> be used to sort - only by
  the ones actually used to sort a result set. 
 <p>Created: Feb 12, 2004 10:53:57 AM
 @since lucene 1.4
 */
@interface OrgApacheLuceneSearchSort : NSObject {
 @public
  IOSObjectArray *fields_;
}
@property (readonly, class, strong) OrgApacheLuceneSearchSort *RELEVANCE NS_SWIFT_NAME(RELEVANCE);
@property (readonly, class, strong) OrgApacheLuceneSearchSort *INDEXORDER NS_SWIFT_NAME(INDEXORDER);

#pragma mark Public

/*!
 @brief Sorts by computed relevance.This is the same sort criteria as calling 
 <code>IndexSearcher.search()</code>without a sort criteria,
  only with slightly more overhead.
 */
- (instancetype __nonnull)init;

/*!
 @brief Sorts by the criteria in the given SortField.
 */
- (instancetype __nonnull)initWithOrgApacheLuceneSearchSortField:(OrgApacheLuceneSearchSortField *)field;

/*!
 @brief Sets the sort to the given criteria in succession: the
   first SortField is checked first, but if it produces a
   tie, then the second SortField is used to break the tie,
   etc.Finally, if there is still a tie after all SortFields
   are checked, the internal Lucene docid is used to break it.
 */
- (instancetype __nonnull)initWithOrgApacheLuceneSearchSortFieldArray:(IOSObjectArray *)fields;

/*!
 @brief Returns true if <code>o</code> is equal to this.
 */
- (jboolean)isEqual:(id)o;

/*!
 @brief Representation of the sort criteria.
 @return Array of SortField objects used in this sort criteria
 */
- (IOSObjectArray *)getSort;

/*!
 @brief Returns a hash code value for this object.
 */
- (NSUInteger)hash;

/*!
 @brief Returns true if the relevance score is needed to sort documents.
 */
- (jboolean)needsScores;

/*!
 @brief Rewrites the SortFields in this Sort, returning a new Sort if any of the fields
  changes during their rewriting.
 @param searcher IndexSearcher to use in the rewriting
 @return <code>this</code> if the Sort/Fields have not changed, or a new Sort if there
         is a change
 @throw IOExceptionCan be thrown by the rewriting
 */
- (OrgApacheLuceneSearchSort *)rewriteWithOrgApacheLuceneSearchIndexSearcher:(OrgApacheLuceneSearchIndexSearcher *)searcher;

/*!
 @brief Sets the sort to the given criteria.
 */
- (void)setSortWithOrgApacheLuceneSearchSortField:(OrgApacheLuceneSearchSortField *)field;

/*!
 @brief Sets the sort to the given criteria in succession: the
   first SortField is checked first, but if it produces a
   tie, then the second SortField is used to break the tie,
   etc.Finally, if there is still a tie after all SortFields
   are checked, the internal Lucene docid is used to break it.
 */
- (void)setSortWithOrgApacheLuceneSearchSortFieldArray:(IOSObjectArray *)fields;

- (NSString *)description;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneSearchSort)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSort, fields_, IOSObjectArray *)

/*!
 @brief Represents sorting by computed relevance.Using this sort criteria returns
  the same results as calling 
 <code>IndexSearcher.search()</code>without a sort criteria,
  only with slightly more overhead.
 */
inline OrgApacheLuceneSearchSort *OrgApacheLuceneSearchSort_get_RELEVANCE(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgApacheLuceneSearchSort *OrgApacheLuceneSearchSort_RELEVANCE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneSearchSort, RELEVANCE, OrgApacheLuceneSearchSort *)

/*!
 @brief Represents sorting by index order.
 */
inline OrgApacheLuceneSearchSort *OrgApacheLuceneSearchSort_get_INDEXORDER(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgApacheLuceneSearchSort *OrgApacheLuceneSearchSort_INDEXORDER;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgApacheLuceneSearchSort, INDEXORDER, OrgApacheLuceneSearchSort *)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSort_init(OrgApacheLuceneSearchSort *self);

FOUNDATION_EXPORT OrgApacheLuceneSearchSort *new_OrgApacheLuceneSearchSort_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSort *create_OrgApacheLuceneSearchSort_init(void);

FOUNDATION_EXPORT void OrgApacheLuceneSearchSort_initWithOrgApacheLuceneSearchSortField_(OrgApacheLuceneSearchSort *self, OrgApacheLuceneSearchSortField *field);

FOUNDATION_EXPORT OrgApacheLuceneSearchSort *new_OrgApacheLuceneSearchSort_initWithOrgApacheLuceneSearchSortField_(OrgApacheLuceneSearchSortField *field) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSort *create_OrgApacheLuceneSearchSort_initWithOrgApacheLuceneSearchSortField_(OrgApacheLuceneSearchSortField *field);

FOUNDATION_EXPORT void OrgApacheLuceneSearchSort_initWithOrgApacheLuceneSearchSortFieldArray_(OrgApacheLuceneSearchSort *self, IOSObjectArray *fields);

FOUNDATION_EXPORT OrgApacheLuceneSearchSort *new_OrgApacheLuceneSearchSort_initWithOrgApacheLuceneSearchSortFieldArray_(IOSObjectArray *fields) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSort *create_OrgApacheLuceneSearchSort_initWithOrgApacheLuceneSearchSortFieldArray_(IOSObjectArray *fields);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSort)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchSort")
