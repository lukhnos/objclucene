//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/RandomAccessOrds.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexRandomAccessOrds")
#ifdef RESTRICT_OrgApacheLuceneIndexRandomAccessOrds
#define INCLUDE_ALL_OrgApacheLuceneIndexRandomAccessOrds 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexRandomAccessOrds 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexRandomAccessOrds

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneIndexRandomAccessOrds_) && (INCLUDE_ALL_OrgApacheLuceneIndexRandomAccessOrds || defined(INCLUDE_OrgApacheLuceneIndexRandomAccessOrds))
#define OrgApacheLuceneIndexRandomAccessOrds_

#define RESTRICT_OrgApacheLuceneIndexSortedSetDocValues 1
#define INCLUDE_OrgApacheLuceneIndexSortedSetDocValues 1
#include "org/apache/lucene/index/SortedSetDocValues.h"

/*!
 @brief Extension of <code>SortedSetDocValues</code> that supports random access
  to the ordinals of a document.
 <p>
  Operations via this API are independent of the iterator api (<code>nextOrd()</code>)
  and do not impact its state. 
 <p>
  Codecs can optionally extend this API if they support constant-time access
  to ordinals for the document.
 */
@interface OrgApacheLuceneIndexRandomAccessOrds : OrgApacheLuceneIndexSortedSetDocValues

#pragma mark Public

/*!
 @brief Returns the cardinality for the current document (previously
  set by <code>setDocument(int)</code>.
 */
- (jint)cardinality;

/*!
 @brief Retrieve the ordinal for the current document (previously
  set by <code>setDocument(int)</code> at the specified index.
 <p>
  An index ranges from <code>0</code> to <code>cardinality()-1</code>.
  The first ordinal value is at index <code>0</code>, the next at index <code>1</code>,
  and so on, as for array indexing.
 @param index index of the ordinal for the document.
 @return ordinal for the document at the specified index.
 */
- (jlong)ordAtWithInt:(jint)index;

#pragma mark Protected

/*!
 @brief Sole constructor.
 (For invocation by subclass 
  constructors, typically implicit.)
 */
- (instancetype __nonnull)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexRandomAccessOrds)

FOUNDATION_EXPORT void OrgApacheLuceneIndexRandomAccessOrds_init(OrgApacheLuceneIndexRandomAccessOrds *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexRandomAccessOrds)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexRandomAccessOrds")
