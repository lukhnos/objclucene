//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/miscellaneous/SetKeywordMarkerFilter.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/miscellaneous/KeywordMarkerFilter.h"
#include "org/apache/lucene/analysis/miscellaneous/SetKeywordMarkerFilter.h"
#include "org/apache/lucene/analysis/tokenattributes/CharTermAttribute.h"
#include "org/apache/lucene/analysis/util/CharArraySet.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/analysis/miscellaneous/SetKeywordMarkerFilter must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneAnalysisMiscellaneousSetKeywordMarkerFilter () {
 @public
  id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute> termAtt_;
  OrgApacheLuceneAnalysisUtilCharArraySet *keywordSet_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisMiscellaneousSetKeywordMarkerFilter, termAtt_, id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisMiscellaneousSetKeywordMarkerFilter, keywordSet_, OrgApacheLuceneAnalysisUtilCharArraySet *)

@implementation OrgApacheLuceneAnalysisMiscellaneousSetKeywordMarkerFilter

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)inArg
               withOrgApacheLuceneAnalysisUtilCharArraySet:(OrgApacheLuceneAnalysisUtilCharArraySet *)keywordSet {
  OrgApacheLuceneAnalysisMiscellaneousSetKeywordMarkerFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_(self, inArg, keywordSet);
  return self;
}

- (jboolean)isKeyword {
  return [((OrgApacheLuceneAnalysisUtilCharArraySet *) nil_chk(keywordSet_)) containsWithCharArray:[((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) nil_chk(termAtt_)) buffer] withInt:0 withInt:[termAtt_ java_length]];
}

- (void)dealloc {
  RELEASE_(termAtt_);
  RELEASE_(keywordSet_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "Z", 0x4, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneAnalysisTokenStream:withOrgApacheLuceneAnalysisUtilCharArraySet:);
  methods[1].selector = @selector(isKeyword);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "termAtt_", "LOrgApacheLuceneAnalysisTokenattributesCharTermAttribute;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "keywordSet_", "LOrgApacheLuceneAnalysisUtilCharArraySet;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneAnalysisTokenStream;LOrgApacheLuceneAnalysisUtilCharArraySet;" };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisMiscellaneousSetKeywordMarkerFilter = { "SetKeywordMarkerFilter", "org.apache.lucene.analysis.miscellaneous", ptrTable, methods, fields, 7, 0x11, 2, 2, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneAnalysisMiscellaneousSetKeywordMarkerFilter;
}

@end

void OrgApacheLuceneAnalysisMiscellaneousSetKeywordMarkerFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisMiscellaneousSetKeywordMarkerFilter *self, OrgApacheLuceneAnalysisTokenStream *inArg, OrgApacheLuceneAnalysisUtilCharArraySet *keywordSet) {
  OrgApacheLuceneAnalysisMiscellaneousKeywordMarkerFilter_initWithOrgApacheLuceneAnalysisTokenStream_(self, inArg);
  JreStrongAssign(&self->termAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_()]);
  JreStrongAssign(&self->keywordSet_, keywordSet);
}

OrgApacheLuceneAnalysisMiscellaneousSetKeywordMarkerFilter *new_OrgApacheLuceneAnalysisMiscellaneousSetKeywordMarkerFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisTokenStream *inArg, OrgApacheLuceneAnalysisUtilCharArraySet *keywordSet) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisMiscellaneousSetKeywordMarkerFilter, initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_, inArg, keywordSet)
}

OrgApacheLuceneAnalysisMiscellaneousSetKeywordMarkerFilter *create_OrgApacheLuceneAnalysisMiscellaneousSetKeywordMarkerFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisTokenStream *inArg, OrgApacheLuceneAnalysisUtilCharArraySet *keywordSet) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisMiscellaneousSetKeywordMarkerFilter, initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_, inArg, keywordSet)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisMiscellaneousSetKeywordMarkerFilter)
