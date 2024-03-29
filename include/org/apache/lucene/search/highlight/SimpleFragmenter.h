//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./highlighter/src/java/org/apache/lucene/search/highlight/SimpleFragmenter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchHighlightSimpleFragmenter")
#ifdef RESTRICT_OrgApacheLuceneSearchHighlightSimpleFragmenter
#define INCLUDE_ALL_OrgApacheLuceneSearchHighlightSimpleFragmenter 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchHighlightSimpleFragmenter 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchHighlightSimpleFragmenter

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneSearchHighlightSimpleFragmenter_) && (INCLUDE_ALL_OrgApacheLuceneSearchHighlightSimpleFragmenter || defined(INCLUDE_OrgApacheLuceneSearchHighlightSimpleFragmenter))
#define OrgApacheLuceneSearchHighlightSimpleFragmenter_

#define RESTRICT_OrgApacheLuceneSearchHighlightFragmenter 1
#define INCLUDE_OrgApacheLuceneSearchHighlightFragmenter 1
#include "org/apache/lucene/search/highlight/Fragmenter.h"

@class OrgApacheLuceneAnalysisTokenStream;

/*!
 @brief <code>Fragmenter</code> implementation which breaks text up into same-size
  fragments with no concerns over spotting sentence boundaries.
 */
@interface OrgApacheLuceneSearchHighlightSimpleFragmenter : NSObject < OrgApacheLuceneSearchHighlightFragmenter >

#pragma mark Public

- (instancetype __nonnull)init;

/*!
 @param fragmentSize size in number of characters of each fragment
 */
- (instancetype __nonnull)initWithInt:(jint)fragmentSize;

/*!
 @return size in number of characters of each fragment
 */
- (jint)getFragmentSize;

- (jboolean)isNewFragment;

/*!
 @param size size in characters of each fragment
 */
- (void)setFragmentSizeWithInt:(jint)size;

- (void)startWithNSString:(NSString *)originalText
withOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)stream;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchHighlightSimpleFragmenter)

FOUNDATION_EXPORT void OrgApacheLuceneSearchHighlightSimpleFragmenter_init(OrgApacheLuceneSearchHighlightSimpleFragmenter *self);

FOUNDATION_EXPORT OrgApacheLuceneSearchHighlightSimpleFragmenter *new_OrgApacheLuceneSearchHighlightSimpleFragmenter_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchHighlightSimpleFragmenter *create_OrgApacheLuceneSearchHighlightSimpleFragmenter_init(void);

FOUNDATION_EXPORT void OrgApacheLuceneSearchHighlightSimpleFragmenter_initWithInt_(OrgApacheLuceneSearchHighlightSimpleFragmenter *self, jint fragmentSize);

FOUNDATION_EXPORT OrgApacheLuceneSearchHighlightSimpleFragmenter *new_OrgApacheLuceneSearchHighlightSimpleFragmenter_initWithInt_(jint fragmentSize) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchHighlightSimpleFragmenter *create_OrgApacheLuceneSearchHighlightSimpleFragmenter_initWithInt_(jint fragmentSize);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchHighlightSimpleFragmenter)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchHighlightSimpleFragmenter")
