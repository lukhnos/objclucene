//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/analysis/tokenattributes/CharTermAttribute.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/CharSequence.h"
#include "java/lang/StringBuilder.h"
#include "org/apache/lucene/analysis/tokenattributes/CharTermAttribute.h"

@interface OrgApacheLuceneAnalysisTokenattributesCharTermAttribute : NSObject

@end

@implementation OrgApacheLuceneAnalysisTokenattributesCharTermAttribute

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "copyBufferWithCharArray:withInt:withInt:", "copyBuffer", "V", 0x401, NULL, NULL },
    { "buffer", NULL, "[C", 0x401, NULL, NULL },
    { "resizeBufferWithInt:", "resizeBuffer", "[C", 0x401, NULL, NULL },
    { "setLengthWithInt:", "setLength", "Lorg.apache.lucene.analysis.tokenattributes.CharTermAttribute;", 0x401, NULL, NULL },
    { "setEmpty", NULL, "Lorg.apache.lucene.analysis.tokenattributes.CharTermAttribute;", 0x401, NULL, NULL },
    { "appendWithJavaLangCharSequence:", "append", "Lorg.apache.lucene.analysis.tokenattributes.CharTermAttribute;", 0x401, NULL, NULL },
    { "appendWithJavaLangCharSequence:withInt:withInt:", "append", "Lorg.apache.lucene.analysis.tokenattributes.CharTermAttribute;", 0x401, NULL, NULL },
    { "appendWithChar:", "append", "Lorg.apache.lucene.analysis.tokenattributes.CharTermAttribute;", 0x401, NULL, NULL },
    { "appendWithNSString:", "append", "Lorg.apache.lucene.analysis.tokenattributes.CharTermAttribute;", 0x401, NULL, NULL },
    { "appendWithJavaLangStringBuilder:", "append", "Lorg.apache.lucene.analysis.tokenattributes.CharTermAttribute;", 0x401, NULL, NULL },
    { "appendWithOrgApacheLuceneAnalysisTokenattributesCharTermAttribute:", "append", "Lorg.apache.lucene.analysis.tokenattributes.CharTermAttribute;", 0x401, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisTokenattributesCharTermAttribute = { 2, "CharTermAttribute", "org.apache.lucene.analysis.tokenattributes", NULL, 0x609, 11, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisTokenattributesCharTermAttribute;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisTokenattributesCharTermAttribute)