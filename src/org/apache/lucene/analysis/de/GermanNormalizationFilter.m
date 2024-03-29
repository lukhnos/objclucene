//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/de/GermanNormalizationFilter.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/System.h"
#include "org/apache/lucene/analysis/TokenFilter.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/de/GermanNormalizationFilter.h"
#include "org/apache/lucene/analysis/tokenattributes/CharTermAttribute.h"
#include "org/apache/lucene/analysis/util/StemmerUtil.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/analysis/de/GermanNormalizationFilter must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneAnalysisDeGermanNormalizationFilter () {
 @public
  id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute> termAtt_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisDeGermanNormalizationFilter, termAtt_, id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>)

inline jint OrgApacheLuceneAnalysisDeGermanNormalizationFilter_get_N(void);
#define OrgApacheLuceneAnalysisDeGermanNormalizationFilter_N 0
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisDeGermanNormalizationFilter, N, jint)

inline jint OrgApacheLuceneAnalysisDeGermanNormalizationFilter_get_V(void);
#define OrgApacheLuceneAnalysisDeGermanNormalizationFilter_V 1
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisDeGermanNormalizationFilter, V, jint)

inline jint OrgApacheLuceneAnalysisDeGermanNormalizationFilter_get_U(void);
#define OrgApacheLuceneAnalysisDeGermanNormalizationFilter_U 2
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneAnalysisDeGermanNormalizationFilter, U, jint)

@implementation OrgApacheLuceneAnalysisDeGermanNormalizationFilter

- (instancetype)initWithOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)input {
  OrgApacheLuceneAnalysisDeGermanNormalizationFilter_initWithOrgApacheLuceneAnalysisTokenStream_(self, input);
  return self;
}

- (jboolean)incrementToken {
  if ([((OrgApacheLuceneAnalysisTokenStream *) nil_chk(input_)) incrementToken]) {
    jint state = OrgApacheLuceneAnalysisDeGermanNormalizationFilter_N;
    IOSCharArray *buffer = [((id<OrgApacheLuceneAnalysisTokenattributesCharTermAttribute>) nil_chk(termAtt_)) buffer];
    jint length = [termAtt_ java_length];
    for (jint i = 0; i < length; i++) {
      jchar c = IOSCharArray_Get(nil_chk(buffer), i);
      switch (c) {
        case 'a':
        case 'o':
        state = OrgApacheLuceneAnalysisDeGermanNormalizationFilter_U;
        break;
        case 'u':
        state = (state == OrgApacheLuceneAnalysisDeGermanNormalizationFilter_N) ? OrgApacheLuceneAnalysisDeGermanNormalizationFilter_U : OrgApacheLuceneAnalysisDeGermanNormalizationFilter_V;
        break;
        case 'e':
        if (state == OrgApacheLuceneAnalysisDeGermanNormalizationFilter_U) length = OrgApacheLuceneAnalysisUtilStemmerUtil_delete__WithCharArray_withInt_withInt_(buffer, i--, length);
        state = OrgApacheLuceneAnalysisDeGermanNormalizationFilter_V;
        break;
        case 'i':
        case 'q':
        case 'y':
        state = OrgApacheLuceneAnalysisDeGermanNormalizationFilter_V;
        break;
        case 0x00e4:
        *IOSCharArray_GetRef(buffer, i) = 'a';
        state = OrgApacheLuceneAnalysisDeGermanNormalizationFilter_V;
        break;
        case 0x00f6:
        *IOSCharArray_GetRef(buffer, i) = 'o';
        state = OrgApacheLuceneAnalysisDeGermanNormalizationFilter_V;
        break;
        case 0x00fc:
        *IOSCharArray_GetRef(buffer, i) = 'u';
        state = OrgApacheLuceneAnalysisDeGermanNormalizationFilter_V;
        break;
        case 0x00df:
        *IOSCharArray_GetRef(buffer, i++) = 's';
        buffer = [termAtt_ resizeBufferWithInt:1 + length];
        if (i < length) JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(buffer, i, buffer, i + 1, (length - i));
        *IOSCharArray_GetRef(nil_chk(buffer), i) = 's';
        length++;
        state = OrgApacheLuceneAnalysisDeGermanNormalizationFilter_N;
        break;
        default:
        state = OrgApacheLuceneAnalysisDeGermanNormalizationFilter_N;
      }
    }
    [termAtt_ setLengthWithInt:length];
    return true;
  }
  else {
    return false;
  }
}

- (void)dealloc {
  RELEASE_(termAtt_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, 1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneAnalysisTokenStream:);
  methods[1].selector = @selector(incrementToken);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "N", "I", .constantValue.asInt = OrgApacheLuceneAnalysisDeGermanNormalizationFilter_N, 0x1a, -1, -1, -1, -1 },
    { "V", "I", .constantValue.asInt = OrgApacheLuceneAnalysisDeGermanNormalizationFilter_V, 0x1a, -1, -1, -1, -1 },
    { "U", "I", .constantValue.asInt = OrgApacheLuceneAnalysisDeGermanNormalizationFilter_U, 0x1a, -1, -1, -1, -1 },
    { "termAtt_", "LOrgApacheLuceneAnalysisTokenattributesCharTermAttribute;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneAnalysisTokenStream;", "LJavaIoIOException;" };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisDeGermanNormalizationFilter = { "GermanNormalizationFilter", "org.apache.lucene.analysis.de", ptrTable, methods, fields, 7, 0x11, 2, 4, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneAnalysisDeGermanNormalizationFilter;
}

@end

void OrgApacheLuceneAnalysisDeGermanNormalizationFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisDeGermanNormalizationFilter *self, OrgApacheLuceneAnalysisTokenStream *input) {
  OrgApacheLuceneAnalysisTokenFilter_initWithOrgApacheLuceneAnalysisTokenStream_(self, input);
  JreStrongAssign(&self->termAtt_, [self addAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesCharTermAttribute_class_()]);
}

OrgApacheLuceneAnalysisDeGermanNormalizationFilter *new_OrgApacheLuceneAnalysisDeGermanNormalizationFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *input) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisDeGermanNormalizationFilter, initWithOrgApacheLuceneAnalysisTokenStream_, input)
}

OrgApacheLuceneAnalysisDeGermanNormalizationFilter *create_OrgApacheLuceneAnalysisDeGermanNormalizationFilter_initWithOrgApacheLuceneAnalysisTokenStream_(OrgApacheLuceneAnalysisTokenStream *input) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisDeGermanNormalizationFilter, initWithOrgApacheLuceneAnalysisTokenStream_, input)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisDeGermanNormalizationFilter)
