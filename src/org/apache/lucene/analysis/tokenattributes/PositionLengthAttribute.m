//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/analysis/tokenattributes/PositionLengthAttribute.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/analysis/tokenattributes/PositionLengthAttribute.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/analysis/tokenattributes/PositionLengthAttribute must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneAnalysisTokenattributesPositionLengthAttribute : NSObject

@end

@implementation OrgApacheLuceneAnalysisTokenattributesPositionLengthAttribute

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "V", 0x401, 0, 1, -1, -1, -1, -1 },
    { NULL, "I", 0x401, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(setPositionLengthWithInt:);
  methods[1].selector = @selector(getPositionLength);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "setPositionLength", "I" };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisTokenattributesPositionLengthAttribute = { "PositionLengthAttribute", "org.apache.lucene.analysis.tokenattributes", ptrTable, methods, NULL, 7, 0x609, 2, 0, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneAnalysisTokenattributesPositionLengthAttribute;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisTokenattributesPositionLengthAttribute)
