//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/payloads/FloatEncoder.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Float.h"
#include "org/apache/lucene/analysis/payloads/AbstractEncoder.h"
#include "org/apache/lucene/analysis/payloads/FloatEncoder.h"
#include "org/apache/lucene/analysis/payloads/PayloadHelper.h"
#include "org/apache/lucene/util/BytesRef.h"

@implementation OrgApacheLuceneAnalysisPayloadsFloatEncoder

- (OrgApacheLuceneUtilBytesRef *)encodeWithCharArray:(IOSCharArray *)buffer
                                             withInt:(jint)offset
                                             withInt:(jint)length {
  jfloat payload = JavaLangFloat_parseFloatWithNSString_([NSString stringWithCharacters:buffer offset:offset length:length]);
  IOSByteArray *bytes = OrgApacheLuceneAnalysisPayloadsPayloadHelper_encodeFloatWithFloat_(payload);
  OrgApacheLuceneUtilBytesRef *result = create_OrgApacheLuceneUtilBytesRef_initWithByteArray_(bytes);
  return result;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneAnalysisPayloadsFloatEncoder_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "encodeWithCharArray:withInt:withInt:", "encode", "Lorg.apache.lucene.util.BytesRef;", 0x1, NULL, NULL },
    { "init", "FloatEncoder", NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisPayloadsFloatEncoder = { 2, "FloatEncoder", "org.apache.lucene.analysis.payloads", NULL, 0x1, 2, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisPayloadsFloatEncoder;
}

@end

void OrgApacheLuceneAnalysisPayloadsFloatEncoder_init(OrgApacheLuceneAnalysisPayloadsFloatEncoder *self) {
  OrgApacheLuceneAnalysisPayloadsAbstractEncoder_init(self);
}

OrgApacheLuceneAnalysisPayloadsFloatEncoder *new_OrgApacheLuceneAnalysisPayloadsFloatEncoder_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneAnalysisPayloadsFloatEncoder, init)
}

OrgApacheLuceneAnalysisPayloadsFloatEncoder *create_OrgApacheLuceneAnalysisPayloadsFloatEncoder_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneAnalysisPayloadsFloatEncoder, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisPayloadsFloatEncoder)
