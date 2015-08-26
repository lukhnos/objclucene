//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/sr/SerbianNormalizationFilter.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/System.h"
#include "org/apache/lucene/analysis/TokenFilter.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/sr/SerbianNormalizationFilter.h"
#include "org/apache/lucene/analysis/tokenattributes/CharTermAttribute.h"
#include "org/apache/lucene/util/AttributeSource.h"

@interface OrgApacheLuceneAnalysisSrSerbianNormalizationFilter () {
 @public
  id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute> termAtt_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisSrSerbianNormalizationFilter, termAtt_, id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>)

@implementation OrgApacheLuceneAnalysisSrSerbianNormalizationFilter

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input {
  OrgApacheLuceneAnalysisSrSerbianNormalizationFilter_initWithOrgApacheLuceneAnalysisTokenStream_(self, input);
  return self;
}

- (jboolean)incrementToken {
  if ([((OrgApacheLuceneAnalysisTokenStream *) nil_chk(input_)) incrementToken]) {
    IOSCharArray *buffer = [((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) nil_chk(termAtt_)) buffer];
    jint length = [termAtt_ length];
    for (jint i = 0; i < length; i++) {
      jchar c = IOSCharArray_Get(nil_chk(buffer), i);
      switch (c) {
        case 0x0430:
        *IOSCharArray_GetRef(buffer, i) = 'a';
        break;
        case 0x0431:
        *IOSCharArray_GetRef(buffer, i) = 'b';
        break;
        case 0x0432:
        *IOSCharArray_GetRef(buffer, i) = 'v';
        break;
        case 0x0433:
        *IOSCharArray_GetRef(buffer, i) = 'g';
        break;
        case 0x0434:
        *IOSCharArray_GetRef(buffer, i) = 'd';
        break;
        case 0x0452:
        case 0x0111:
        buffer = [termAtt_ resizeBufferWithInt:1 + length];
        if (i < length) {
          JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(buffer, i, buffer, i + 1, (length - i));
        }
        *IOSCharArray_GetRef(nil_chk(buffer), i) = 'd';
        *IOSCharArray_GetRef(buffer, ++i) = 'j';
        length++;
        break;
        case 0x0435:
        *IOSCharArray_GetRef(nil_chk(buffer), i) = 'e';
        break;
        case 0x0436:
        case 0x0437:
        case 0x017e:
        *IOSCharArray_GetRef(nil_chk(buffer), i) = 'z';
        break;
        case 0x0438:
        *IOSCharArray_GetRef(nil_chk(buffer), i) = 'i';
        break;
        case 0x0458:
        *IOSCharArray_GetRef(nil_chk(buffer), i) = 'j';
        break;
        case 0x043a:
        *IOSCharArray_GetRef(nil_chk(buffer), i) = 'k';
        break;
        case 0x043b:
        *IOSCharArray_GetRef(nil_chk(buffer), i) = 'l';
        break;
        case 0x0459:
        buffer = [termAtt_ resizeBufferWithInt:1 + length];
        if (i < length) {
          JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(buffer, i, buffer, i + 1, (length - i));
        }
        *IOSCharArray_GetRef(nil_chk(buffer), i) = 'l';
        *IOSCharArray_GetRef(buffer, ++i) = 'j';
        length++;
        break;
        case 0x043c:
        *IOSCharArray_GetRef(nil_chk(buffer), i) = 'm';
        break;
        case 0x043d:
        *IOSCharArray_GetRef(nil_chk(buffer), i) = 'n';
        break;
        case 0x045a:
        buffer = [termAtt_ resizeBufferWithInt:1 + length];
        if (i < length) {
          JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(buffer, i, buffer, i + 1, (length - i));
        }
        *IOSCharArray_GetRef(nil_chk(buffer), i) = 'n';
        *IOSCharArray_GetRef(buffer, ++i) = 'j';
        length++;
        break;
        case 0x043e:
        *IOSCharArray_GetRef(nil_chk(buffer), i) = 'o';
        break;
        case 0x043f:
        *IOSCharArray_GetRef(nil_chk(buffer), i) = 'p';
        break;
        case 0x0440:
        *IOSCharArray_GetRef(nil_chk(buffer), i) = 'r';
        break;
        case 0x0441:
        *IOSCharArray_GetRef(nil_chk(buffer), i) = 's';
        break;
        case 0x0442:
        *IOSCharArray_GetRef(nil_chk(buffer), i) = 't';
        break;
        case 0x045b:
        case 0x0446:
        case 0x0447:
        case 0x010d:
        case 0x0107:
        *IOSCharArray_GetRef(nil_chk(buffer), i) = 'c';
        break;
        case 0x0443:
        *IOSCharArray_GetRef(nil_chk(buffer), i) = 'u';
        break;
        case 0x0444:
        *IOSCharArray_GetRef(nil_chk(buffer), i) = 'f';
        break;
        case 0x0445:
        *IOSCharArray_GetRef(nil_chk(buffer), i) = 'h';
        break;
        case 0x045f:
        buffer = [termAtt_ resizeBufferWithInt:1 + length];
        if (i < length) {
          JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(buffer, i, buffer, i + 1, (length - i));
        }
        *IOSCharArray_GetRef(nil_chk(buffer), i) = 'd';
        *IOSCharArray_GetRef(buffer, ++i) = 'z';
        length++;
        break;
        case 0x0448:
        case 0x0161:
        *IOSCharArray_GetRef(nil_chk(buffer), i) = 's';
        break;
        default:
        break;
      }
    }
    [termAtt_ setLengthWithInt:length];
    return YES;
  }
  else {
    return NO;
  }
}

- (void)dealloc {
  RELEASE_(termAtt_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneAnalysisTokenStream:", "SerbianNormalizationFilter", NULL, 0x1, NULL, NULL },
    { "incrementToken", NULL, "Z", 0x1, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "termAtt_", NULL, 0x12, "Lorg.apache.lucene.analysis.tokenattributes.CharTermAttribute;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisSrSerbianNormalizationFilter = { 2, "SerbianNormalizationFilter", "org.apache.lucene.analysis.sr", NULL, 0x11, 2, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisSrSerbianNormalizationFilter;
}

@end

void OrgApacheLuceneAnalysisSrSerbianNormalizationFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisSrSerbianNormalizationFilter *self, OrgApacheLuceneAnalysisTokenStream *input) {
  OrgApacheLuceneAnalysisTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_(self, input);
  JreStrongAssign(&self->termAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_()]);
}

OrgApacheLuceneAnalysisSrSerbianNormalizationFilter *new_OrgApacheLuceneAnalysisSrSerbianNormalizationFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *input) {
  OrgApacheLuceneAnalysisSrSerbianNormalizationFilter *self = [OrgApacheLuceneAnalysisSrSerbianNormalizationFilter alloc];
  OrgApacheLuceneAnalysisSrSerbianNormalizationFilter_initWithOrgApacheLuceneAnalysisTokenStream_(self, input);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisSrSerbianNormalizationFilter)
