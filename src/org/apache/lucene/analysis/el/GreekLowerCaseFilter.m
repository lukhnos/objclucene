//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/el/GreekLowerCaseFilter.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/Character.h"
#include "org/apache/lucene/analysis/TokenFilter.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/el/GreekLowerCaseFilter.h"
#include "org/apache/lucene/analysis/tokenattributes/CharTermAttribute.h"
#include "org/apache/lucene/analysis/util/CharacterUtils.h"
#include "org/apache/lucene/util/AttributeSource.h"

@interface OrgApacheLuceneAnalysisElGreekLowerCaseFilter () {
 @public
  id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute> termAtt_;
  OrgApacheLuceneAnalysisUtilCharacterUtils *charUtils_;
}

- (jint)lowerCaseWithInt:(jint)codepoint;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisElGreekLowerCaseFilter, termAtt_, id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisElGreekLowerCaseFilter, charUtils_, OrgApacheLuceneAnalysisUtilCharacterUtils *)

__attribute__((unused)) static jint OrgApacheLuceneAnalysisElGreekLowerCaseFilter_lowerCaseWithInt_(OrgApacheLuceneAnalysisElGreekLowerCaseFilter *self, jint codepoint);

@implementation OrgApacheLuceneAnalysisElGreekLowerCaseFilter

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)inArg {
  OrgApacheLuceneAnalysisElGreekLowerCaseFilter_initWithOrgApacheLuceneAnalysisTokenStream_(self, inArg);
  return self;
}

- (jboolean)incrementToken {
  if ([((OrgApacheLuceneAnalysisTokenStream *) nil_chk(input_)) incrementToken]) {
    IOSCharArray *chArray = [((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) nil_chk(termAtt_)) buffer];
    jint chLen = [termAtt_ length];
    for (jint i = 0; i < chLen; ) {
      i += JavaLangCharacter_toCharsWithInt_withCharArray_withInt_(OrgApacheLuceneAnalysisElGreekLowerCaseFilter_lowerCaseWithInt_(self, [((OrgApacheLuceneAnalysisUtilCharacterUtils *) nil_chk(charUtils_)) codePointAtWithCharArray:chArray withInt:i withInt:chLen]), chArray, i);
    }
    return YES;
  }
  else {
    return NO;
  }
}

- (jint)lowerCaseWithInt:(jint)codepoint {
  return OrgApacheLuceneAnalysisElGreekLowerCaseFilter_lowerCaseWithInt_(self, codepoint);
}

- (void)dealloc {
  RELEASE_(termAtt_);
  RELEASE_(charUtils_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneAnalysisTokenStream:", "GreekLowerCaseFilter", NULL, 0x1, NULL, NULL },
    { "incrementToken", NULL, "Z", 0x1, "Ljava.io.IOException;", NULL },
    { "lowerCaseWithInt:", "lowerCase", "I", 0x2, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "termAtt_", NULL, 0x12, "Lorg.apache.lucene.analysis.tokenattributes.CharTermAttribute;", NULL, NULL, .constantValue.asLong = 0 },
    { "charUtils_", NULL, 0x12, "Lorg.apache.lucene.analysis.util.CharacterUtils;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisElGreekLowerCaseFilter = { 2, "GreekLowerCaseFilter", "org.apache.lucene.analysis.el", NULL, 0x11, 3, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisElGreekLowerCaseFilter;
}

@end

void OrgApacheLuceneAnalysisElGreekLowerCaseFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisElGreekLowerCaseFilter *self, OrgApacheLuceneAnalysisTokenStream *inArg) {
  OrgApacheLuceneAnalysisTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_(self, inArg);
  JreStrongAssign(&self->termAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_()]);
  JreStrongAssign(&self->charUtils_, OrgApacheLuceneAnalysisUtilCharacterUtils_getInstance());
}

OrgApacheLuceneAnalysisElGreekLowerCaseFilter *new_OrgApacheLuceneAnalysisElGreekLowerCaseFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *inArg) {
  OrgApacheLuceneAnalysisElGreekLowerCaseFilter *self = [OrgApacheLuceneAnalysisElGreekLowerCaseFilter alloc];
  OrgApacheLuceneAnalysisElGreekLowerCaseFilter_initWithOrgApacheLuceneAnalysisTokenStream_(self, inArg);
  return self;
}

jint OrgApacheLuceneAnalysisElGreekLowerCaseFilter_lowerCaseWithInt_(OrgApacheLuceneAnalysisElGreekLowerCaseFilter *self, jint codepoint) {
  switch (codepoint) {
    case 0x03c2:
    return 0x03c3;
    case 0x0386:
    case 0x03ac:
    return 0x03b1;
    case 0x0388:
    case 0x03ad:
    return 0x03b5;
    case 0x0389:
    case 0x03ae:
    return 0x03b7;
    case 0x038a:
    case 0x03aa:
    case 0x03af:
    case 0x03ca:
    case 0x0390:
    return 0x03b9;
    case 0x038e:
    case 0x03ab:
    case 0x03cd:
    case 0x03cb:
    case 0x03b0:
    return 0x03c5;
    case 0x038c:
    case 0x03cc:
    return 0x03bf;
    case 0x038f:
    case 0x03ce:
    return 0x03c9;
    case 0x03a2:
    return 0x03c2;
    default:
    return JavaLangCharacter_toLowerCaseWithInt_(codepoint);
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisElGreekLowerCaseFilter)
