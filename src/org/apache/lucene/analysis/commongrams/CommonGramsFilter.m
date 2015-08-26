//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/commongrams/CommonGramsFilter.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/StringBuilder.h"
#include "org/apache/lucene/analysis/TokenFilter.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/commongrams/CommonGramsFilter.h"
#include "org/apache/lucene/analysis/tokenattributes/CharTermAttribute.h"
#include "org/apache/lucene/analysis/tokenattributes/OffsetAttribute.h"
#include "org/apache/lucene/analysis/tokenattributes/PositionIncrementAttribute.h"
#include "org/apache/lucene/analysis/tokenattributes/PositionLengthAttribute.h"
#include "org/apache/lucene/analysis/tokenattributes/TypeAttribute.h"
#include "org/apache/lucene/analysis/util/CharArraySet.h"
#include "org/apache/lucene/util/AttributeSource.h"

#define OrgApacheLuceneAnalysisCommongramsCommonGramsFilter_SEPARATOR '_'

@interface OrgApacheLuceneAnalysisCommongramsCommonGramsFilter () {
 @public
  OrgApacheLuceneAnalysisUtilCharArraySet *commonWords_;
  JavaLangStringBuilder *buffer_;
  id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute> termAttribute_;
  id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute> offsetAttribute_;
  id<OrgApacheLuceneAnalysisTokenattributesTypeAttribute> typeAttribute_;
  id<OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute> posIncAttribute_;
  id<OrgApacheLuceneAnalysisTokenattributesPositionLengthAttribute> posLenAttribute_;
  jint lastStartOffset_;
  jboolean lastWasCommon_;
  OrgApacheLuceneUtilAttributeSource_State *savedState_;
}

- (jboolean)isCommon;

- (void)saveTermBuffer;

- (void)gramToken;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisCommongramsCommonGramsFilter, commonWords_, OrgApacheLuceneAnalysisUtilCharArraySet *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisCommongramsCommonGramsFilter, buffer_, JavaLangStringBuilder *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisCommongramsCommonGramsFilter, termAttribute_, id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisCommongramsCommonGramsFilter, offsetAttribute_, id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisCommongramsCommonGramsFilter, typeAttribute_, id<OrgApacheLuceneAnalysisTokenattributesTypeAttribute>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisCommongramsCommonGramsFilter, posIncAttribute_, id<OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisCommongramsCommonGramsFilter, posLenAttribute_, id<OrgApacheLuceneAnalysisTokenattributesPositionLengthAttribute>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisCommongramsCommonGramsFilter, savedState_, OrgApacheLuceneUtilAttributeSource_State *)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisCommongramsCommonGramsFilter, SEPARATOR, jchar)

__attribute__((unused)) static jboolean OrgApacheLuceneAnalysisCommongramsCommonGramsFilter_isCommon(OrgApacheLuceneAnalysisCommongramsCommonGramsFilter *self);

__attribute__((unused)) static void OrgApacheLuceneAnalysisCommongramsCommonGramsFilter_saveTermBuffer(OrgApacheLuceneAnalysisCommongramsCommonGramsFilter *self);

__attribute__((unused)) static void OrgApacheLuceneAnalysisCommongramsCommonGramsFilter_gramToken(OrgApacheLuceneAnalysisCommongramsCommonGramsFilter *self);

NSString *OrgApacheLuceneAnalysisCommongramsCommonGramsFilter_GRAM_TYPE_ = @"gram";

@implementation OrgApacheLuceneAnalysisCommongramsCommonGramsFilter

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input
               withOrgApacheLuceneAnalysisUtilCharArraySet:(OrgApacheLuceneAnalysisUtilCharArraySet *)commonWords {
  OrgApacheLuceneAnalysisCommongramsCommonGramsFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_(self, input, commonWords);
  return self;
}

- (jboolean)incrementToken {
  if (savedState_ != nil) {
    [self restoreStateWithOrgApacheLuceneUtilAttributeSource_State:savedState_];
    JreStrongAssign(&savedState_, nil);
    OrgApacheLuceneAnalysisCommongramsCommonGramsFilter_saveTermBuffer(self);
    return YES;
  }
  else if (![((OrgApacheLuceneAnalysisTokenStream *) nil_chk(input_)) incrementToken]) {
    return NO;
  }
  if (lastWasCommon_ || (OrgApacheLuceneAnalysisCommongramsCommonGramsFilter_isCommon(self) && [((JavaLangStringBuilder *) nil_chk(buffer_)) length] > 0)) {
    JreStrongAssign(&savedState_, [self captureState]);
    OrgApacheLuceneAnalysisCommongramsCommonGramsFilter_gramToken(self);
    return YES;
  }
  OrgApacheLuceneAnalysisCommongramsCommonGramsFilter_saveTermBuffer(self);
  return YES;
}

- (void)reset {
  [super reset];
  lastWasCommon_ = NO;
  JreStrongAssign(&savedState_, nil);
  [((JavaLangStringBuilder *) nil_chk(buffer_)) setLengthWithInt:0];
}

- (jboolean)isCommon {
  return OrgApacheLuceneAnalysisCommongramsCommonGramsFilter_isCommon(self);
}

- (void)saveTermBuffer {
  OrgApacheLuceneAnalysisCommongramsCommonGramsFilter_saveTermBuffer(self);
}

- (void)gramToken {
  OrgApacheLuceneAnalysisCommongramsCommonGramsFilter_gramToken(self);
}

- (void)dealloc {
  RELEASE_(commonWords_);
  RELEASE_(buffer_);
  RELEASE_(termAttribute_);
  RELEASE_(offsetAttribute_);
  RELEASE_(typeAttribute_);
  RELEASE_(posIncAttribute_);
  RELEASE_(posLenAttribute_);
  RELEASE_(savedState_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneAnalysisTokenStream:withOrgApacheLuceneAnalysisUtilCharArraySet:", "CommonGramsFilter", NULL, 0x1, NULL, NULL },
    { "incrementToken", NULL, "Z", 0x1, "Ljava.io.IOException;", NULL },
    { "reset", NULL, "V", 0x1, "Ljava.io.IOException;", NULL },
    { "isCommon", NULL, "Z", 0x2, NULL, NULL },
    { "saveTermBuffer", NULL, "V", 0x2, NULL, NULL },
    { "gramToken", NULL, "V", 0x2, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "GRAM_TYPE_", NULL, 0x19, "Ljava.lang.String;", &OrgApacheLuceneAnalysisCommongramsCommonGramsFilter_GRAM_TYPE_, NULL, .constantValue.asLong = 0 },
    { "SEPARATOR", "SEPARATOR", 0x1a, "C", NULL, NULL, .constantValue.asUnichar = OrgApacheLuceneAnalysisCommongramsCommonGramsFilter_SEPARATOR },
    { "commonWords_", NULL, 0x12, "Lorg.apache.lucene.analysis.util.CharArraySet;", NULL, NULL, .constantValue.asLong = 0 },
    { "buffer_", NULL, 0x12, "Ljava.lang.StringBuilder;", NULL, NULL, .constantValue.asLong = 0 },
    { "termAttribute_", NULL, 0x12, "Lorg.apache.lucene.analysis.tokenattributes.CharTermAttribute;", NULL, NULL, .constantValue.asLong = 0 },
    { "offsetAttribute_", NULL, 0x12, "Lorg.apache.lucene.analysis.tokenattributes.OffsetAttribute;", NULL, NULL, .constantValue.asLong = 0 },
    { "typeAttribute_", NULL, 0x12, "Lorg.apache.lucene.analysis.tokenattributes.TypeAttribute;", NULL, NULL, .constantValue.asLong = 0 },
    { "posIncAttribute_", NULL, 0x12, "Lorg.apache.lucene.analysis.tokenattributes.PositionIncrementAttribute;", NULL, NULL, .constantValue.asLong = 0 },
    { "posLenAttribute_", NULL, 0x12, "Lorg.apache.lucene.analysis.tokenattributes.PositionLengthAttribute;", NULL, NULL, .constantValue.asLong = 0 },
    { "lastStartOffset_", NULL, 0x2, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "lastWasCommon_", NULL, 0x2, "Z", NULL, NULL, .constantValue.asLong = 0 },
    { "savedState_", NULL, 0x2, "Lorg.apache.lucene.util.AttributeSource$State;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisCommongramsCommonGramsFilter = { 2, "CommonGramsFilter", "org.apache.lucene.analysis.commongrams", NULL, 0x11, 6, methods, 12, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisCommongramsCommonGramsFilter;
}

@end

void OrgApacheLuceneAnalysisCommongramsCommonGramsFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisCommongramsCommonGramsFilter *self, OrgApacheLuceneAnalysisTokenStream *input, OrgApacheLuceneAnalysisUtilCharArraySet *commonWords) {
  OrgApacheLuceneAnalysisTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_(self, input);
  JreStrongAssignAndConsume(&self->buffer_, new_JavaLangStringBuilder_init());
  JreStrongAssign(&self->termAttribute_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_()]);
  JreStrongAssign(&self->offsetAttribute_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesOffsetAttribute_class_()]);
  JreStrongAssign(&self->typeAttribute_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesTypeAttribute_class_()]);
  JreStrongAssign(&self->posIncAttribute_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute_class_()]);
  JreStrongAssign(&self->posLenAttribute_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesPositionLengthAttribute_class_()]);
  JreStrongAssign(&self->commonWords_, commonWords);
}

OrgApacheLuceneAnalysisCommongramsCommonGramsFilter *new_OrgApacheLuceneAnalysisCommongramsCommonGramsFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_(OrgApacheLuceneAnalysisTokenStream *input, OrgApacheLuceneAnalysisUtilCharArraySet *commonWords) {
  OrgApacheLuceneAnalysisCommongramsCommonGramsFilter *self = [OrgApacheLuceneAnalysisCommongramsCommonGramsFilter alloc];
  OrgApacheLuceneAnalysisCommongramsCommonGramsFilter_initWithOrgApacheLuceneAnalysisTokenStream_withOrgApacheLuceneAnalysisUtilCharArraySet_(self, input, commonWords);
  return self;
}

jboolean OrgApacheLuceneAnalysisCommongramsCommonGramsFilter_isCommon(OrgApacheLuceneAnalysisCommongramsCommonGramsFilter *self) {
  return self->commonWords_ != nil && [self->commonWords_ containsWithCharArray:[((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) nil_chk(self->termAttribute_)) buffer] withInt:0 withInt:[self->termAttribute_ length]];
}

void OrgApacheLuceneAnalysisCommongramsCommonGramsFilter_saveTermBuffer(OrgApacheLuceneAnalysisCommongramsCommonGramsFilter *self) {
  [((JavaLangStringBuilder *) nil_chk(self->buffer_)) setLengthWithInt:0];
  [self->buffer_ appendWithCharArray:[((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) nil_chk(self->termAttribute_)) buffer] withInt:0 withInt:[self->termAttribute_ length]];
  [self->buffer_ appendWithChar:OrgApacheLuceneAnalysisCommongramsCommonGramsFilter_SEPARATOR];
  self->lastStartOffset_ = [((id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute>) nil_chk(self->offsetAttribute_)) startOffset];
  self->lastWasCommon_ = OrgApacheLuceneAnalysisCommongramsCommonGramsFilter_isCommon(self);
}

void OrgApacheLuceneAnalysisCommongramsCommonGramsFilter_gramToken(OrgApacheLuceneAnalysisCommongramsCommonGramsFilter *self) {
  [((JavaLangStringBuilder *) nil_chk(self->buffer_)) appendWithCharArray:[((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) nil_chk(self->termAttribute_)) buffer] withInt:0 withInt:[self->termAttribute_ length]];
  jint endOffset = [((id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute>) nil_chk(self->offsetAttribute_)) endOffset];
  [self clearAttributes];
  jint length = [self->buffer_ length];
  IOSCharArray *termText = [self->termAttribute_ buffer];
  if (length > ((IOSCharArray *) nil_chk(termText))->size_) {
    termText = [self->termAttribute_ resizeBufferWithInt:length];
  }
  [self->buffer_ getCharsWithInt:0 withInt:length withCharArray:termText withInt:0];
  [self->termAttribute_ setLengthWithInt:length];
  [((id<OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute>) nil_chk(self->posIncAttribute_)) setPositionIncrementWithInt:0];
  [((id<OrgApacheLuceneAnalysisTokenattributesPositionLengthAttribute>) nil_chk(self->posLenAttribute_)) setPositionLengthWithInt:2];
  [self->offsetAttribute_ setOffsetWithInt:self->lastStartOffset_ withInt:endOffset];
  [((id<OrgApacheLuceneAnalysisTokenattributesTypeAttribute>) nil_chk(self->typeAttribute_)) setTypeWithNSString:OrgApacheLuceneAnalysisCommongramsCommonGramsFilter_GRAM_TYPE_];
  [self->buffer_ setLengthWithInt:0];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisCommongramsCommonGramsFilter)
