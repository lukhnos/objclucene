//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/payloads/IntegerEncoder.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "org/apache/lucene/analysis/payloads/AbstractEncoder.h"
#include "org/apache/lucene/analysis/payloads/IntegerEncoder.h"
#include "org/apache/lucene/analysis/payloads/PayloadHelper.h"
#include "org/apache/lucene/util/ArrayUtil.h"
#include "org/apache/lucene/util/BytesRef.h"

@implementation OrgApacheLuceneAnalysisPayloadsIntegerEncoder

- (OrgApacheLuceneUtilBytesRef *)encodeWithCharArray:(IOSCharArray *)buffer
                                             withInt:(jint)offset
                                             withInt:(jint)length {
  jint payload = OrgApacheLuceneUtilArrayUtil_parseIntWithCharArray_withInt_withInt_(buffer, offset, length);
  IOSByteArray *bytes = OrgApacheLuceneAnalysisPayloadsPayloadHelper_encodeIntWithInt_(payload);
  OrgApacheLuceneUtilBytesRef *result = [new_OrgApacheLuceneUtilBytesRef_initWithByteArray_(bytes) autorelease];
  return result;
}

- (instancetype)init {
  OrgApacheLuceneAnalysisPayloadsIntegerEncoder_init(self);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "encodeWithCharArray:withInt:withInt:", "encode", "Lorg.apache.lucene.util.BytesRef;", 0x1, NULL, NULL },
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisPayloadsIntegerEncoder = { 2, "IntegerEncoder", "org.apache.lucene.analysis.payloads", NULL, 0x1, 2, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisPayloadsIntegerEncoder;
}

@end

void OrgApacheLuceneAnalysisPayloadsIntegerEncoder_init(OrgApacheLuceneAnalysisPayloadsIntegerEncoder *self) {
  OrgApacheLuceneAnalysisPayloadsAbstractEncoder_init(self);
}

OrgApacheLuceneAnalysisPayloadsIntegerEncoder *new_OrgApacheLuceneAnalysisPayloadsIntegerEncoder_init() {
  OrgApacheLuceneAnalysisPayloadsIntegerEncoder *self = [OrgApacheLuceneAnalysisPayloadsIntegerEncoder alloc];
  OrgApacheLuceneAnalysisPayloadsIntegerEncoder_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisPayloadsIntegerEncoder)
