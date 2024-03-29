//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/miscellaneous/PrefixAwareTokenFilter.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "org/apache/lucene/analysis/Token.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/miscellaneous/PrefixAwareTokenFilter.h"
#include "org/apache/lucene/analysis/tokenattributes/CharTermAttribute.h"
#include "org/apache/lucene/analysis/tokenattributes/FlagsAttribute.h"
#include "org/apache/lucene/analysis/tokenattributes/OffsetAttribute.h"
#include "org/apache/lucene/analysis/tokenattributes/PayloadAttribute.h"
#include "org/apache/lucene/analysis/tokenattributes/PositionIncrementAttribute.h"
#include "org/apache/lucene/analysis/tokenattributes/TypeAttribute.h"
#include "org/apache/lucene/util/BytesRef.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/analysis/miscellaneous/PrefixAwareTokenFilter must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneAnalysisMiscellaneousPrefixAwareTokenFilter () {
 @public
  OrgApacheLuceneAnalysisTokenStream *prefix_;
  OrgApacheLuceneAnalysisTokenStream *suffix_;
  id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute> termAtt_;
  id<OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute> posIncrAtt_;
  id<OrgApacheLuceneAnalysisTokenattributesPayloadAttribute> payloadAtt_;
  id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute> offsetAtt_;
  id<OrgApacheLuceneAnalysisTokenattributesTypeAttribute> typeAtt_;
  id<OrgApacheLuceneAnalysisTokenattributesFlagsAttribute> flagsAtt_;
  id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute> p_termAtt_;
  id<OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute> p_posIncrAtt_;
  id<OrgApacheLuceneAnalysisTokenattributesPayloadAttribute> p_payloadAtt_;
  id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute> p_offsetAtt_;
  id<OrgApacheLuceneAnalysisTokenattributesTypeAttribute> p_typeAtt_;
  id<OrgApacheLuceneAnalysisTokenattributesFlagsAttribute> p_flagsAtt_;
  OrgApacheLuceneAnalysisToken *previousPrefixToken_;
  OrgApacheLuceneAnalysisToken *reusableToken_;
  jboolean prefixExhausted_;
}

- (void)setCurrentTokenWithOrgApacheLuceneAnalysisToken:(OrgApacheLuceneAnalysisToken *)token;

- (OrgApacheLuceneAnalysisToken *)getNextPrefixInputTokenWithOrgApacheLuceneAnalysisToken:(OrgApacheLuceneAnalysisToken *)token;

- (OrgApacheLuceneAnalysisToken *)getNextSuffixInputTokenWithOrgApacheLuceneAnalysisToken:(OrgApacheLuceneAnalysisToken *)token;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisMiscellaneousPrefixAwareTokenFilter, prefix_, OrgApacheLuceneAnalysisTokenStream *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisMiscellaneousPrefixAwareTokenFilter, suffix_, OrgApacheLuceneAnalysisTokenStream *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisMiscellaneousPrefixAwareTokenFilter, termAtt_, id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisMiscellaneousPrefixAwareTokenFilter, posIncrAtt_, id<OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisMiscellaneousPrefixAwareTokenFilter, payloadAtt_, id<OrgApacheLuceneAnalysisTokenattributesPayloadAttribute>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisMiscellaneousPrefixAwareTokenFilter, offsetAtt_, id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisMiscellaneousPrefixAwareTokenFilter, typeAtt_, id<OrgApacheLuceneAnalysisTokenattributesTypeAttribute>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisMiscellaneousPrefixAwareTokenFilter, flagsAtt_, id<OrgApacheLuceneAnalysisTokenattributesFlagsAttribute>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisMiscellaneousPrefixAwareTokenFilter, p_termAtt_, id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisMiscellaneousPrefixAwareTokenFilter, p_posIncrAtt_, id<OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisMiscellaneousPrefixAwareTokenFilter, p_payloadAtt_, id<OrgApacheLuceneAnalysisTokenattributesPayloadAttribute>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisMiscellaneousPrefixAwareTokenFilter, p_offsetAtt_, id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisMiscellaneousPrefixAwareTokenFilter, p_typeAtt_, id<OrgApacheLuceneAnalysisTokenattributesTypeAttribute>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisMiscellaneousPrefixAwareTokenFilter, p_flagsAtt_, id<OrgApacheLuceneAnalysisTokenattributesFlagsAttribute>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisMiscellaneousPrefixAwareTokenFilter, previousPrefixToken_, OrgApacheLuceneAnalysisToken *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisMiscellaneousPrefixAwareTokenFilter, reusableToken_, OrgApacheLuceneAnalysisToken *)

__attribute__((unused)) static void OrgApacheLuceneAnalysisMiscellaneousPrefixAwareTokenFilter_setCurrentTokenWithOrgApacheLuceneAnalysisToken_(OrgApacheLuceneAnalysisMiscellaneousPrefixAwareTokenFilter *self, OrgApacheLuceneAnalysisToken *token);

__attribute__((unused)) static OrgApacheLuceneAnalysisToken *OrgApacheLuceneAnalysisMiscellaneousPrefixAwareTokenFilter_getNextPrefixInputTokenWithOrgApacheLuceneAnalysisToken_(OrgApacheLuceneAnalysisMiscellaneousPrefixAwareTokenFilter *self, OrgApacheLuceneAnalysisToken *token);

__attribute__((unused)) static OrgApacheLuceneAnalysisToken *OrgApacheLuceneAnalysisMiscellaneousPrefixAwareTokenFilter_getNextSuffixInputTokenWithOrgApacheLuceneAnalysisToken_(OrgApacheLuceneAnalysisMiscellaneousPrefixAwareTokenFilter *self, OrgApacheLuceneAnalysisToken *token);

@implementation OrgApacheLuceneAnalysisMiscellaneousPrefixAwareTokenFilter

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)prefix
                    withOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)suffix {
  OrgApacheLuceneAnalysisMiscellaneousPrefixAwareTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisTokenStream_(self, prefix, suffix);
  return self;
}

- (jboolean)incrementToken {
  if (!prefixExhausted_) {
    OrgApacheLuceneAnalysisToken *nextToken = OrgApacheLuceneAnalysisMiscellaneousPrefixAwareTokenFilter_getNextPrefixInputTokenWithOrgApacheLuceneAnalysisToken_(self, reusableToken_);
    if (nextToken == nil) {
      prefixExhausted_ = true;
    }
    else {
      [((OrgApacheLuceneAnalysisToken *) nil_chk(previousPrefixToken_)) reinitWithOrgApacheLuceneAnalysisToken:nextToken];
      OrgApacheLuceneUtilBytesRef *p = JreRetainedLocalValue([((OrgApacheLuceneAnalysisToken *) nil_chk(previousPrefixToken_)) getPayload]);
      if (p != nil) {
        [((OrgApacheLuceneAnalysisToken *) nil_chk(previousPrefixToken_)) setPayloadWithOrgApacheLuceneUtilBytesRef:[p java_clone]];
      }
      OrgApacheLuceneAnalysisMiscellaneousPrefixAwareTokenFilter_setCurrentTokenWithOrgApacheLuceneAnalysisToken_(self, nextToken);
      return true;
    }
  }
  OrgApacheLuceneAnalysisToken *nextToken = OrgApacheLuceneAnalysisMiscellaneousPrefixAwareTokenFilter_getNextSuffixInputTokenWithOrgApacheLuceneAnalysisToken_(self, reusableToken_);
  if (nextToken == nil) {
    return false;
  }
  nextToken = [self updateSuffixTokenWithOrgApacheLuceneAnalysisToken:nextToken withOrgApacheLuceneAnalysisToken:previousPrefixToken_];
  OrgApacheLuceneAnalysisMiscellaneousPrefixAwareTokenFilter_setCurrentTokenWithOrgApacheLuceneAnalysisToken_(self, nextToken);
  return true;
}

- (void)setCurrentTokenWithOrgApacheLuceneAnalysisToken:(OrgApacheLuceneAnalysisToken *)token {
  OrgApacheLuceneAnalysisMiscellaneousPrefixAwareTokenFilter_setCurrentTokenWithOrgApacheLuceneAnalysisToken_(self, token);
}

- (OrgApacheLuceneAnalysisToken *)getNextPrefixInputTokenWithOrgApacheLuceneAnalysisToken:(OrgApacheLuceneAnalysisToken *)token {
  return OrgApacheLuceneAnalysisMiscellaneousPrefixAwareTokenFilter_getNextPrefixInputTokenWithOrgApacheLuceneAnalysisToken_(self, token);
}

- (OrgApacheLuceneAnalysisToken *)getNextSuffixInputTokenWithOrgApacheLuceneAnalysisToken:(OrgApacheLuceneAnalysisToken *)token {
  return OrgApacheLuceneAnalysisMiscellaneousPrefixAwareTokenFilter_getNextSuffixInputTokenWithOrgApacheLuceneAnalysisToken_(self, token);
}

- (OrgApacheLuceneAnalysisToken *)updateSuffixTokenWithOrgApacheLuceneAnalysisToken:(OrgApacheLuceneAnalysisToken *)suffixToken
                                                   withOrgApacheLuceneAnalysisToken:(OrgApacheLuceneAnalysisToken *)lastPrefixToken {
  [((OrgApacheLuceneAnalysisToken *) nil_chk(suffixToken)) setOffsetWithInt:[((OrgApacheLuceneAnalysisToken *) nil_chk(lastPrefixToken)) endOffset] + [suffixToken startOffset] withInt:[lastPrefixToken endOffset] + [suffixToken endOffset]];
  return suffixToken;
}

- (void)end {
  [((OrgApacheLuceneAnalysisTokenStream *) nil_chk(prefix_)) end];
  [((OrgApacheLuceneAnalysisTokenStream *) nil_chk(suffix_)) end];
}

- (void)close {
  [((OrgApacheLuceneAnalysisTokenStream *) nil_chk(prefix_)) close];
  [((OrgApacheLuceneAnalysisTokenStream *) nil_chk(suffix_)) close];
}

- (void)reset {
  [super reset];
  if (prefix_ != nil) {
    prefixExhausted_ = false;
    [prefix_ reset];
  }
  if (suffix_ != nil) {
    [suffix_ reset];
  }
}

- (OrgApacheLuceneAnalysisTokenStream *)getPrefix {
  return prefix_;
}

- (void)setPrefixWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)prefix {
  JreStrongAssign(&self->prefix_, prefix);
}

- (OrgApacheLuceneAnalysisTokenStream *)getSuffix {
  return suffix_;
}

- (void)setSuffixWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)suffix {
  JreStrongAssign(&self->suffix_, suffix);
}

- (void)dealloc {
  RELEASE_(prefix_);
  RELEASE_(suffix_);
  RELEASE_(termAtt_);
  RELEASE_(posIncrAtt_);
  RELEASE_(payloadAtt_);
  RELEASE_(offsetAtt_);
  RELEASE_(typeAtt_);
  RELEASE_(flagsAtt_);
  RELEASE_(p_termAtt_);
  RELEASE_(p_posIncrAtt_);
  RELEASE_(p_payloadAtt_);
  RELEASE_(p_offsetAtt_);
  RELEASE_(p_typeAtt_);
  RELEASE_(p_flagsAtt_);
  RELEASE_(previousPrefixToken_);
  RELEASE_(reusableToken_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "Z", 0x11, -1, -1, 1, -1, -1, -1 },
    { NULL, "V", 0x2, 2, 3, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneAnalysisToken;", 0x2, 4, 3, 1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneAnalysisToken;", 0x2, 5, 3, 1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneAnalysisToken;", 0x1, 6, 7, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneAnalysisTokenStream;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 8, 9, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneAnalysisTokenStream;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 10, 9, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneAnalysisTokenStream:withOrgApacheLuceneAnalysisTokenStream:);
  methods[1].selector = @selector(incrementToken);
  methods[2].selector = @selector(setCurrentTokenWithOrgApacheLuceneAnalysisToken:);
  methods[3].selector = @selector(getNextPrefixInputTokenWithOrgApacheLuceneAnalysisToken:);
  methods[4].selector = @selector(getNextSuffixInputTokenWithOrgApacheLuceneAnalysisToken:);
  methods[5].selector = @selector(updateSuffixTokenWithOrgApacheLuceneAnalysisToken:withOrgApacheLuceneAnalysisToken:);
  methods[6].selector = @selector(end);
  methods[7].selector = @selector(close);
  methods[8].selector = @selector(reset);
  methods[9].selector = @selector(getPrefix);
  methods[10].selector = @selector(setPrefixWithOrgApacheLuceneAnalysisTokenStream:);
  methods[11].selector = @selector(getSuffix);
  methods[12].selector = @selector(setSuffixWithOrgApacheLuceneAnalysisTokenStream:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "prefix_", "LOrgApacheLuceneAnalysisTokenStream;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "suffix_", "LOrgApacheLuceneAnalysisTokenStream;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "termAtt_", "LOrgApacheLuceneAnalysisTokenattributesCharTermAttribute;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "posIncrAtt_", "LOrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "payloadAtt_", "LOrgApacheLuceneAnalysisTokenattributesPayloadAttribute;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "offsetAtt_", "LOrgApacheLuceneAnalysisTokenattributesOffsetAttribute;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "typeAtt_", "LOrgApacheLuceneAnalysisTokenattributesTypeAttribute;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "flagsAtt_", "LOrgApacheLuceneAnalysisTokenattributesFlagsAttribute;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "p_termAtt_", "LOrgApacheLuceneAnalysisTokenattributesCharTermAttribute;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "p_posIncrAtt_", "LOrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "p_payloadAtt_", "LOrgApacheLuceneAnalysisTokenattributesPayloadAttribute;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "p_offsetAtt_", "LOrgApacheLuceneAnalysisTokenattributesOffsetAttribute;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "p_typeAtt_", "LOrgApacheLuceneAnalysisTokenattributesTypeAttribute;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "p_flagsAtt_", "LOrgApacheLuceneAnalysisTokenattributesFlagsAttribute;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "previousPrefixToken_", "LOrgApacheLuceneAnalysisToken;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "reusableToken_", "LOrgApacheLuceneAnalysisToken;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "prefixExhausted_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneAnalysisTokenStream;LOrgApacheLuceneAnalysisTokenStream;", "LJavaIoIOException;", "setCurrentToken", "LOrgApacheLuceneAnalysisToken;", "getNextPrefixInputToken", "getNextSuffixInputToken", "updateSuffixToken", "LOrgApacheLuceneAnalysisToken;LOrgApacheLuceneAnalysisToken;", "setPrefix", "LOrgApacheLuceneAnalysisTokenStream;", "setSuffix" };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisMiscellaneousPrefixAwareTokenFilter = { "PrefixAwareTokenFilter", "org.apache.lucene.analysis.miscellaneous", ptrTable, methods, fields, 7, 0x1, 13, 17, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneAnalysisMiscellaneousPrefixAwareTokenFilter;
}

@end

void OrgApacheLuceneAnalysisMiscellaneousPrefixAwareTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisMiscellaneousPrefixAwareTokenFilter *self, OrgApacheLuceneAnalysisTokenStream *prefix, OrgApacheLuceneAnalysisTokenStream *suffix) {
  OrgApacheLuceneAnalysisTokenStream_initWithOrgApacheLuceneUtilAttributeSource_(self, suffix);
  JreStrongAssignAndConsume(&self->previousPrefixToken_, new_OrgApacheLuceneAnalysisToken_init());
  JreStrongAssignAndConsume(&self->reusableToken_, new_OrgApacheLuceneAnalysisToken_init());
  JreStrongAssign(&self->suffix_, suffix);
  JreStrongAssign(&self->prefix_, prefix);
  self->prefixExhausted_ = false;
  JreStrongAssign(&self->termAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_()]);
  JreStrongAssign(&self->posIncrAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute_class_()]);
  JreStrongAssign(&self->payloadAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesPayloadAttribute_class_()]);
  JreStrongAssign(&self->offsetAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesOffsetAttribute_class_()]);
  JreStrongAssign(&self->typeAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesTypeAttribute_class_()]);
  JreStrongAssign(&self->flagsAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesFlagsAttribute_class_()]);
  JreStrongAssign(&self->p_termAtt_, [((OrgApacheLuceneAnalysisTokenStream *) nil_chk(prefix)) addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_()]);
  JreStrongAssign(&self->p_posIncrAtt_, [prefix addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute_class_()]);
  JreStrongAssign(&self->p_payloadAtt_, [prefix addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesPayloadAttribute_class_()]);
  JreStrongAssign(&self->p_offsetAtt_, [prefix addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesOffsetAttribute_class_()]);
  JreStrongAssign(&self->p_typeAtt_, [prefix addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesTypeAttribute_class_()]);
  JreStrongAssign(&self->p_flagsAtt_, [prefix addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesFlagsAttribute_class_()]);
}

OrgApacheLuceneAnalysisMiscellaneousPrefixAwareTokenFilter *new_OrgApacheLuceneAnalysisMiscellaneousPrefixAwareTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *prefix, OrgApacheLuceneAnalysisTokenStream *suffix) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisMiscellaneousPrefixAwareTokenFilter, initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisTokenStream_, prefix, suffix)
}

OrgApacheLuceneAnalysisMiscellaneousPrefixAwareTokenFilter *create_OrgApacheLuceneAnalysisMiscellaneousPrefixAwareTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *prefix, OrgApacheLuceneAnalysisTokenStream *suffix) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisMiscellaneousPrefixAwareTokenFilter, initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisTokenStream_, prefix, suffix)
}

void OrgApacheLuceneAnalysisMiscellaneousPrefixAwareTokenFilter_setCurrentTokenWithOrgApacheLuceneAnalysisToken_(OrgApacheLuceneAnalysisMiscellaneousPrefixAwareTokenFilter *self, OrgApacheLuceneAnalysisToken *token) {
  if (token == nil) return;
  [self clearAttributes];
  [((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) nil_chk(self->termAtt_)) copyBufferWithCharArray:[token buffer] withInt:0 withInt:[token java_length]];
  [((id<OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute>) nil_chk(self->posIncrAtt_)) setPositionIncrementWithInt:[token getPositionIncrement]];
  [((id<OrgApacheLuceneAnalysisTokenattributesFlagsAttribute>) nil_chk(self->flagsAtt_)) setFlagsWithInt:[token getFlags]];
  [((id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute>) nil_chk(self->offsetAtt_)) setOffsetWithInt:[token startOffset] withInt:[token endOffset]];
  [((id<OrgApacheLuceneAnalysisTokenattributesTypeAttribute>) nil_chk(self->typeAtt_)) setTypeWithNSString:[token type]];
  [((id<OrgApacheLuceneAnalysisTokenattributesPayloadAttribute>) nil_chk(self->payloadAtt_)) setPayloadWithOrgApacheLuceneUtilBytesRef:[token getPayload]];
}

OrgApacheLuceneAnalysisToken *OrgApacheLuceneAnalysisMiscellaneousPrefixAwareTokenFilter_getNextPrefixInputTokenWithOrgApacheLuceneAnalysisToken_(OrgApacheLuceneAnalysisMiscellaneousPrefixAwareTokenFilter *self, OrgApacheLuceneAnalysisToken *token) {
  if (![((OrgApacheLuceneAnalysisTokenStream *) nil_chk(self->prefix_)) incrementToken]) return nil;
  [((OrgApacheLuceneAnalysisToken *) nil_chk(token)) copyBufferWithCharArray:[((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) nil_chk(self->p_termAtt_)) buffer] withInt:0 withInt:[((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) nil_chk(self->p_termAtt_)) java_length]];
  [token setPositionIncrementWithInt:[((id<OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute>) nil_chk(self->p_posIncrAtt_)) getPositionIncrement]];
  [token setFlagsWithInt:[((id<OrgApacheLuceneAnalysisTokenattributesFlagsAttribute>) nil_chk(self->p_flagsAtt_)) getFlags]];
  [token setOffsetWithInt:[((id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute>) nil_chk(self->p_offsetAtt_)) startOffset] withInt:[((id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute>) nil_chk(self->p_offsetAtt_)) endOffset]];
  [token setTypeWithNSString:[((id<OrgApacheLuceneAnalysisTokenattributesTypeAttribute>) nil_chk(self->p_typeAtt_)) type]];
  [token setPayloadWithOrgApacheLuceneUtilBytesRef:[((id<OrgApacheLuceneAnalysisTokenattributesPayloadAttribute>) nil_chk(self->p_payloadAtt_)) getPayload]];
  return token;
}

OrgApacheLuceneAnalysisToken *OrgApacheLuceneAnalysisMiscellaneousPrefixAwareTokenFilter_getNextSuffixInputTokenWithOrgApacheLuceneAnalysisToken_(OrgApacheLuceneAnalysisMiscellaneousPrefixAwareTokenFilter *self, OrgApacheLuceneAnalysisToken *token) {
  if (![((OrgApacheLuceneAnalysisTokenStream *) nil_chk(self->suffix_)) incrementToken]) return nil;
  [((OrgApacheLuceneAnalysisToken *) nil_chk(token)) copyBufferWithCharArray:[((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) nil_chk(self->termAtt_)) buffer] withInt:0 withInt:[((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) nil_chk(self->termAtt_)) java_length]];
  [token setPositionIncrementWithInt:[((id<OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute>) nil_chk(self->posIncrAtt_)) getPositionIncrement]];
  [token setFlagsWithInt:[((id<OrgApacheLuceneAnalysisTokenattributesFlagsAttribute>) nil_chk(self->flagsAtt_)) getFlags]];
  [token setOffsetWithInt:[((id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute>) nil_chk(self->offsetAtt_)) startOffset] withInt:[((id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute>) nil_chk(self->offsetAtt_)) endOffset]];
  [token setTypeWithNSString:[((id<OrgApacheLuceneAnalysisTokenattributesTypeAttribute>) nil_chk(self->typeAtt_)) type]];
  [token setPayloadWithOrgApacheLuceneUtilBytesRef:[((id<OrgApacheLuceneAnalysisTokenattributesPayloadAttribute>) nil_chk(self->payloadAtt_)) getPayload]];
  return token;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisMiscellaneousPrefixAwareTokenFilter)
