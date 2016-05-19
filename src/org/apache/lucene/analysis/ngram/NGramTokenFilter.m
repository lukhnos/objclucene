//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/ngram/NGramTokenFilter.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Integer.h"
#include "org/apache/lucene/analysis/TokenFilter.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/miscellaneous/CodepointCountFilter.h"
#include "org/apache/lucene/analysis/ngram/NGramTokenFilter.h"
#include "org/apache/lucene/analysis/tokenattributes/CharTermAttribute.h"
#include "org/apache/lucene/analysis/tokenattributes/OffsetAttribute.h"
#include "org/apache/lucene/analysis/tokenattributes/PositionIncrementAttribute.h"
#include "org/apache/lucene/analysis/tokenattributes/PositionLengthAttribute.h"
#include "org/apache/lucene/analysis/util/CharacterUtils.h"
#include "org/apache/lucene/util/AttributeSource.h"

@interface OrgApacheLuceneAnalysisNgramNGramTokenFilter () {
 @public
  jint minGram_, maxGram_;
  IOSCharArray *curTermBuffer_;
  jint curTermLength_;
  jint curCodePointCount_;
  jint curGramSize_;
  jint curPos_;
  jint curPosInc_, curPosLen_;
  jint tokStart_;
  jint tokEnd_;
  jboolean hasIllegalOffsets_;
  OrgApacheLuceneAnalysisUtilCharacterUtils *charUtils_;
  id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute> termAtt_;
  id<OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute> posIncAtt_;
  id<OrgApacheLuceneAnalysisTokenattributesPositionLengthAttribute> posLenAtt_;
  id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute> offsetAtt_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisNgramNGramTokenFilter, curTermBuffer_, IOSCharArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisNgramNGramTokenFilter, charUtils_, OrgApacheLuceneAnalysisUtilCharacterUtils *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisNgramNGramTokenFilter, termAtt_, id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisNgramNGramTokenFilter, posIncAtt_, id<OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisNgramNGramTokenFilter, posLenAtt_, id<OrgApacheLuceneAnalysisTokenattributesPositionLengthAttribute>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisNgramNGramTokenFilter, offsetAtt_, id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute>)

@implementation OrgApacheLuceneAnalysisNgramNGramTokenFilter

+ (jint)DEFAULT_MIN_NGRAM_SIZE {
  return OrgApacheLuceneAnalysisNgramNGramTokenFilter_DEFAULT_MIN_NGRAM_SIZE;
}

+ (jint)DEFAULT_MAX_NGRAM_SIZE {
  return OrgApacheLuceneAnalysisNgramNGramTokenFilter_DEFAULT_MAX_NGRAM_SIZE;
}

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input
                                                   withInt:(jint)minGram
                                                   withInt:(jint)maxGram {
  OrgApacheLuceneAnalysisNgramNGramTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_withInt_(self, input, minGram, maxGram);
  return self;
}

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input {
  OrgApacheLuceneAnalysisNgramNGramTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_(self, input);
  return self;
}

- (jboolean)incrementToken {
  while (true) {
    if (curTermBuffer_ == nil) {
      if (![((OrgApacheLuceneAnalysisTokenStream *) nil_chk(input_)) incrementToken]) {
        return false;
      }
      else {
        JreStrongAssign(&curTermBuffer_, [((IOSCharArray *) nil_chk([((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) nil_chk(termAtt_)) buffer])) clone]);
        curTermLength_ = [termAtt_ length];
        curCodePointCount_ = [((OrgApacheLuceneAnalysisUtilCharacterUtils *) nil_chk(charUtils_)) codePointCountWithJavaLangCharSequence:termAtt_];
        curGramSize_ = minGram_;
        curPos_ = 0;
        curPosInc_ = [((id<OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute>) nil_chk(posIncAtt_)) getPositionIncrement];
        curPosLen_ = [((id<OrgApacheLuceneAnalysisTokenattributesPositionLengthAttribute>) nil_chk(posLenAtt_)) getPositionLength];
        tokStart_ = [((id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute>) nil_chk(offsetAtt_)) startOffset];
        tokEnd_ = [offsetAtt_ endOffset];
        hasIllegalOffsets_ = ((tokStart_ + curTermLength_) != tokEnd_);
      }
    }
    if (curGramSize_ > maxGram_ || (curPos_ + curGramSize_) > curCodePointCount_) {
      ++curPos_;
      curGramSize_ = minGram_;
    }
    if ((curPos_ + curGramSize_) <= curCodePointCount_) {
      [self clearAttributes];
      jint start = [((OrgApacheLuceneAnalysisUtilCharacterUtils *) nil_chk(charUtils_)) offsetByCodePointsWithCharArray:curTermBuffer_ withInt:0 withInt:curTermLength_ withInt:0 withInt:curPos_];
      jint end = [charUtils_ offsetByCodePointsWithCharArray:curTermBuffer_ withInt:0 withInt:curTermLength_ withInt:start withInt:curGramSize_];
      [((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) nil_chk(termAtt_)) copyBufferWithCharArray:curTermBuffer_ withInt:start withInt:end - start];
      [((id<OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute>) nil_chk(posIncAtt_)) setPositionIncrementWithInt:curPosInc_];
      curPosInc_ = 0;
      [((id<OrgApacheLuceneAnalysisTokenattributesPositionLengthAttribute>) nil_chk(posLenAtt_)) setPositionLengthWithInt:curPosLen_];
      [((id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute>) nil_chk(offsetAtt_)) setOffsetWithInt:tokStart_ withInt:tokEnd_];
      curGramSize_++;
      return true;
    }
    JreStrongAssign(&curTermBuffer_, nil);
  }
}

- (void)reset {
  [super reset];
  JreStrongAssign(&curTermBuffer_, nil);
}

- (void)dealloc {
  RELEASE_(curTermBuffer_);
  RELEASE_(charUtils_);
  RELEASE_(termAtt_);
  RELEASE_(posIncAtt_);
  RELEASE_(posLenAtt_);
  RELEASE_(offsetAtt_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneAnalysisTokenStream:withInt:withInt:", "NGramTokenFilter", NULL, 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneAnalysisTokenStream:", "NGramTokenFilter", NULL, 0x1, NULL, NULL },
    { "incrementToken", NULL, "Z", 0x11, "Ljava.io.IOException;", NULL },
    { "reset", NULL, "V", 0x1, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "DEFAULT_MIN_NGRAM_SIZE", "DEFAULT_MIN_NGRAM_SIZE", 0x19, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneAnalysisNgramNGramTokenFilter_DEFAULT_MIN_NGRAM_SIZE },
    { "DEFAULT_MAX_NGRAM_SIZE", "DEFAULT_MAX_NGRAM_SIZE", 0x19, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneAnalysisNgramNGramTokenFilter_DEFAULT_MAX_NGRAM_SIZE },
    { "minGram_", NULL, 0x12, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "maxGram_", NULL, 0x12, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "curTermBuffer_", NULL, 0x2, "[C", NULL, NULL, .constantValue.asLong = 0 },
    { "curTermLength_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "curCodePointCount_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "curGramSize_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "curPos_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "curPosInc_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "curPosLen_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "tokStart_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "tokEnd_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "hasIllegalOffsets_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "charUtils_", NULL, 0x12, "Lorg.apache.lucene.analysis.util.CharacterUtils;", NULL, NULL, .constantValue.asLong = 0 },
    { "termAtt_", NULL, 0x12, "Lorg.apache.lucene.analysis.tokenattributes.CharTermAttribute;", NULL, NULL, .constantValue.asLong = 0 },
    { "posIncAtt_", NULL, 0x12, "Lorg.apache.lucene.analysis.tokenattributes.PositionIncrementAttribute;", NULL, NULL, .constantValue.asLong = 0 },
    { "posLenAtt_", NULL, 0x12, "Lorg.apache.lucene.analysis.tokenattributes.PositionLengthAttribute;", NULL, NULL, .constantValue.asLong = 0 },
    { "offsetAtt_", NULL, 0x12, "Lorg.apache.lucene.analysis.tokenattributes.OffsetAttribute;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisNgramNGramTokenFilter = { 2, "NGramTokenFilter", "org.apache.lucene.analysis.ngram", NULL, 0x11, 4, methods, 19, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisNgramNGramTokenFilter;
}

@end

void OrgApacheLuceneAnalysisNgramNGramTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_withInt_(OrgApacheLuceneAnalysisNgramNGramTokenFilter *self, OrgApacheLuceneAnalysisTokenStream *input, jint minGram, jint maxGram) {
  OrgApacheLuceneAnalysisTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_(self, create_OrgApacheLuceneAnalysisMiscellaneousCodepointCountFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_withInt_(input, minGram, JavaLangInteger_MAX_VALUE));
  JreStrongAssign(&self->termAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_()]);
  JreStrongAssign(&self->offsetAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesOffsetAttribute_class_()]);
  JreStrongAssign(&self->charUtils_, OrgApacheLuceneAnalysisUtilCharacterUtils_getInstance());
  if (minGram < 1) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"minGram must be greater than zero");
  }
  if (minGram > maxGram) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"minGram must not be greater than maxGram");
  }
  self->minGram_ = minGram;
  self->maxGram_ = maxGram;
  JreStrongAssign(&self->posIncAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute_class_()]);
  JreStrongAssign(&self->posLenAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesPositionLengthAttribute_class_()]);
}

OrgApacheLuceneAnalysisNgramNGramTokenFilter *new_OrgApacheLuceneAnalysisNgramNGramTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_withInt_(OrgApacheLuceneAnalysisTokenStream *input, jint minGram, jint maxGram) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisNgramNGramTokenFilter, initWithOrgApacheLuceneAnalysisTokenStream_withInt_withInt_, input, minGram, maxGram)
}

OrgApacheLuceneAnalysisNgramNGramTokenFilter *create_OrgApacheLuceneAnalysisNgramNGramTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_withInt_(OrgApacheLuceneAnalysisTokenStream *input, jint minGram, jint maxGram) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisNgramNGramTokenFilter, initWithOrgApacheLuceneAnalysisTokenStream_withInt_withInt_, input, minGram, maxGram)
}

void OrgApacheLuceneAnalysisNgramNGramTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisNgramNGramTokenFilter *self, OrgApacheLuceneAnalysisTokenStream *input) {
  OrgApacheLuceneAnalysisNgramNGramTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_withInt_(self, input, OrgApacheLuceneAnalysisNgramNGramTokenFilter_DEFAULT_MIN_NGRAM_SIZE, OrgApacheLuceneAnalysisNgramNGramTokenFilter_DEFAULT_MAX_NGRAM_SIZE);
}

OrgApacheLuceneAnalysisNgramNGramTokenFilter *new_OrgApacheLuceneAnalysisNgramNGramTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *input) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisNgramNGramTokenFilter, initWithOrgApacheLuceneAnalysisTokenStream_, input)
}

OrgApacheLuceneAnalysisNgramNGramTokenFilter *create_OrgApacheLuceneAnalysisNgramNGramTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *input) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisNgramNGramTokenFilter, initWithOrgApacheLuceneAnalysisTokenStream_, input)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisNgramNGramTokenFilter)
