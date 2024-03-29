//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/util/FilteringTokenFilter.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "org/apache/lucene/analysis/TokenFilter.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/tokenattributes/PositionIncrementAttribute.h"
#include "org/apache/lucene/analysis/util/FilteringTokenFilter.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/analysis/util/FilteringTokenFilter must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneAnalysisUtilFilteringTokenFilter () {
 @public
  id<OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute> posIncrAtt_;
  jint skippedPositions_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisUtilFilteringTokenFilter, posIncrAtt_, id<OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute>)

@implementation OrgApacheLuceneAnalysisUtilFilteringTokenFilter

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)inArg {
  OrgApacheLuceneAnalysisUtilFilteringTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_(self, inArg);
  return self;
}

- (jboolean)accept {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jboolean)incrementToken {
  skippedPositions_ = 0;
  while ([((OrgApacheLuceneAnalysisTokenStream *) nil_chk(input_)) incrementToken]) {
    if ([self accept]) {
      if (skippedPositions_ != 0) {
        [((id<OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute>) nil_chk(posIncrAtt_)) setPositionIncrementWithInt:[posIncrAtt_ getPositionIncrement] + skippedPositions_];
      }
      return true;
    }
    skippedPositions_ += [((id<OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute>) nil_chk(posIncrAtt_)) getPositionIncrement];
  }
  return false;
}

- (void)reset {
  [super reset];
  skippedPositions_ = 0;
}

- (void)end {
  [super end];
  [((id<OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute>) nil_chk(posIncrAtt_)) setPositionIncrementWithInt:[posIncrAtt_ getPositionIncrement] + skippedPositions_];
}

- (void)dealloc {
  RELEASE_(posIncrAtt_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "Z", 0x404, -1, -1, 1, -1, -1, -1 },
    { NULL, "Z", 0x11, -1, -1, 1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneAnalysisTokenStream:);
  methods[1].selector = @selector(accept);
  methods[2].selector = @selector(incrementToken);
  methods[3].selector = @selector(reset);
  methods[4].selector = @selector(end);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "posIncrAtt_", "LOrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "skippedPositions_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneAnalysisTokenStream;", "LJavaIoIOException;" };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisUtilFilteringTokenFilter = { "FilteringTokenFilter", "org.apache.lucene.analysis.util", ptrTable, methods, fields, 7, 0x401, 5, 2, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneAnalysisUtilFilteringTokenFilter;
}

@end

void OrgApacheLuceneAnalysisUtilFilteringTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisUtilFilteringTokenFilter *self, OrgApacheLuceneAnalysisTokenStream *inArg) {
  OrgApacheLuceneAnalysisTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_(self, inArg);
  JreStrongAssign(&self->posIncrAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute_class_()]);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisUtilFilteringTokenFilter)
