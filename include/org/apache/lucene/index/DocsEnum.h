//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/DocsEnum.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexDocsEnum")
#ifdef RESTRICT_OrgApacheLuceneIndexDocsEnum
#define INCLUDE_ALL_OrgApacheLuceneIndexDocsEnum 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexDocsEnum 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexDocsEnum

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneIndexDocsEnum_) && (INCLUDE_ALL_OrgApacheLuceneIndexDocsEnum || defined(INCLUDE_OrgApacheLuceneIndexDocsEnum))
#define OrgApacheLuceneIndexDocsEnum_

#define RESTRICT_OrgApacheLuceneIndexPostingsEnum 1
#define INCLUDE_OrgApacheLuceneIndexPostingsEnum 1
#include "org/apache/lucene/index/PostingsEnum.h"

@class OrgApacheLuceneUtilBytesRef;

/*!
 @brief Iterates through the documents and term freqs.
 NOTE: you must first call <code>nextDoc</code> before using
  any of the per-doc methods.
 */
@interface OrgApacheLuceneIndexDocsEnum : OrgApacheLuceneIndexPostingsEnum
@property (readonly, class) jint FLAG_NONE NS_SWIFT_NAME(FLAG_NONE);
@property (readonly, class) jint FLAG_FREQS NS_SWIFT_NAME(FLAG_FREQS);

#pragma mark Public

- (jint)endOffset;

- (OrgApacheLuceneUtilBytesRef *)getPayload;

- (jint)nextPosition;

- (jint)startOffset;

#pragma mark Protected

/*!
 @brief Sole constructor.
 (For invocation by subclass 
   constructors, typically implicit.)
 */
- (instancetype __nonnull)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexDocsEnum)

/*!
 @brief Flag to pass to <code>TermsEnum.docs(Bits,DocsEnum,int)</code> if you don't
  require term frequencies in the returned enum.When passed to 
 <code>TermsEnum.docsAndPositions(Bits,DocsAndPositionsEnum,int)</code> means
  that no offsets and payloads will be returned.
 */
inline jint OrgApacheLuceneIndexDocsEnum_get_FLAG_NONE(void);
#define OrgApacheLuceneIndexDocsEnum_FLAG_NONE 0
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneIndexDocsEnum, FLAG_NONE, jint)

/*!
 @brief Flag to pass to <code>TermsEnum.docs(Bits,DocsEnum,int)</code>
   if you require term frequencies in the returned enum.
 */
inline jint OrgApacheLuceneIndexDocsEnum_get_FLAG_FREQS(void);
#define OrgApacheLuceneIndexDocsEnum_FLAG_FREQS 1
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneIndexDocsEnum, FLAG_FREQS, jint)

FOUNDATION_EXPORT void OrgApacheLuceneIndexDocsEnum_init(OrgApacheLuceneIndexDocsEnum *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexDocsEnum)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexDocsEnum")
