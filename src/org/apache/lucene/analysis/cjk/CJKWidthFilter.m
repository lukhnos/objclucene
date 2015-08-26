//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/cjk/CJKWidthFilter.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "org/apache/lucene/analysis/TokenFilter.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/cjk/CJKWidthFilter.h"
#include "org/apache/lucene/analysis/tokenattributes/CharTermAttribute.h"
#include "org/apache/lucene/analysis/util/StemmerUtil.h"
#include "org/apache/lucene/util/AttributeSource.h"

@interface OrgApacheLuceneAnalysisCjkCJKWidthFilter () {
 @public
  id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute> termAtt_;
}

+ (jboolean)combineWithCharArray:(IOSCharArray *)text
                         withInt:(jint)pos
                        withChar:(jchar)ch;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisCjkCJKWidthFilter, termAtt_, id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>)

static IOSCharArray *OrgApacheLuceneAnalysisCjkCJKWidthFilter_KANA_NORM_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisCjkCJKWidthFilter, KANA_NORM_, IOSCharArray *)

static IOSByteArray *OrgApacheLuceneAnalysisCjkCJKWidthFilter_KANA_COMBINE_VOICED_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisCjkCJKWidthFilter, KANA_COMBINE_VOICED_, IOSByteArray *)

static IOSByteArray *OrgApacheLuceneAnalysisCjkCJKWidthFilter_KANA_COMBINE_HALF_VOICED_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisCjkCJKWidthFilter, KANA_COMBINE_HALF_VOICED_, IOSByteArray *)

__attribute__((unused)) static jboolean OrgApacheLuceneAnalysisCjkCJKWidthFilter_combineWithCharArray_withInt_withChar_(IOSCharArray *text, jint pos, jchar ch);

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneAnalysisCjkCJKWidthFilter)

@implementation OrgApacheLuceneAnalysisCjkCJKWidthFilter

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input {
  OrgApacheLuceneAnalysisCjkCJKWidthFilter_initWithOrgApacheLuceneAnalysisTokenStream_(self, input);
  return self;
}

- (jboolean)incrementToken {
  if ([((OrgApacheLuceneAnalysisTokenStream *) nil_chk(input_)) incrementToken]) {
    IOSCharArray *text = [((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) nil_chk(termAtt_)) buffer];
    jint length = [termAtt_ length];
    for (jint i = 0; i < length; i++) {
      jchar ch = IOSCharArray_Get(nil_chk(text), i);
      if (ch >= (jint) 0xFF01 && ch <= (jint) 0xFF5E) {
        *IOSCharArray_GetRef(text, i) -= (jint) 0xFEE0;
      }
      else if (ch >= (jint) 0xFF65 && ch <= (jint) 0xFF9F) {
        if ((ch == (jint) 0xFF9E || ch == (jint) 0xFF9F) && i > 0 && OrgApacheLuceneAnalysisCjkCJKWidthFilter_combineWithCharArray_withInt_withChar_(text, i, ch)) {
          length = OrgApacheLuceneAnalysisUtilStemmerUtil_delete__WithCharArray_withInt_withInt_(text, i--, length);
        }
        else {
          *IOSCharArray_GetRef(text, i) = IOSCharArray_Get(nil_chk(OrgApacheLuceneAnalysisCjkCJKWidthFilter_KANA_NORM_), ch - (jint) 0xFF65);
        }
      }
    }
    [termAtt_ setLengthWithInt:length];
    return YES;
  }
  else {
    return NO;
  }
}

+ (jboolean)combineWithCharArray:(IOSCharArray *)text
                         withInt:(jint)pos
                        withChar:(jchar)ch {
  return OrgApacheLuceneAnalysisCjkCJKWidthFilter_combineWithCharArray_withInt_withChar_(text, pos, ch);
}

- (void)dealloc {
  RELEASE_(termAtt_);
  [super dealloc];
}

+ (void)initialize {
  if (self == [OrgApacheLuceneAnalysisCjkCJKWidthFilter class]) {
    JreStrongAssignAndConsume(&OrgApacheLuceneAnalysisCjkCJKWidthFilter_KANA_NORM_, [IOSCharArray newArrayWithChars:(jchar[]){ (jint) 0x30fb, (jint) 0x30f2, (jint) 0x30a1, (jint) 0x30a3, (jint) 0x30a5, (jint) 0x30a7, (jint) 0x30a9, (jint) 0x30e3, (jint) 0x30e5, (jint) 0x30e7, (jint) 0x30c3, (jint) 0x30fc, (jint) 0x30a2, (jint) 0x30a4, (jint) 0x30a6, (jint) 0x30a8, (jint) 0x30aa, (jint) 0x30ab, (jint) 0x30ad, (jint) 0x30af, (jint) 0x30b1, (jint) 0x30b3, (jint) 0x30b5, (jint) 0x30b7, (jint) 0x30b9, (jint) 0x30bb, (jint) 0x30bd, (jint) 0x30bf, (jint) 0x30c1, (jint) 0x30c4, (jint) 0x30c6, (jint) 0x30c8, (jint) 0x30ca, (jint) 0x30cb, (jint) 0x30cc, (jint) 0x30cd, (jint) 0x30ce, (jint) 0x30cf, (jint) 0x30d2, (jint) 0x30d5, (jint) 0x30d8, (jint) 0x30db, (jint) 0x30de, (jint) 0x30df, (jint) 0x30e0, (jint) 0x30e1, (jint) 0x30e2, (jint) 0x30e4, (jint) 0x30e6, (jint) 0x30e8, (jint) 0x30e9, (jint) 0x30ea, (jint) 0x30eb, (jint) 0x30ec, (jint) 0x30ed, (jint) 0x30ef, (jint) 0x30f3, (jint) 0x3099, (jint) 0x309A } count:59]);
    JreStrongAssignAndConsume(&OrgApacheLuceneAnalysisCjkCJKWidthFilter_KANA_COMBINE_VOICED_, [IOSByteArray newArrayWithBytes:(jbyte[]){ 78, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 8, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1 } count:88]);
    JreStrongAssignAndConsume(&OrgApacheLuceneAnalysisCjkCJKWidthFilter_KANA_COMBINE_HALF_VOICED_, [IOSByteArray newArrayWithBytes:(jbyte[]){ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 2, 0, 0, 2, 0, 0, 2, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 } count:88]);
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneAnalysisCjkCJKWidthFilter)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneAnalysisTokenStream:", "CJKWidthFilter", NULL, 0x1, NULL, NULL },
    { "incrementToken", NULL, "Z", 0x1, "Ljava.io.IOException;", NULL },
    { "combineWithCharArray:withInt:withChar:", "combine", "Z", 0xa, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "termAtt_", NULL, 0x2, "Lorg.apache.lucene.analysis.tokenattributes.CharTermAttribute;", NULL, NULL, .constantValue.asLong = 0 },
    { "KANA_NORM_", NULL, 0x1a, "[C", &OrgApacheLuceneAnalysisCjkCJKWidthFilter_KANA_NORM_, NULL, .constantValue.asLong = 0 },
    { "KANA_COMBINE_VOICED_", NULL, 0x1a, "[B", &OrgApacheLuceneAnalysisCjkCJKWidthFilter_KANA_COMBINE_VOICED_, NULL, .constantValue.asLong = 0 },
    { "KANA_COMBINE_HALF_VOICED_", NULL, 0x1a, "[B", &OrgApacheLuceneAnalysisCjkCJKWidthFilter_KANA_COMBINE_HALF_VOICED_, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisCjkCJKWidthFilter = { 2, "CJKWidthFilter", "org.apache.lucene.analysis.cjk", NULL, 0x11, 3, methods, 4, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisCjkCJKWidthFilter;
}

@end

void OrgApacheLuceneAnalysisCjkCJKWidthFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisCjkCJKWidthFilter *self, OrgApacheLuceneAnalysisTokenStream *input) {
  OrgApacheLuceneAnalysisTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_(self, input);
  JreStrongAssign(&self->termAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_()]);
}

OrgApacheLuceneAnalysisCjkCJKWidthFilter *new_OrgApacheLuceneAnalysisCjkCJKWidthFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *input) {
  OrgApacheLuceneAnalysisCjkCJKWidthFilter *self = [OrgApacheLuceneAnalysisCjkCJKWidthFilter alloc];
  OrgApacheLuceneAnalysisCjkCJKWidthFilter_initWithOrgApacheLuceneAnalysisTokenStream_(self, input);
  return self;
}

jboolean OrgApacheLuceneAnalysisCjkCJKWidthFilter_combineWithCharArray_withInt_withChar_(IOSCharArray *text, jint pos, jchar ch) {
  OrgApacheLuceneAnalysisCjkCJKWidthFilter_initialize();
  jchar prev = IOSCharArray_Get(nil_chk(text), pos - 1);
  if (prev >= (jint) 0x30A6 && prev <= (jint) 0x30FD) {
    *IOSCharArray_GetRef(text, pos - 1) += (ch == (jint) 0xFF9F) ? IOSByteArray_Get(nil_chk(OrgApacheLuceneAnalysisCjkCJKWidthFilter_KANA_COMBINE_HALF_VOICED_), prev - (jint) 0x30A6) : IOSByteArray_Get(nil_chk(OrgApacheLuceneAnalysisCjkCJKWidthFilter_KANA_COMBINE_VOICED_), prev - (jint) 0x30A6);
    return IOSCharArray_Get(text, pos - 1) != prev;
  }
  return NO;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisCjkCJKWidthFilter)
