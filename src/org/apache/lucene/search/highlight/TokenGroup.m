//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./highlighter/src/java/org/apache/lucene/search/highlight/TokenGroup.java
//

#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Math.h"
#include "org/apache/lucene/analysis/Token.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/tokenattributes/CharTermAttribute.h"
#include "org/apache/lucene/analysis/tokenattributes/OffsetAttribute.h"
#include "org/apache/lucene/search/highlight/TokenGroup.h"

#define OrgApacheLuceneSearchHighlightTokenGroup_MAX_NUM_TOKENS_PER_GROUP 50

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

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneSearchHighlightTokenGroup, MAX_NUM_TOKENS_PER_GROUP, jint)

@implementation OrgApacheLuceneSearchHighlightTokenGroup

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)tokenStream {
  OrgApacheLuceneSearchHighlightTokenGroup_initWithOrgApacheLuceneAnalysisTokenStream_(self, tokenStream);
  return self;
}

- (void)addTokenWithFloat:(jfloat)score {
  if (numTokens_ < OrgApacheLuceneSearchHighlightTokenGroup_MAX_NUM_TOKENS_PER_GROUP) {
    jint termStartOffset = [((id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute>) nil_chk(offsetAtt_)) startOffset];
    jint termEndOffset = [offsetAtt_ endOffset];
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
    OrgApacheLuceneAnalysisToken *token = [new_OrgApacheLuceneAnalysisToken_init() autorelease];
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
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneAnalysisTokenStream:", "TokenGroup", NULL, 0x1, NULL, NULL },
    { "addTokenWithFloat:", "addToken", "V", 0x0, NULL, NULL },
    { "isDistinct", NULL, "Z", 0x0, NULL, NULL },
    { "clear", NULL, "V", 0x0, NULL, NULL },
    { "getStartOffset", NULL, "I", 0x1, NULL, NULL },
    { "getEndOffset", NULL, "I", 0x1, NULL, NULL },
    { "getNumTokens", NULL, "I", 0x1, NULL, NULL },
    { "getTotalScore", NULL, "F", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "MAX_NUM_TOKENS_PER_GROUP", "MAX_NUM_TOKENS_PER_GROUP", 0x1a, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneSearchHighlightTokenGroup_MAX_NUM_TOKENS_PER_GROUP },
    { "tokens_", NULL, 0x2, "[Lorg.apache.lucene.analysis.Token;", NULL, NULL, .constantValue.asLong = 0 },
    { "scores_", NULL, 0x2, "[F", NULL, NULL, .constantValue.asLong = 0 },
    { "numTokens_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "startOffset_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "endOffset_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "tot_", NULL, 0x2, "F", NULL, NULL, .constantValue.asLong = 0 },
    { "matchStartOffset_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "matchEndOffset_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "offsetAtt_", NULL, 0x2, "Lorg.apache.lucene.analysis.tokenattributes.OffsetAttribute;", NULL, NULL, .constantValue.asLong = 0 },
    { "termAtt_", NULL, 0x2, "Lorg.apache.lucene.analysis.tokenattributes.CharTermAttribute;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchHighlightTokenGroup = { 2, "TokenGroup", "org.apache.lucene.search.highlight", NULL, 0x1, 8, methods, 11, fields, 0, NULL, 0, NULL, NULL, NULL };
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
  OrgApacheLuceneSearchHighlightTokenGroup *self = [OrgApacheLuceneSearchHighlightTokenGroup alloc];
  OrgApacheLuceneSearchHighlightTokenGroup_initWithOrgApacheLuceneAnalysisTokenStream_(self, tokenStream);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchHighlightTokenGroup)
