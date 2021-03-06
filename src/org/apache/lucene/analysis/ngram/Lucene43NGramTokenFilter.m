//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/ngram/Lucene43NGramTokenFilter.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/Deprecated.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Integer.h"
#include "java/lang/annotation/Annotation.h"
#include "org/apache/lucene/analysis/TokenFilter.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/miscellaneous/CodepointCountFilter.h"
#include "org/apache/lucene/analysis/ngram/Lucene43NGramTokenFilter.h"
#include "org/apache/lucene/analysis/tokenattributes/CharTermAttribute.h"
#include "org/apache/lucene/analysis/tokenattributes/OffsetAttribute.h"
#include "org/apache/lucene/analysis/tokenattributes/PositionIncrementAttribute.h"
#include "org/apache/lucene/analysis/tokenattributes/PositionLengthAttribute.h"
#include "org/apache/lucene/analysis/util/CharacterUtils.h"
#include "org/apache/lucene/util/AttributeSource.h"

@interface OrgApacheLuceneAnalysisNgramLucene43NGramTokenFilter () {
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

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisNgramLucene43NGramTokenFilter, curTermBuffer_, IOSCharArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisNgramLucene43NGramTokenFilter, charUtils_, OrgApacheLuceneAnalysisUtilCharacterUtils *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisNgramLucene43NGramTokenFilter, termAtt_, id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisNgramLucene43NGramTokenFilter, posIncAtt_, id<OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisNgramLucene43NGramTokenFilter, posLenAtt_, id<OrgApacheLuceneAnalysisTokenattributesPositionLengthAttribute>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisNgramLucene43NGramTokenFilter, offsetAtt_, id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute>)

@interface OrgApacheLuceneAnalysisNgramLucene43NGramTokenFilter_$1 : NSObject < OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute >

- (void)setPositionIncrementWithInt:(jint)positionIncrement;

- (jint)getPositionIncrement;

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisNgramLucene43NGramTokenFilter_$1)

__attribute__((unused)) static void OrgApacheLuceneAnalysisNgramLucene43NGramTokenFilter_$1_init(OrgApacheLuceneAnalysisNgramLucene43NGramTokenFilter_$1 *self);

__attribute__((unused)) static OrgApacheLuceneAnalysisNgramLucene43NGramTokenFilter_$1 *new_OrgApacheLuceneAnalysisNgramLucene43NGramTokenFilter_$1_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneAnalysisNgramLucene43NGramTokenFilter_$1 *create_OrgApacheLuceneAnalysisNgramLucene43NGramTokenFilter_$1_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisNgramLucene43NGramTokenFilter_$1)

@interface OrgApacheLuceneAnalysisNgramLucene43NGramTokenFilter_$2 : NSObject < OrgApacheLuceneAnalysisTokenattributesPositionLengthAttribute >

- (void)setPositionLengthWithInt:(jint)positionLength;

- (jint)getPositionLength;

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisNgramLucene43NGramTokenFilter_$2)

__attribute__((unused)) static void OrgApacheLuceneAnalysisNgramLucene43NGramTokenFilter_$2_init(OrgApacheLuceneAnalysisNgramLucene43NGramTokenFilter_$2 *self);

__attribute__((unused)) static OrgApacheLuceneAnalysisNgramLucene43NGramTokenFilter_$2 *new_OrgApacheLuceneAnalysisNgramLucene43NGramTokenFilter_$2_init() NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneAnalysisNgramLucene43NGramTokenFilter_$2 *create_OrgApacheLuceneAnalysisNgramLucene43NGramTokenFilter_$2_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisNgramLucene43NGramTokenFilter_$2)

@implementation OrgApacheLuceneAnalysisNgramLucene43NGramTokenFilter

+ (jint)DEFAULT_MIN_NGRAM_SIZE {
  return OrgApacheLuceneAnalysisNgramLucene43NGramTokenFilter_DEFAULT_MIN_NGRAM_SIZE;
}

+ (jint)DEFAULT_MAX_NGRAM_SIZE {
  return OrgApacheLuceneAnalysisNgramLucene43NGramTokenFilter_DEFAULT_MAX_NGRAM_SIZE;
}

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input
                                                   withInt:(jint)minGram
                                                   withInt:(jint)maxGram {
  OrgApacheLuceneAnalysisNgramLucene43NGramTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_withInt_(self, input, minGram, maxGram);
  return self;
}

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input {
  OrgApacheLuceneAnalysisNgramLucene43NGramTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_(self, input);
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
    while (curGramSize_ <= maxGram_) {
      while (curPos_ + curGramSize_ <= curTermLength_) {
        [self clearAttributes];
        [((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) nil_chk(termAtt_)) copyBufferWithCharArray:curTermBuffer_ withInt:curPos_ withInt:curGramSize_];
        if (hasIllegalOffsets_) {
          [((id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute>) nil_chk(offsetAtt_)) setOffsetWithInt:tokStart_ withInt:tokEnd_];
        }
        else {
          [((id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute>) nil_chk(offsetAtt_)) setOffsetWithInt:tokStart_ + curPos_ withInt:tokStart_ + curPos_ + curGramSize_];
        }
        curPos_++;
        return true;
      }
      curGramSize_++;
      curPos_ = 0;
    }
    JreStrongAssign(&curTermBuffer_, nil);
  }
}

- (void)reset {
  [super reset];
  JreStrongAssign(&curTermBuffer_, nil);
}

+ (IOSObjectArray *)__annotations {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_JavaLangDeprecated() } count:1 type:JavaLangAnnotationAnnotation_class_()];
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
    { "initWithOrgApacheLuceneAnalysisTokenStream:withInt:withInt:", "Lucene43NGramTokenFilter", NULL, 0x1, NULL, NULL },
    { "initWithOrgApacheLuceneAnalysisTokenStream:", "Lucene43NGramTokenFilter", NULL, 0x1, NULL, NULL },
    { "incrementToken", NULL, "Z", 0x11, "Ljava.io.IOException;", NULL },
    { "reset", NULL, "V", 0x1, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "DEFAULT_MIN_NGRAM_SIZE", "DEFAULT_MIN_NGRAM_SIZE", 0x19, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneAnalysisNgramLucene43NGramTokenFilter_DEFAULT_MIN_NGRAM_SIZE },
    { "DEFAULT_MAX_NGRAM_SIZE", "DEFAULT_MAX_NGRAM_SIZE", 0x19, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneAnalysisNgramLucene43NGramTokenFilter_DEFAULT_MAX_NGRAM_SIZE },
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
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisNgramLucene43NGramTokenFilter = { 2, "Lucene43NGramTokenFilter", "org.apache.lucene.analysis.ngram", NULL, 0x11, 4, methods, 19, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisNgramLucene43NGramTokenFilter;
}

@end

void OrgApacheLuceneAnalysisNgramLucene43NGramTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_withInt_(OrgApacheLuceneAnalysisNgramLucene43NGramTokenFilter *self, OrgApacheLuceneAnalysisTokenStream *input, jint minGram, jint maxGram) {
  OrgApacheLuceneAnalysisTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_(self, create_OrgApacheLuceneAnalysisMiscellaneousCodepointCountFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_withInt_(input, minGram, JavaLangInteger_MAX_VALUE));
  JreStrongAssign(&self->termAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_()]);
  JreStrongAssign(&self->offsetAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesOffsetAttribute_class_()]);
  JreStrongAssign(&self->charUtils_, OrgApacheLuceneAnalysisUtilCharacterUtils_getJava4Instance());
  if (minGram < 1) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"minGram must be greater than zero");
  }
  if (minGram > maxGram) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"minGram must not be greater than maxGram");
  }
  self->minGram_ = minGram;
  self->maxGram_ = maxGram;
  JreStrongAssignAndConsume(&self->posIncAtt_, new_OrgApacheLuceneAnalysisNgramLucene43NGramTokenFilter_$1_init());
  JreStrongAssignAndConsume(&self->posLenAtt_, new_OrgApacheLuceneAnalysisNgramLucene43NGramTokenFilter_$2_init());
}

OrgApacheLuceneAnalysisNgramLucene43NGramTokenFilter *new_OrgApacheLuceneAnalysisNgramLucene43NGramTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_withInt_(OrgApacheLuceneAnalysisTokenStream *input, jint minGram, jint maxGram) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisNgramLucene43NGramTokenFilter, initWithOrgApacheLuceneAnalysisTokenStream_withInt_withInt_, input, minGram, maxGram)
}

OrgApacheLuceneAnalysisNgramLucene43NGramTokenFilter *create_OrgApacheLuceneAnalysisNgramLucene43NGramTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_withInt_(OrgApacheLuceneAnalysisTokenStream *input, jint minGram, jint maxGram) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisNgramLucene43NGramTokenFilter, initWithOrgApacheLuceneAnalysisTokenStream_withInt_withInt_, input, minGram, maxGram)
}

void OrgApacheLuceneAnalysisNgramLucene43NGramTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisNgramLucene43NGramTokenFilter *self, OrgApacheLuceneAnalysisTokenStream *input) {
  OrgApacheLuceneAnalysisNgramLucene43NGramTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_withInt_withInt_(self, input, OrgApacheLuceneAnalysisNgramLucene43NGramTokenFilter_DEFAULT_MIN_NGRAM_SIZE, OrgApacheLuceneAnalysisNgramLucene43NGramTokenFilter_DEFAULT_MAX_NGRAM_SIZE);
}

OrgApacheLuceneAnalysisNgramLucene43NGramTokenFilter *new_OrgApacheLuceneAnalysisNgramLucene43NGramTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *input) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisNgramLucene43NGramTokenFilter, initWithOrgApacheLuceneAnalysisTokenStream_, input)
}

OrgApacheLuceneAnalysisNgramLucene43NGramTokenFilter *create_OrgApacheLuceneAnalysisNgramLucene43NGramTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *input) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisNgramLucene43NGramTokenFilter, initWithOrgApacheLuceneAnalysisTokenStream_, input)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisNgramLucene43NGramTokenFilter)

@implementation OrgApacheLuceneAnalysisNgramLucene43NGramTokenFilter_$1

- (void)setPositionIncrementWithInt:(jint)positionIncrement {
}

- (jint)getPositionIncrement {
  return 0;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneAnalysisNgramLucene43NGramTokenFilter_$1_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "setPositionIncrementWithInt:", "setPositionIncrement", "V", 0x1, NULL, NULL },
    { "getPositionIncrement", NULL, "I", 0x1, NULL, NULL },
    { "init", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "OrgApacheLuceneAnalysisNgramLucene43NGramTokenFilter", "initWithOrgApacheLuceneAnalysisTokenStream:withInt:withInt:" };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisNgramLucene43NGramTokenFilter_$1 = { 2, "", "org.apache.lucene.analysis.ngram", "Lucene43NGramTokenFilter", 0x8008, 3, methods, 0, NULL, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_OrgApacheLuceneAnalysisNgramLucene43NGramTokenFilter_$1;
}

@end

void OrgApacheLuceneAnalysisNgramLucene43NGramTokenFilter_$1_init(OrgApacheLuceneAnalysisNgramLucene43NGramTokenFilter_$1 *self) {
  NSObject_init(self);
}

OrgApacheLuceneAnalysisNgramLucene43NGramTokenFilter_$1 *new_OrgApacheLuceneAnalysisNgramLucene43NGramTokenFilter_$1_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisNgramLucene43NGramTokenFilter_$1, init)
}

OrgApacheLuceneAnalysisNgramLucene43NGramTokenFilter_$1 *create_OrgApacheLuceneAnalysisNgramLucene43NGramTokenFilter_$1_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisNgramLucene43NGramTokenFilter_$1, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisNgramLucene43NGramTokenFilter_$1)

@implementation OrgApacheLuceneAnalysisNgramLucene43NGramTokenFilter_$2

- (void)setPositionLengthWithInt:(jint)positionLength {
}

- (jint)getPositionLength {
  return 0;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneAnalysisNgramLucene43NGramTokenFilter_$2_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "setPositionLengthWithInt:", "setPositionLength", "V", 0x1, NULL, NULL },
    { "getPositionLength", NULL, "I", 0x1, NULL, NULL },
    { "init", "", NULL, 0x0, NULL, NULL },
  };
  static const J2ObjCEnclosingMethodInfo enclosing_method = { "OrgApacheLuceneAnalysisNgramLucene43NGramTokenFilter", "initWithOrgApacheLuceneAnalysisTokenStream:withInt:withInt:" };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisNgramLucene43NGramTokenFilter_$2 = { 2, "", "org.apache.lucene.analysis.ngram", "Lucene43NGramTokenFilter", 0x8008, 3, methods, 0, NULL, 0, NULL, 0, NULL, &enclosing_method, NULL };
  return &_OrgApacheLuceneAnalysisNgramLucene43NGramTokenFilter_$2;
}

@end

void OrgApacheLuceneAnalysisNgramLucene43NGramTokenFilter_$2_init(OrgApacheLuceneAnalysisNgramLucene43NGramTokenFilter_$2 *self) {
  NSObject_init(self);
}

OrgApacheLuceneAnalysisNgramLucene43NGramTokenFilter_$2 *new_OrgApacheLuceneAnalysisNgramLucene43NGramTokenFilter_$2_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisNgramLucene43NGramTokenFilter_$2, init)
}

OrgApacheLuceneAnalysisNgramLucene43NGramTokenFilter_$2 *create_OrgApacheLuceneAnalysisNgramLucene43NGramTokenFilter_$2_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisNgramLucene43NGramTokenFilter_$2, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisNgramLucene43NGramTokenFilter_$2)
