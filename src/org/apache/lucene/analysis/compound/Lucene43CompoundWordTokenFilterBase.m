//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/compound/Lucene43CompoundWordTokenFilterBase.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/CharSequence.h"
#include "java/lang/Deprecated.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/util/LinkedList.h"
#include "org/apache/lucene/analysis/TokenFilter.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/compound/Lucene43CompoundWordTokenFilterBase.h"
#include "org/apache/lucene/analysis/tokenattributes/CharTermAttribute.h"
#include "org/apache/lucene/analysis/tokenattributes/OffsetAttribute.h"
#include "org/apache/lucene/analysis/tokenattributes/PositionIncrementAttribute.h"
#include "org/apache/lucene/analysis/util/CharArraySet.h"
#include "org/apache/lucene/util/AttributeSource.h"

@interface OrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase () {
 @public
  id<OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute> posIncAtt_;
  OrgApacheLuceneUtilAttributeSource_State *current_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase, posIncAtt_, id<OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase, current_, OrgApacheLuceneUtilAttributeSource_State *)

@implementation OrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input
               withOrgApacheLuceneAnalysisUtilCharArraySet:(OrgApacheLuceneAnalysisUtilCharArraySet *)dictionary
                                               withBoolean:(jboolean)onlyLongestMatch {
  OrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_withBoolean_(self, input, dictionary, onlyLongestMatch);
  return self;
}

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input
               withOrgApacheLuceneAnalysisUtilCharArraySet:(OrgApacheLuceneAnalysisUtilCharArraySet *)dictionary {
  OrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_(self, input, dictionary);
  return self;
}

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input
               withOrgApacheLuceneAnalysisUtilCharArraySet:(OrgApacheLuceneAnalysisUtilCharArraySet *)dictionary
                                                   withInt:(jint)minWordSize
                                                   withInt:(jint)minSubwordSize
                                                   withInt:(jint)maxSubwordSize
                                               withBoolean:(jboolean)onlyLongestMatch {
  OrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_withInt_withInt_withInt_withBoolean_(self, input, dictionary, minWordSize, minSubwordSize, maxSubwordSize, onlyLongestMatch);
  return self;
}

- (jboolean)incrementToken {
  if (![((JavaUtilLinkedList *) nil_chk(tokens_)) isEmpty]) {
    JreAssert((current_ != nil), (@"org/apache/lucene/analysis/compound/Lucene43CompoundWordTokenFilterBase.java:96 condition failed: assert current != null;"));
    OrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase_CompoundToken *token = [tokens_ removeFirst];
    [self restoreStateWithOrgApacheLuceneUtilAttributeSource_State:current_];
    [((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) nil_chk([((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) nil_chk(termAtt_)) setEmpty])) appendWithJavaLangCharSequence:((OrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase_CompoundToken *) nil_chk(token))->txt_];
    [((id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute>) nil_chk(offsetAtt_)) setOffsetWithInt:token->startOffset_ withInt:token->endOffset_];
    [((id<OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute>) nil_chk(posIncAtt_)) setPositionIncrementWithInt:0];
    return YES;
  }
  JreStrongAssign(&current_, nil);
  if ([((OrgApacheLuceneAnalysisTokenStream *) nil_chk(input_)) incrementToken]) {
    if ([((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) nil_chk(termAtt_)) length] >= self->minWordSize_) {
      [self decompose];
      if (![tokens_ isEmpty]) {
        JreStrongAssign(&current_, [self captureState]);
      }
    }
    return YES;
  }
  else {
    return NO;
  }
}

- (void)decompose {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)reset {
  [super reset];
  [((JavaUtilLinkedList *) nil_chk(tokens_)) clear];
  JreStrongAssign(&current_, nil);
}

- (void)dealloc {
  RELEASE_(dictionary_);
  RELEASE_(tokens_);
  RELEASE_(termAtt_);
  RELEASE_(offsetAtt_);
  RELEASE_(posIncAtt_);
  RELEASE_(current_);
  [super dealloc];
}

+ (IOSObjectArray *)__annotations {
  return [IOSObjectArray arrayWithObjects:(id[]) { [[[JavaLangDeprecated alloc] init] autorelease] } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneAnalysisTokenStream:withOrgApacheLuceneAnalysisUtilCharArraySet:withBoolean:", "Lucene43CompoundWordTokenFilterBase", NULL, 0x4, NULL, NULL },
    { "initWithOrgApacheLuceneAnalysisTokenStream:withOrgApacheLuceneAnalysisUtilCharArraySet:", "Lucene43CompoundWordTokenFilterBase", NULL, 0x4, NULL, NULL },
    { "initWithOrgApacheLuceneAnalysisTokenStream:withOrgApacheLuceneAnalysisUtilCharArraySet:withInt:withInt:withInt:withBoolean:", "Lucene43CompoundWordTokenFilterBase", NULL, 0x4, NULL, NULL },
    { "incrementToken", NULL, "Z", 0x11, "Ljava.io.IOException;", NULL },
    { "decompose", NULL, "V", 0x404, NULL, NULL },
    { "reset", NULL, "V", 0x1, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "DEFAULT_MIN_WORD_SIZE", "DEFAULT_MIN_WORD_SIZE", 0x19, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase_DEFAULT_MIN_WORD_SIZE },
    { "DEFAULT_MIN_SUBWORD_SIZE", "DEFAULT_MIN_SUBWORD_SIZE", 0x19, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase_DEFAULT_MIN_SUBWORD_SIZE },
    { "DEFAULT_MAX_SUBWORD_SIZE", "DEFAULT_MAX_SUBWORD_SIZE", 0x19, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase_DEFAULT_MAX_SUBWORD_SIZE },
    { "dictionary_", NULL, 0x14, "Lorg.apache.lucene.analysis.util.CharArraySet;", NULL, NULL, .constantValue.asLong = 0 },
    { "tokens_", NULL, 0x14, "Ljava.util.LinkedList;", NULL, "Ljava/util/LinkedList<Lorg/apache/lucene/analysis/compound/Lucene43CompoundWordTokenFilterBase$CompoundToken;>;", .constantValue.asLong = 0 },
    { "minWordSize_", NULL, 0x14, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "minSubwordSize_", NULL, 0x14, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "maxSubwordSize_", NULL, 0x14, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "onlyLongestMatch_", NULL, 0x14, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "termAtt_", NULL, 0x14, "Lorg.apache.lucene.analysis.tokenattributes.CharTermAttribute;", NULL, NULL, .constantValue.asLong = 0 },
    { "offsetAtt_", NULL, 0x14, "Lorg.apache.lucene.analysis.tokenattributes.OffsetAttribute;", NULL, NULL, .constantValue.asLong = 0 },
    { "posIncAtt_", NULL, 0x12, "Lorg.apache.lucene.analysis.tokenattributes.PositionIncrementAttribute;", NULL, NULL, .constantValue.asLong = 0 },
    { "current_", NULL, 0x2, "Lorg.apache.lucene.util.AttributeSource$State;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.analysis.compound.Lucene43CompoundWordTokenFilterBase$CompoundToken;"};
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase = { 2, "Lucene43CompoundWordTokenFilterBase", "org.apache.lucene.analysis.compound", NULL, 0x401, 6, methods, 13, fields, 0, NULL, 1, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase;
}

@end

void OrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_withBoolean_(OrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase *self, OrgApacheLuceneAnalysisTokenStream *input, OrgApacheLuceneAnalysisUtilCharArraySet *dictionary, jboolean onlyLongestMatch) {
  OrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_withInt_withInt_withInt_withBoolean_(self, input, dictionary, OrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase_DEFAULT_MIN_WORD_SIZE, OrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase_DEFAULT_MIN_SUBWORD_SIZE, OrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase_DEFAULT_MAX_SUBWORD_SIZE, onlyLongestMatch);
}

void OrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase *self, OrgApacheLuceneAnalysisTokenStream *input, OrgApacheLuceneAnalysisUtilCharArraySet *dictionary) {
  OrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_withInt_withInt_withInt_withBoolean_(self, input, dictionary, OrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase_DEFAULT_MIN_WORD_SIZE, OrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase_DEFAULT_MIN_SUBWORD_SIZE, OrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase_DEFAULT_MAX_SUBWORD_SIZE, NO);
}

void OrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_withInt_withInt_withInt_withBoolean_(OrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase *self, OrgApacheLuceneAnalysisTokenStream *input, OrgApacheLuceneAnalysisUtilCharArraySet *dictionary, jint minWordSize, jint minSubwordSize, jint maxSubwordSize, jboolean onlyLongestMatch) {
  OrgApacheLuceneAnalysisTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_(self, input);
  JreStrongAssign(&self->termAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_()]);
  JreStrongAssign(&self->offsetAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesOffsetAttribute_class_()]);
  JreStrongAssign(&self->posIncAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute_class_()]);
  JreStrongAssignAndConsume(&self->tokens_, new_JavaUtilLinkedList_init());
  if (minWordSize < 0) {
    @throw [new_JavaLangIllegalArgumentException_initWithNSString_(@"minWordSize cannot be negative") autorelease];
  }
  self->minWordSize_ = minWordSize;
  if (minSubwordSize < 0) {
    @throw [new_JavaLangIllegalArgumentException_initWithNSString_(@"minSubwordSize cannot be negative") autorelease];
  }
  self->minSubwordSize_ = minSubwordSize;
  if (maxSubwordSize < 0) {
    @throw [new_JavaLangIllegalArgumentException_initWithNSString_(@"maxSubwordSize cannot be negative") autorelease];
  }
  self->maxSubwordSize_ = maxSubwordSize;
  self->onlyLongestMatch_ = onlyLongestMatch;
  JreStrongAssign(&self->dictionary_, dictionary);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase)

@implementation OrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase_CompoundToken

- (instancetype)initWithOrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase:(OrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase *)outer$
                                                                                   withInt:(jint)offset
                                                                                   withInt:(jint)length {
  OrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase_CompoundToken_initWithOrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase_withInt_withInt_(self, outer$, offset, length);
  return self;
}

- (void)dealloc {
  RELEASE_(txt_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase:withInt:withInt:", "CompoundToken", NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "txt_", NULL, 0x11, "Ljava.lang.CharSequence;", NULL, NULL, .constantValue.asLong = 0 },
    { "startOffset_", NULL, 0x11, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "endOffset_", NULL, 0x11, "I", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase_CompoundToken = { 2, "CompoundToken", "org.apache.lucene.analysis.compound", "Lucene43CompoundWordTokenFilterBase", 0x4, 1, methods, 3, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase_CompoundToken;
}

@end

void OrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase_CompoundToken_initWithOrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase_withInt_withInt_(OrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase_CompoundToken *self, OrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase *outer$, jint offset, jint length) {
  NSObject_init(self);
  JreStrongAssign(&self->txt_, [((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) nil_chk(outer$->termAtt_)) subSequenceFrom:offset to:offset + length]);
  jint startOff = [((id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute>) nil_chk(outer$->offsetAtt_)) startOffset];
  jint endOff = [outer$->offsetAtt_ endOffset];
  if (endOff - startOff != [outer$->termAtt_ length]) {
    self->startOffset_ = startOff;
    self->endOffset_ = endOff;
  }
  else {
    jint newStart = startOff + offset;
    self->startOffset_ = newStart;
    self->endOffset_ = newStart + length;
  }
}

OrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase_CompoundToken *new_OrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase_CompoundToken_initWithOrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase_withInt_withInt_(OrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase *outer$, jint offset, jint length) {
  OrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase_CompoundToken *self = [OrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase_CompoundToken alloc];
  OrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase_CompoundToken_initWithOrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase_withInt_withInt_(self, outer$, offset, length);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisCompoundLucene43CompoundWordTokenFilterBase_CompoundToken)