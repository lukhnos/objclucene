//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./highlighter/src/java/org/apache/lucene/search/highlight/NullFragmenter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchHighlightNullFragmenter")
#ifdef RESTRICT_OrgApacheLuceneSearchHighlightNullFragmenter
#define INCLUDE_ALL_OrgApacheLuceneSearchHighlightNullFragmenter 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchHighlightNullFragmenter 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchHighlightNullFragmenter

#if !defined (OrgApacheLuceneSearchHighlightNullFragmenter_) && (INCLUDE_ALL_OrgApacheLuceneSearchHighlightNullFragmenter || defined(INCLUDE_OrgApacheLuceneSearchHighlightNullFragmenter))
#define OrgApacheLuceneSearchHighlightNullFragmenter_

#define RESTRICT_OrgApacheLuceneSearchHighlightFragmenter 1
#define INCLUDE_OrgApacheLuceneSearchHighlightFragmenter 1
#include "org/apache/lucene/search/highlight/Fragmenter.h"

@class OrgApacheLuceneAnalysisTokenStream;

/*!
 @brief <code>Fragmenter</code> implementation which does not fragment the text.
 This is useful for highlighting the entire content of a document or field.
 */
@interface OrgApacheLuceneSearchHighlightNullFragmenter : NSObject < OrgApacheLuceneSearchHighlightFragmenter >

#pragma mark Public

- (instancetype)init;

- (jboolean)isNewFragment;

- (void)startWithNSString:(NSString *)s
withOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)tokenStream;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchHighlightNullFragmenter)

FOUNDATION_EXPORT void OrgApacheLuceneSearchHighlightNullFragmenter_init(OrgApacheLuceneSearchHighlightNullFragmenter *self);

FOUNDATION_EXPORT OrgApacheLuceneSearchHighlightNullFragmenter *new_OrgApacheLuceneSearchHighlightNullFragmenter_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchHighlightNullFragmenter *create_OrgApacheLuceneSearchHighlightNullFragmenter_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchHighlightNullFragmenter)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchHighlightNullFragmenter")
