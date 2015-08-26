//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./highlighter/src/java/org/apache/lucene/search/highlight/Scorer.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/search/highlight/Scorer.h"
#include "org/apache/lucene/search/highlight/TextFragment.h"

@interface OrgApacheLuceneSearchHighlightScorer : NSObject

@end

@implementation OrgApacheLuceneSearchHighlightScorer

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init__WithOrgApacheLuceneAnalysisTokenStream:", "init", "Lorg.apache.lucene.analysis.TokenStream;", 0x401, "Ljava.io.IOException;", NULL },
    { "startFragmentWithOrgApacheLuceneSearchHighlightTextFragment:", "startFragment", "V", 0x401, NULL, NULL },
    { "getTokenScore", NULL, "F", 0x401, NULL, NULL },
    { "getFragmentScore", NULL, "F", 0x401, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchHighlightScorer = { 2, "Scorer", "org.apache.lucene.search.highlight", NULL, 0x609, 4, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchHighlightScorer;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchHighlightScorer)
