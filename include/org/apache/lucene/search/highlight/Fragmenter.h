//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./highlighter/src/java/org/apache/lucene/search/highlight/Fragmenter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneSearchHighlightFragmenter_INCLUDE_ALL")
#if OrgApacheLuceneSearchHighlightFragmenter_RESTRICT
#define OrgApacheLuceneSearchHighlightFragmenter_INCLUDE_ALL 0
#else
#define OrgApacheLuceneSearchHighlightFragmenter_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneSearchHighlightFragmenter_RESTRICT

#if !defined (_OrgApacheLuceneSearchHighlightFragmenter_) && (OrgApacheLuceneSearchHighlightFragmenter_INCLUDE_ALL || OrgApacheLuceneSearchHighlightFragmenter_INCLUDE)
#define _OrgApacheLuceneSearchHighlightFragmenter_

@class OrgApacheLuceneAnalysisTokenStream;

@protocol OrgApacheLuceneSearchHighlightFragmenter < NSObject, JavaObject >

- (void)startWithNSString:(NSString *)originalText
withOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)tokenStream;

- (jboolean)isNewFragment;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchHighlightFragmenter)

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchHighlightFragmenter)

#endif

#pragma pop_macro("OrgApacheLuceneSearchHighlightFragmenter_INCLUDE_ALL")
