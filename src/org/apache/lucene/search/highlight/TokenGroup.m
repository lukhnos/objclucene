//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./highlighter/src/java/org/apache/lucene/search/highlight/TokenGroup.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Math.h"
#include "org/apache/lucene/analysis/Token.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/tokenattributes/CharTermAttribute.h"
#include "org/apache/lucene/analysis/tokenattributes/OffsetAttribute.h"
#include "org/apache/lucene/search/highlight/TokenGroup.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/search/highlight/TokenGroup must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneSearchHighlightTokenGroup () {
 @public
  IOSObjectArray *tokens_;
  IOSFloatArray *scores_;
  jint numTokens_;
  jint startOffset_;
  jint endOffset_;
  jfloat tot_;
  jint matchStartOffset_;
  jint matchEndOffset_;
  id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute> offsetAtt_;
  id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute> termAtt_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchHighlightTokenGroup, tokens_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchHighlightTokenGroup, scores_, IOSFloatArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchHighlightTokenGroup, offsetAtt_, id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchHighlightTokenGroup, termAtt_, id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>)

inline jint OrgApacheLuceneSearchHighlightTokenGroup_get_MAX_NUM_TOKENS_PER_GROUP(void);
#define OrgApacheLuceneSearchHighlightTokenGroup_MAX_NUM_TOKENS_PER_GROUP 50
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneSearchHighlightTokenGroup, MAX_NUM_TOKENS_PER_GROUP, jint)

@implementation OrgApacheLuceneSearchHighlightTokenGroup

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)tokenStream {
  OrgApacheLuceneSearchHighlightTokenGroup_initWithOrgApacheLuceneAnalysisTokenStream_(self, tokenStream);
  return self;
}

- (void)addTokenWithFloat:(jfloat)score {
  if (numTokens_ < OrgApacheLuceneSearchHighlightTokenGroup_MAX_NUM_TOKENS_PER_GROUP) {
    jint termStartOffset = [((id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute>) nil_chk(offsetAtt_)) startOffset];
    jint termEndOffset = [((id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute>) nil_chk(offsetAtt_)) endOffset];
    if (numTokens_ == 0) {
      startOffset_ = matchStartOffset_ = termStartOffset;
      endOffset_ = matchEndOffset_ = termEndOffset;
      JrePlusAssignFloatF(&tot_, score);
    }
    else {
      startOffset_ = JavaLangMath_minWithInt_withInt_(startOffset_, termStartOffset);
      endOffset_ = JavaLangMath_maxWithInt_withInt_(endOffset_, termEndOffset);
      if (score > 0) {
        if (tot_ == 0) {
          matchStartOffset_ = termStartOffset;
          matchEndOffset_ = termEndOffset;
        }
        else {
          matchStartOffset_ = JavaLangMath_minWithInt_withInt_(matchStartOffset_, termStartOffset);
          matchEndOffset_ = JavaLangMath_maxWithInt_withInt_(matchEndOffset_, termEndOffset);
        }
        JrePlusAssignFloatF(&tot_, score);
      }
    }
    OrgApacheLuceneAnalysisToken *token = create_OrgApacheLuceneAnalysisToken_init();
    [token setOffsetWithInt:termStartOffset withInt:termEndOffset];
    [((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) nil_chk([token setEmpty])) appendWithOrgApacheLuceneAnalysisTokenattributesCharTermAttribute:termAtt_];
    IOSObjectArray_Set(nil_chk(tokens_), numTokens_, token);
    *IOSFloatArray_GetRef(nil_chk(scores_), numTokens_) = score;
    numTokens_++;
  }
}

- (jboolean)isDistinct {
  return [((id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute>) nil_chk(offsetAtt_)) startOffset] >= endOffset_;
}

- (void)clear {
  numTokens_ = 0;
  tot_ = 0;
}

- (OrgApacheLuceneAnalysisToken *)getTokenWithInt:(jint)index {
  return IOSObjectArray_Get(nil_chk(tokens_), index);
}

- (jfloat)getScoreWithInt:(jint)index {
  return IOSFloatArray_Get(nil_chk(scores_), index);
}

- (jint)getStartOffset {
  return matchStartOffset_;
}

- (jint)getEndOffset {
  return matchEndOffset_;
}

- (jint)getNumTokens {
  return numTokens_;
}

- (jfloat)getTotalScore {
  return tot_;
}

- (void)dealloc {
  RELEASE_(tokens_);
  RELEASE_(scores_);
  RELEASE_(offsetAtt_);
  RELEASE_(termAtt_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x0, 1, 2, -1, -1, -1, -1 },
    { NULL, "Z", 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneAnalysisToken;", 0x1, 3, 4, -1, -1, -1, -1 },
    { NULL, "F", 0x1, 5, 4, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "F", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneAnalysisTokenStream:);
  methods[1].selector = @selector(addTokenWithFloat:);
  methods[2].selector = @selector(isDistinct);
  methods[3].selector = @selector(clear);
  methods[4].selector = @selector(getTokenWithInt:);
  methods[5].selector = @selector(getScoreWithInt:);
  methods[6].selector = @selector(getStartOffset);
  methods[7].selector = @selector(getEndOffset);
  methods[8].selector = @selector(getNumTokens);
  methods[9].selector = @selector(getTotalScore);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "MAX_NUM_TOKENS_PER_GROUP", "I", .constantValue.asInt = OrgApacheLuceneSearchHighlightTokenGroup_MAX_NUM_TOKENS_PER_GROUP, 0x1a, -1, -1, -1, -1 },
    { "tokens_", "[LOrgApacheLuceneAnalysisToken;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "scores_", "[F", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "numTokens_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "startOffset_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "endOffset_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "tot_", "F", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "matchStartOffset_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "matchEndOffset_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "offsetAtt_", "LOrgApacheLuceneAnalysisTokenattributesOffsetAttribute;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "termAtt_", "LOrgApacheLuceneAnalysisTokenattributesCharTermAttribute;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneAnalysisTokenStream;", "addToken", "F", "getToken", "I", "getScore" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchHighlightTokenGroup = { "TokenGroup", "org.apache.lucene.search.highlight", ptrTable, methods, fields, 7, 0x1, 10, 11, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchHighlightTokenGroup;
}

@end

void OrgApacheLuceneSearchHighlightTokenGroup_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneSearchHighlightTokenGroup *self, OrgApacheLuceneAnalysisTokenStream *tokenStream) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->tokens_, [IOSObjectArray newArrayWithLength:OrgApacheLuceneSearchHighlightTokenGroup_MAX_NUM_TOKENS_PER_GROUP type:OrgApacheLuceneAnalysisToken_class_()]);
  JreStrongAssignAndConsume(&self->scores_, [IOSFloatArray newArrayWithLength:OrgApacheLuceneSearchHighlightTokenGroup_MAX_NUM_TOKENS_PER_GROUP]);
  self->numTokens_ = 0;
  self->startOffset_ = 0;
  self->endOffset_ = 0;
  JreStrongAssign(&self->offsetAtt_, [((OrgApacheLuceneAnalysisTokenStream *) nil_chk(tokenStream)) addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesOffsetAttribute_class_()]);
  JreStrongAssign(&self->termAtt_, [tokenStream addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_()]);
}

OrgApacheLuceneSearchHighlightTokenGroup *new_OrgApacheLuceneSearchHighlightTokenGroup_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *tokenStream) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchHighlightTokenGroup, initWithOrgApacheLuceneAnalysisTokenStream_, tokenStream)
}

OrgApacheLuceneSearchHighlightTokenGroup *create_OrgApacheLuceneSearchHighlightTokenGroup_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *tokenStream) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchHighlightTokenGroup, initWithOrgApacheLuceneAnalysisTokenStream_, tokenStream)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchHighlightTokenGroup)
