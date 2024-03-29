//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/SortedNumericDocValues.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexSortedNumericDocValues")
#ifdef RESTRICT_OrgApacheLuceneIndexSortedNumericDocValues
#define INCLUDE_ALL_OrgApacheLuceneIndexSortedNumericDocValues 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexSortedNumericDocValues 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexSortedNumericDocValues

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneIndexSortedNumericDocValues_) && (INCLUDE_ALL_OrgApacheLuceneIndexSortedNumericDocValues || defined(INCLUDE_OrgApacheLuceneIndexSortedNumericDocValues))
#define OrgApacheLuceneIndexSortedNumericDocValues_

/*!
 @brief A list of per-document numeric values, sorted 
  according to <code>Long.compare(long, long)</code>.
 */
@interface OrgApacheLuceneIndexSortedNumericDocValues : NSObject

#pragma mark Public

/*!
 @brief Retrieves the count of values for the current document.
 This may be zero if a document has no values.
 */
- (jint)count;

/*!
 @brief Positions to the specified document
 */
- (void)setDocumentWithInt:(jint)doc;

/*!
 @brief Retrieve the value for the current document at the specified index.
 An index ranges from <code>0</code> to <code>count()-1</code>.
 */
- (jlong)valueAtWithInt:(jint)index;

#pragma mark Protected

/*!
 @brief Sole constructor.
 (For invocation by subclass 
  constructors, typically implicit.)
 */
- (instancetype __nonnull)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexSortedNumericDocValues)

FOUNDATION_EXPORT void OrgApacheLuceneIndexSortedNumericDocValues_init(OrgApacheLuceneIndexSortedNumericDocValues *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexSortedNumericDocValues)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexSortedNumericDocValues")
