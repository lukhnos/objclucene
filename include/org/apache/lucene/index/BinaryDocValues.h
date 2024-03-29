//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/BinaryDocValues.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexBinaryDocValues")
#ifdef RESTRICT_OrgApacheLuceneIndexBinaryDocValues
#define INCLUDE_ALL_OrgApacheLuceneIndexBinaryDocValues 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexBinaryDocValues 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexBinaryDocValues

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneIndexBinaryDocValues_) && (INCLUDE_ALL_OrgApacheLuceneIndexBinaryDocValues || defined(INCLUDE_OrgApacheLuceneIndexBinaryDocValues))
#define OrgApacheLuceneIndexBinaryDocValues_

@class OrgApacheLuceneUtilBytesRef;

/*!
 @brief A per-document byte[]
 */
@interface OrgApacheLuceneIndexBinaryDocValues : NSObject

#pragma mark Public

/*!
 @brief Lookup the value for document.The returned <code>BytesRef</code> may be
  re-used across calls to <code>get(int)</code> so make sure to 
 <code>copy it</code> if you want to keep it
  around.
 */
- (OrgApacheLuceneUtilBytesRef *)getWithInt:(jint)docID;

#pragma mark Protected

/*!
 @brief Sole constructor.
 (For invocation by subclass 
  constructors, typically implicit.)
 */
- (instancetype __nonnull)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexBinaryDocValues)

FOUNDATION_EXPORT void OrgApacheLuceneIndexBinaryDocValues_init(OrgApacheLuceneIndexBinaryDocValues *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexBinaryDocValues)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexBinaryDocValues")
